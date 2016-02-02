package cn.pinhong.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pinhong.ssm.mapper.ManagerMapper;
import cn.pinhong.ssm.mapper.ManagerMapperCustom;
import cn.pinhong.ssm.po.Manager;
import cn.pinhong.ssm.po.ManagerCustom;
import cn.pinhong.ssm.service.ManagerService;

@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {

	@Resource
	private ManagerMapperCustom managerMapperCustom;
	
	@Resource
	private ManagerMapper managerMapper;
	
	@Override
	public Manager findManager(ManagerCustom managerCustom) throws Exception {
		return managerMapperCustom.findByName(managerCustom.getUname());
	}

	@Override
	public void addManager(ManagerCustom managerCustom) throws Exception {
		Manager manager = new Manager();
		BeanUtils.copyProperties(managerCustom, manager);
		managerMapper.insert(manager);
	}

	@Override
	public Manager findManagerByNameAndPassword(Manager manager) throws Exception {
		return managerMapperCustom.findManagerByNameAndPassword(manager);
	}

}
