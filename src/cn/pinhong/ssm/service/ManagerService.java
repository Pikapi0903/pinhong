package cn.pinhong.ssm.service;

import cn.pinhong.ssm.po.Manager;
import cn.pinhong.ssm.po.ManagerCustom;

public interface ManagerService {

	Manager findManager(ManagerCustom managerCustom) throws Exception;

	void addManager(ManagerCustom managerCustom) throws Exception;

	Manager findManagerByNameAndPassword(Manager form) throws Exception;

}
