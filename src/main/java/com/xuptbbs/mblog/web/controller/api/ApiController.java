package com.xuptbbs.mblog.web.controller.api;

import com.xuptbbs.mblog.base.lang.Consts;
import com.xuptbbs.mblog.base.lang.Result;
import com.xuptbbs.mblog.base.utils.BeanMapUtils;
import com.xuptbbs.mblog.modules.data.CommentVO;
import com.xuptbbs.mblog.modules.data.PostVO;
import com.xuptbbs.mblog.modules.data.UserVO;
import com.xuptbbs.mblog.modules.service.CommentService;
import com.xuptbbs.mblog.modules.service.PostService;
import com.xuptbbs.mblog.modules.service.UserService;
import com.xuptbbs.mblog.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 侧边栏数据加载
 */
@RestController
@RequestMapping("/api")
public class ApiController extends BaseController {
    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;

    @PostMapping(value = "/login")
    public Result login(String username, String password) {
        return executeLogin(username, password, false);
    }

    @RequestMapping("/posts")
    public Page<PostVO> posts(HttpServletRequest request) {
        String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
        int channelId = ServletRequestUtils.getIntParameter(request, "channelId", 0);
        return postService.paging(wrapPageable(Sort.by(Sort.Direction.DESC, BeanMapUtils.postOrder(order))), channelId, null);
    }

    @RequestMapping(value = "/latest_comments")
    public List<CommentVO> latestComments(@RequestParam(name = "size", defaultValue = "6") Integer size) {
        return commentService.findLatestComments(size);
    }

    @RequestMapping(value = "/hotusers")
    public List<UserVO> hotUsers(@RequestParam(name = "size", defaultValue = "6") Integer size){
        List<UserVO> list = new ArrayList<>();
        UserVO userVO= userService.get(2);
        list.add(userVO);
        return list;
    }
}
