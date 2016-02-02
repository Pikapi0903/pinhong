package cn.pinhong.ssm.service;

import cn.pinhong.ssm.po.Product;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

public interface ProductService {

	PageBean<Product> findAllProduct(PageVo pageVo) throws Exception;

	void addProduct(Product product) throws Exception;

	Product findById(Integer pid) throws Exception;

	void updateProduct(Integer pid, Product product) throws Exception;

	void deleteById(Integer pid) throws Exception;

}
