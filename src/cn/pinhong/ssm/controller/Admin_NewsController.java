package cn.pinhong.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pinhong.ssm.po.News;
import cn.pinhong.ssm.service.NewsService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

/**
 * 后台管理：新闻相关页面
 * 
 * @author Pikapi
 *
 */

@Controller
@RequestMapping("/admin/news")
public class Admin_NewsController {

	@Resource
	private NewsService newsService;

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum,//
			@RequestParam(defaultValue = "10") Integer pageSize)//
			throws Exception {

		PageVo pageVo = new PageVo(pageNum, pageSize);
		PageBean<News> pb = newsService.findAllNews(pageVo);
		pb.setUrl(request.getRequestURI());
		model.addAttribute("pb", pb);

		return "admin/news/list";
	}

	@RequestMapping("/addUI")
	public String addUI() throws Exception {
		return "admin/news/addUI";
	}

	@RequestMapping("/add")
	public String add(Model model, HttpServletRequest request,//
			@Validated News news, BindingResult bindingResult)//
			throws Exception {

		if (bindingResult.hasErrors()) {
			model.addAttribute("errors", bindingResult);
			return "admin/news/addUI";
		}

		newsService.addNews(news);
		request.setAttribute("msg", "添加新闻成功！");
		return "admin/home/right";
	}

	@RequestMapping("/editUI/{nid}")
	public String editUI(Model model, @PathVariable Integer nid)//
			throws Exception {

		News news = newsService.findById(nid);
		model.addAttribute("news", news);
		return "admin/news/editUI";
	}

	@RequestMapping("/edit")
	public String edit(Model model, HttpServletRequest request, Integer nid,//
			@Validated News news, BindingResult bindingResult)//
			throws Exception {

		if (bindingResult.hasErrors()) {
			model.addAttribute("errors", bindingResult);
			return "admin/news/editUI";
		}

		newsService.updateNews(nid, news);
		request.setAttribute("msg", "修改新闻成功！");
		return "admin/home/right";
	}

	@RequestMapping("/delete/{nid}")
	public String delete(@PathVariable Integer nid) throws Exception {

		newsService.deleteById(nid);
		return "redirect:/admin/news/list";
	}
}
