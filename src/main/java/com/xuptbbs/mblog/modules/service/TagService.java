package com.xuptbbs.mblog.modules.service;

import com.xuptbbs.mblog.modules.data.PostTagVO;
import com.xuptbbs.mblog.modules.data.TagVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * @author : ygk
 */
public interface TagService {
    Page<TagVO> pagingQueryTags(Pageable pageable);
    Page<PostTagVO> pagingQueryPosts(Pageable pageable, String tagName);
    void batchUpdate(String names, long latestPostId);
    void deteleMappingByPostId(long postId);
}
