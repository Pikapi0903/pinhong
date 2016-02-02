package cn.pinhong.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pinhong.ssm.po.Manager;
import cn.pinhong.ssm.po.News;
import cn.pinhong.ssm.po.Product;
import cn.pinhong.ssm.service.ManagerService;
import cn.pinhong.ssm.service.NewsService;
import cn.pinhong.ssm.service.ProductService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

/**
 * 公开页面
 * 
 * @author Pikapi
 *
 */
@Controller
@RequestMapping("/home")
public class HomeController {

	@Resource
	private ManagerService managerService;

	@Resource
	private NewsService newsService;

	@Resource
	private ProductService productService;

	@RequestMapping("/home")
	public String home() throws Exception {
		return "home/home";
	}

	@RequestMapping("/top")
	public String top() throws Exception {
		return "home/top";
	}

	@RequestMapping("/telAndCopartner")
	public String telAndCopartner() throws Exception {
		return "home/telAndCopartner";
	}

	@RequestMapping("/bottom")
	public String bottom() throws Exception {
		return "home/bottom";
	}

	/**
	 * 在首页显示最新的7条新闻
	 * @param request
	 * @return
	 * @throws Exception
	 */
//	改用下面方法实现
//	@RequestMapping("/newsAndProduct")
//	public String newsAndProduct(HttpServletRequest request) throws Exception {
//
//		PageVo pageVo = new PageVo(1, 7);
//		PageBean<News> pb = newsService.findAllNews(pageVo);
//		request.setAttribute("pb", pb);
//		return "home/newsAndProduct";
//	}
	
	@RequestMapping("/newsAndProduct")
	public String newsAndProduct(HttpServletRequest request) throws Exception {

		List<News> newsList = newsService.findLatestNews();
		request.setAttribute("newsList", newsList);
		return "home/newsAndProduct";
	}

	@RequestMapping("/productServer")
	public String productServer(HttpServletRequest request) throws Exception {

		PageVo pageVo = new PageVo(1, 8);
		PageBean<Product> pb = productService.findAllProduct(pageVo);
		request.setAttribute("pb", pb);
		return "home/productServer";
	}

	@RequestMapping("/productList")
	public String productList(HttpServletRequest request) throws Exception {

		PageVo pageVo = new PageVo(1, 8);
		PageBean<Product> pb = productService.findAllProduct(pageVo);
		request.setAttribute("pb", pb);
		return "home/productList";
	}

	@RequestMapping("/showProductList")
	public String showProductList() throws Exception {
		return "home/showProductList";
	}

	@RequestMapping("/webSrc")
	public String webSrc() throws Exception {
		return "home/webSrc";
	}

	@RequestMapping("/webSrc2")
	public String webSrc2() throws Exception {
		return "home/webSrc2";
	}

	@RequestMapping("/showProduct")
	public String showProduct() throws Exception {
		return "home/showProduct";
	}

	@RequestMapping("/showNews")
	public String showNews() throws Exception {
		return "home/showNews";
	}

	@RequestMapping("/newsList")
	public String newsList(Model model, HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum,//
			@RequestParam(defaultValue = "10") Integer pageSize)//
			throws Exception {

		PageVo pageVo = new PageVo(pageNum, pageSize);
		PageBean<News> pb = newsService.findAllNews(pageVo);
		pb.setUrl(request.getRequestURI());
		model.addAttribute("pb", pb);
		return "home/newsList";
	}

	@RequestMapping("/showNewsDetails/{nid}")
	public String showNewsDetails(HttpServletRequest request, @PathVariable Integer nid) throws Exception {
		return "home/showNewsDetails";
	}

	@RequestMapping("/detailsNews/{nid}")
	public String detailsNews(HttpServletRequest request, @PathVariable Integer nid) throws Exception {

		News news = newsService.findById(nid);
		request.setAttribute("news", news);
		return "home/detailsNews";
	}

	@RequestMapping("/showProductDetails")
	public String showProductDetails(HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum)//
			throws Exception {

		PageVo pageVo = new PageVo(pageNum, 5);
		PageBean<Product> pb = productService.findAllProduct(pageVo);
		pb.setUrl(request.getRequestURI());
		request.setAttribute("pb", pb);

		return "home/showProductDetails";
	}

	@RequestMapping("/webSrc_ProductInfo")
	public String webSrc_ProductInfo() throws Exception {
		return "home/webSrc_ProductInfo";
	}

	@RequestMapping("/mShowProductInfo/{pid}")
	public String mShowProductInfo(HttpServletRequest request, @PathVariable Integer pid) throws Exception {
		return "home/mShowProductInfo";
	}

	@RequestMapping("/showProductInfo/{pid}")
	public String showProductInfo(HttpServletRequest request, @PathVariable Integer pid) throws Exception {

		Product product = productService.findById(pid);
		request.setAttribute("product", product);
		return "home/showProductInfo";
	}

	@RequestMapping("/webSrc_qiyejianzhan")
	public String webSrc_qiyejianzhan() throws Exception {
		return "home/webSrc_qiyejianzhan";
	}

	@RequestMapping("/managerLogin")
	public String managerLogin(HttpServletRequest request, Manager form) throws Exception {

		Map<String, String> error = new HashMap<String, String>();
		String uname = form.getUname();
		String upwd = form.getUpwd();
		if (uname == null || uname.isEmpty()) {
			error.put("ur", "用户名不能为空！");
			request.setAttribute("error", error);
			request.setAttribute("form", form);
			return "/home/backstage";
		}
		if (upwd == null || upwd.isEmpty()) {
			error.put("pr", "密码不能为空！");
			request.setAttribute("error", error);
			request.setAttribute("form", form);
			return "/home/backstage";
		}
		Manager manager = managerService.findManagerByNameAndPassword(form);
		if (manager == null) {
			request.setAttribute("msg", "此用户不存在！");
			request.setAttribute("form", form);
			return "/home/backstage";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("manager", manager);
			return "/admin/home/index";
		}

	}

	@RequestMapping("/managerLogout")
	public String managerLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "home/backstage";
	}
}
