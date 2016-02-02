package cn.pinhong.ssm.mapper;

import java.util.List;

import cn.pinhong.ssm.po.User;
import cn.pinhong.ssm.vo.PageVo;

public interface UserMapperCustom {

	List<User> findUsersByPage(PageVo pageVo) throws Exception;

	int count() throws Exception;


}
