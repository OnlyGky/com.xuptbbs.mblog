package com.xuptbbs.mblog.modules.service;

public interface TagLikeService {
    /**
     * 保存或修改用户分值
     */
    public void UpdateScore(long id, long tag, long score);


    /***
     *
     * @param postId 文章id
     * @param uid 用户id
     * @param score
     */
    public void UpdateScoreByPostId(long postId, long uid, long score, long anchorId);
}
