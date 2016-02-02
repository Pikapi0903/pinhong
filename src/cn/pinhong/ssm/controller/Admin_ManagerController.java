package cn.pinhong.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.pinhong.ssm.exception.CustomException;
import cn.pinhong.ssm.po.Manager;
import cn.pinhong.ssm.po.ManagerCustom;
import cn.pinhong.ssm.service.ManagerService;

/**
 * 后台管理：管理员相关页面
 * 
 * @author Pikapi
 *
 */

@Controller
@RequestMapping("/admin/manager")
public class Admin_ManagerController {

	@Resource
	private ManagerService managerService;

	@RequestMapping("/addUI")
	public String addUI() throws Exception {
		return "admin/manager/addUI";
	}

	@RequestMapping("/add")
	public String add(Model model, HttpServletRequest request,//
			@Validated ManagerCustom managerCustom,//
			BindingResult bindingResult)//
			throws Exception {

		if (bindingResult.hasErrors()) {
			model.addAttribute("errors", bindingResult);
			return "admin/manager/addUI";
		}

		// 查找是否存在该管理员
		Manager manager = managerService.findManager(managerCustom);

		if (manager != null) {
			throw new CustomException("该管理员账号已存在！");
		}

		managerService.addManager(managerCustom);
		request.setAttribute("msg", "添加成功！");

		return "admin/home/right";
	}
}
