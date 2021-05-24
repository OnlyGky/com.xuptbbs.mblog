package com.xuptbbs.mblog.modules.data;

import com.xuptbbs.mblog.modules.entity.Favorite;

/**
 * @author ygk on 2020/8/31.
 */
public class FavoriteVO extends Favorite {
    // extend
    private PostVO post;

    public PostVO getPost() {
        return post;
    }

    public void setPost(PostVO post) {
        this.post = post;
    }
}
