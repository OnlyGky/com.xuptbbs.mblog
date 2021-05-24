package com.xuptbbs.mblog.modules.service;


public interface TagCreateService {


    /**
     * 保存或修改用户分值
     */
    void UpdateScore(long id, long tag, long score);


    /***
     *
     * @param postId 文章id
     * @param uid 用户id
     * @param score
     */
    void UpdateScoreByPostId(long postId, long uid, long score, long anchorId);


}
