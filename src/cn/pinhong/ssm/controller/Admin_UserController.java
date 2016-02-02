package cn.pinhong.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pinhong.ssm.po.User;
import cn.pinhong.ssm.service.UserService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

/**
 * 后台管理：用户相关页面
 * 
 * @author Pikapi
 *
 */
@Controller
@RequestMapping("/admin/user")
public class Admin_UserController {

	@Resource
	private UserService userService;

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum,//
			@RequestParam(defaultValue = "10") Integer pageSize)//
			throws Exception {

		PageVo pageVo = new PageVo(pageNum, pageSize);
		PageBean<User> pb = userService.findAllUsers(pageVo);
		pb.setUrl(request.getRequestURI());
		model.addAttribute("pb", pb);

		return "admin/user/list";
	}

	@RequestMapping("/delete/{uid}")
	public String delete(@PathVariable Integer uid) throws Exception {

		userService.deleteById(uid);

		return "redirect:/admin/user/list";
	}
}
