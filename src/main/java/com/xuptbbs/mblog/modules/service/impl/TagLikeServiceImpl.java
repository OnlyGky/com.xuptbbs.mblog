package com.xuptbbs.mblog.modules.service.impl;

import com.xuptbbs.mblog.modules.data.AccountProfile;
import com.xuptbbs.mblog.modules.entity.TagLike;
import com.xuptbbs.mblog.modules.repository.PostTagRepository;
import com.xuptbbs.mblog.modules.repository.TagLikeRepository;
import com.xuptbbs.mblog.modules.service.TagLikeService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;


@Service
public class TagLikeServiceImpl implements TagLikeService {
    @Autowired
    TagLikeRepository tagLikeRepository;
    @Autowired
    PostTagRepository postTagRepository;
    @Override
    public void UpdateScore(long id, long tag, long score) {
        if (id == 0 || tag == 0){
            return;
        }
        Long temp = tagLikeRepository.SelectScore(id, tag);
        if (temp != null && temp > 0){
            tagLikeRepository.UpdateScore(id, tag, score);
        }else {
            TagLike tagLike = new TagLike();
            tagLike.setUid(id);
            tagLike.setMtoTag(tag);
            tagLike.setScore(score);
            tagLikeRepository.save(tagLike);
        }
        return;
    }


    @Override
    public void UpdateScoreByPostId(long postId, long uid, long score, long anchorId) {
        if (uid == 0){
            AccountProfile profile = getProfile();
            if (null != profile) {
                uid = profile.getId();
                if (uid == anchorId){
                    return;
                }
            }else {
                return;
            }
        }
        Set<Long> tags = postTagRepository.findTagIdByPostId(postId);
        for (long tag : tags){
            UpdateScore(uid, tag, score);
        }
    }

    /**
     * 获取登录信息
     *
     * @return
     */
    protected AccountProfile getProfile() {
        //shiro中的方法
        Subject subject = SecurityUtils.getSubject();
        return (AccountProfile) subject.getPrincipal();
    }
}
