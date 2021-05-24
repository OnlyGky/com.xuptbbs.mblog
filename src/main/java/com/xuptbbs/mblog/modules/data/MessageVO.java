package com.xuptbbs.mblog.modules.data;

import com.xuptbbs.mblog.modules.entity.Message;

/**
 * @author ygk on 2020/8/31.
 */
public class MessageVO extends Message {
    // extend
    private UserVO from;
    private PostVO post;

    public UserVO getFrom() {
        return from;
    }

    public void setFrom(UserVO from) {
        this.from = from;
    }

    public PostVO getPost() {
        return post;
    }

    public void setPost(PostVO post) {
        this.post = post;
    }
}
