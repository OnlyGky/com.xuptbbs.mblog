package com.xuptbbs.mblog.modules.service;

import com.xuptbbs.mblog.modules.data.PostVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * @author : ygk
 * @version : 1.0
 * @date : 2021/1/18
 */
public interface PostSearchService {
    /**
     * 根据关键字搜索
     * @param pageable 分页
     * @param term 关键字
     * @throws Exception
     */
    Page<PostVO> search(Pageable pageable, String term) throws Exception;

    /**
     * 重建
     */
    void resetIndexes();
}
