package com.xuptbbs.mblog.modules.service.impl;

import com.xuptbbs.mblog.modules.data.FavoriteVO;
import com.xuptbbs.mblog.modules.data.PostVO;
import com.xuptbbs.mblog.modules.entity.Post;
import com.xuptbbs.mblog.modules.event.EventTagScore;
import com.xuptbbs.mblog.modules.repository.FavoriteRepository;
import com.xuptbbs.mblog.base.utils.BeanMapUtils;
import com.xuptbbs.mblog.modules.entity.Favorite;
import com.xuptbbs.mblog.modules.repository.PostRepository;
import com.xuptbbs.mblog.modules.service.*;
import com.xuptbbs.mblog.modules.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.util.*;

/**
 * @author ygk on 2020/8/31.
 */
@Slf4j
@Service
@Transactional(readOnly = true)
public class FavoriteServiceImpl implements FavoriteService {
    @Autowired
    private FavoriteRepository favoriteRepository;
    @Autowired
    private PostService postService;

    @Autowired
    private TagLikeService tagLikeService;

    @Autowired
    private TagCreateService tagCreateService;

    @Autowired
    PostRepository postRepository;

    @Autowired
    private UserRecScoreService userRecScoreService;

    @Override
    public Page<FavoriteVO> pagingByUserId(Pageable pageable, long userId) {
        Page<Favorite> page = favoriteRepository.findAllByUserId(pageable, userId);

        List<FavoriteVO> rets = new ArrayList<>();
        Set<Long> postIds = new HashSet<>();
        for (Favorite po : page.getContent()) {
            rets.add(BeanMapUtils.copy(po));
            postIds.add(po.getPostId());
        }

        if (postIds.size() > 0) {
            Map<Long, PostVO> posts = postService.findMapByIds(postIds);

            for (FavoriteVO t : rets) {
                PostVO p = posts.get(t.getPostId());
                t.setPost(p);
            }
        }
        return new PageImpl<>(rets, pageable, page.getTotalElements());
    }

    @Override
    @Transactional(rollbackFor = Throwable.class)
    public void add(long userId, long postId) {
        Favorite po = favoriteRepository.findByUserIdAndPostId(userId, postId);

        Assert.isNull(po, "您已经收藏过此文章");

        // 如果没有喜欢过, 则添加记录
        po = new Favorite();
        po.setUserId(userId);
        po.setPostId(postId);
        po.setCreated(new Date());
        /**
         * 记录当前用户的收藏积分
         */
        tagLikeService.UpdateScoreByPostId(postId, userId, EventTagScore.COLLECT, 0);
        // 获得作家id
        Optional<Post> post = postRepository.findById(postId);
        long anchorId = 0;
        if (post.isPresent()) {
            PostVO d = BeanMapUtils.copy(post.get());
            anchorId = d.getAuthorId();
            /**
             * 记录文章作者的被收藏积分
             */
            tagCreateService.UpdateScoreByPostId(postId, 0, EventTagScore.COLLECT, anchorId);
            userRecScoreService.SaveOrUpdateUserRecScore(anchorId, 1);
        }

        favoriteRepository.save(po);
    }

    @Override
    @Transactional(rollbackFor = Throwable.class)
    public void delete(long userId, long postId) {
        Favorite po = favoriteRepository.findByUserIdAndPostId(userId, postId);
        Assert.notNull(po, "还没有喜欢过此文章");
        favoriteRepository.delete(po);
    }

    @Override
    @Transactional(rollbackFor = Throwable.class)
    public void deleteByPostId(long postId) {
        int rows = favoriteRepository.deleteByPostId(postId);
        log.info("favoriteRepository delete {}", rows);
    }

}
