package cn.pinhong.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台管理：首页
 * 
 * @author Pikapi
 *
 */

@Controller
@RequestMapping("/admin")
public class Admin_HomeController {

	@RequestMapping("/index")
	public String index() throws Exception {
		return "admin/home/index";
	}

	@RequestMapping("/left")
	public String left() throws Exception {
		return "admin/home/left";
	}

	@RequestMapping("/right")
	public String right() throws Exception {
		return "admin/home/right";
	}

}
