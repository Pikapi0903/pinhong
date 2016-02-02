package cn.pinhong.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pinhong.ssm.mapper.UserMapper;
import cn.pinhong.ssm.mapper.UserMapperCustom;
import cn.pinhong.ssm.po.User;
import cn.pinhong.ssm.service.UserService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapperCustom userMapperCustom;

	@Resource
	private UserMapper userMapper;

	@Override
	public PageBean<User> findAllUsers(PageVo pageVo) throws Exception {
		
		PageBean<User> pb = new PageBean<User>();
		pb.setPageNum(pageVo.getPageNum());
		pb.setPageSize(pageVo.getPageSize());
		List<User> userList = userMapperCustom.findUsersByPage(pageVo);
		int count = userMapperCustom.count();
		pb.setBeanList(userList);
		pb.setTotalRecords(count);
		return pb;
	}

	@Override
	public void deleteById(Integer uid) throws Exception {
		userMapper.deleteByPrimaryKey(uid);
	}

}
