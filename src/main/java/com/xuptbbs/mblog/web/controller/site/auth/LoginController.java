package com.xuptbbs.mblog.web.controller.site.auth;

import com.xuptbbs.mblog.base.lang.Result;
import com.xuptbbs.mblog.modules.data.AccountProfile;
import com.xuptbbs.mblog.modules.entity.Role;
import com.xuptbbs.mblog.modules.service.UserRoleService;
import com.xuptbbs.mblog.web.controller.BaseController;
import com.xuptbbs.mblog.web.controller.site.Views;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LoginController extends BaseController {

    /**
     * 跳转登录页
     * @return
     */
	@GetMapping(value = "/login")
	public String view() {
		return view(Views.LOGIN);
	}

    @Autowired
    private UserRoleService userRoleService;
    /**
     * 提交登录
     * @param username
     * @param password
     * @param model
     * @return
     */
	@PostMapping(value = "/login")
	public String login(String username,
                        String password,
                        @RequestParam(value = "rememberMe",defaultValue = "0") Boolean rememberMe,
                        ModelMap model) {
		String view = view(Views.LOGIN);

        Result<AccountProfile> result = executeLogin(username, password, rememberMe);

        if (result.isOk()) {
//            view = String.format(Views.REDIRECT_USER_HOME, result.getData().getId());
            view = Views.REDIRECT_INDEX;
            AccountProfile profile = (AccountProfile) result.getData();
            List<Role> roles = userRoleService.listRoles(profile.getId());
            if (roles.size() > 0){
                view = "redirect:/admin";
            }

        } else {
            model.put("message", result.getMessage());
        }
        return view;
	}

}
