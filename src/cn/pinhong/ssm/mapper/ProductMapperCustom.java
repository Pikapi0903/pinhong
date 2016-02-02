package cn.pinhong.ssm.mapper;

import java.util.List;

import cn.pinhong.ssm.po.Product;
import cn.pinhong.ssm.vo.PageVo;

public interface ProductMapperCustom {

	List<Product> findProductsByPage(PageVo pageVo) throws Exception;

	int count() throws Exception;

}
