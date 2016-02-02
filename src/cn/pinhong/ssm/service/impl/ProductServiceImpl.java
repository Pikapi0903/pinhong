package cn.pinhong.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pinhong.ssm.mapper.ProductMapper;
import cn.pinhong.ssm.mapper.ProductMapperCustom;
import cn.pinhong.ssm.po.Product;
import cn.pinhong.ssm.service.ProductService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductMapperCustom	productMapperCustom;
	
	@Resource
	private ProductMapper productMapper;
	
	@Override
	public PageBean<Product> findAllProduct(PageVo pageVo) throws Exception {
		
		PageBean<Product> pb = new PageBean<Product>();
		pb.setPageNum(pageVo.getPageNum());
		pb.setPageSize(pageVo.getPageSize());
		List<Product> productList = productMapperCustom.findProductsByPage(pageVo);
		int count = productMapperCustom.count();
		pb.setBeanList(productList);
		pb.setTotalRecords(count);
		
		return pb;
	}

	@Override
	public void addProduct(Product product) throws Exception {
		productMapper.insert(product);
	}

	@Override
	public Product findById(Integer pid) throws Exception {
		return productMapper.selectByPrimaryKey(pid);
	}

	@Override
	public void updateProduct(Integer pid, Product product) throws Exception {
		product.setPid(pid);
		productMapper.updateByPrimaryKey(product);
	}

	@Override
	public void deleteById(Integer pid) throws Exception {
		productMapper.deleteByPrimaryKey(pid);
	}

}
