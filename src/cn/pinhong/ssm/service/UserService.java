package cn.pinhong.ssm.service;

import cn.pinhong.ssm.po.User;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

public interface UserService {

	PageBean<User> findAllUsers(PageVo pageVo) throws Exception;

	void deleteById(Integer uid) throws Exception;

}
