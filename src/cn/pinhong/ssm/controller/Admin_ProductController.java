package cn.pinhong.ssm.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.pinhong.ssm.po.Product;
import cn.pinhong.ssm.service.ProductService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

/**
 * 后台管理：产品相关页面
 * 
 * @author Pikapi
 *
 */
@Controller
@RequestMapping("/admin/product")
public class Admin_ProductController {

	@Resource
	private ProductService productService;

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum,//
			@RequestParam(defaultValue = "10") Integer pageSize)//
			throws Exception {

		PageVo pageVo = new PageVo(pageNum, pageSize);
		PageBean<Product> pb = productService.findAllProduct(pageVo);
		pb.setUrl(request.getRequestURI());
		model.addAttribute("pb", pb);

		return "admin/product/list";
	}

	@RequestMapping("/addUI")
	public String addUI() throws Exception {
		return "admin/product/addUI";
	}

	@RequestMapping("/add")
	public String add(Model model, HttpServletRequest request,//
			@Validated Product product, BindingResult bindingResult,//
			MultipartFile product_pic)//
			throws Exception {

		if (bindingResult.hasErrors()) {
			model.addAttribute("errors", bindingResult);
			return "admin/product/addUI";
		}

		String originalFilename = product_pic.getOriginalFilename();
		if (product_pic != null && originalFilename != null && originalFilename.length() > 0) {
			String pic_path = "F:\\develop\\upload\\";

			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));

			File newFile = new File(pic_path + newFileName);

			product_pic.transferTo(newFile);
			product.setPpicture(newFileName);
		}

		productService.addProduct(product);
		request.setAttribute("msg", "添加商品成功！");
		return "admin/home/right";
	}

	@RequestMapping("/editUI/{pid}")
	public String editUI(Model model, @PathVariable Integer pid) throws Exception {

		Product product = productService.findById(pid);
		model.addAttribute("product", product);
		return "admin/product/editUI";
	}

	@RequestMapping("/edit")
	public String edit(Model model, HttpServletRequest request, Integer pid,//
			@Validated Product product, BindingResult bindingResult,//
			MultipartFile product_pic)//
			throws Exception {

		if (bindingResult.hasErrors()) {
			model.addAttribute("errors", bindingResult);
			return "admin/product/editUI";
		}

		String originalFilename = product_pic.getOriginalFilename();
		if (product_pic != null && originalFilename != null && originalFilename.length() > 0) {
			String pic_path = "F:\\develop\\upload\\";

			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));

			File newFile = new File(pic_path + newFileName);

			product_pic.transferTo(newFile);
			product.setPpicture(newFileName);
		}

		productService.updateProduct(pid, product);
		request.setAttribute("msg", "修改商品成功！");
		return "admin/home/right";
	}

	@RequestMapping("/delete/{pid}")
	public String delete(@PathVariable Integer pid) throws Exception {

		productService.deleteById(pid);
		return "redirect:/admin/product/list";
	}
}
