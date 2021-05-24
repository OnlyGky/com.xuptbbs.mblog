package com.xuptbbs.mblog.web.controller.site;

import javax.servlet.http.HttpServletRequest;

import com.xuptbbs.mblog.base.lang.Consts;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xuptbbs.mblog.web.controller.BaseController;

/**
 * @author ygk
 *
 */
@Controller
public class IndexController extends BaseController{
	
	@RequestMapping(value= {"/", "/index"})
	public String root(ModelMap model, HttpServletRequest request) {
		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
		int pageNo = ServletRequestUtils.getIntParameter(request, "pageNo", 1);
		//order排序方法
		model.put("order", order);
		//页号
		model.put("pageNo", pageNo);
		return view(Views.INDEX);
	}

}
