package cn.pinhong.ssm.mapper;

import cn.pinhong.ssm.po.Manager;

public interface ManagerMapperCustom {

	Manager findByName(String uname) throws Exception;

	Manager findManagerByNameAndPassword(Manager manager) throws Exception;

}
