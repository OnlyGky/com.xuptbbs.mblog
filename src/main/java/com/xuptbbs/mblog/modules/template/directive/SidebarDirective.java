package com.xuptbbs.mblog.modules.template.directive;

import com.xuptbbs.mblog.modules.data.AccountProfile;
import com.xuptbbs.mblog.modules.service.CommentService;
import com.xuptbbs.mblog.modules.service.PostService;
import com.xuptbbs.mblog.modules.service.UserService;
import com.xuptbbs.mblog.modules.template.DirectiveHandler;
import com.xuptbbs.mblog.modules.template.TemplateDirective;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * method: [latest_posts, hottest_posts, latest_comments]
 * created by ygk
 * on 2021
 */
@Component
public class SidebarDirective extends TemplateDirective {
    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;

    @Autowired
    private UserService userService;


    @Override
    public String getName() {
        return "sidebar";
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

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        int size = handler.getInteger("size", 6);
        String method = handler.getString("method", "post_latests");

        switch (method) {
            case "latest_posts":
                handler.put(RESULTS, postService.findLatestPosts(size));
                break;
            case "hottest_posts":
                handler.put(RESULTS, postService.findHottestPosts(size));
                break;
            case "latest_comments":
                handler.put(RESULTS, commentService.findLatestComments(size));
                break;
            /**
             * 获取感兴趣的作者
             */
            case "hotusers":{
                //获取登录信息
                AccountProfile profile = getProfile();
                long uid = 0;
                if (null != profile) {
                    uid = profile.getId();
                }
                handler.put(RESULTS, userService.hotusers(uid));
            }
        }
        handler.render();
    }
}
