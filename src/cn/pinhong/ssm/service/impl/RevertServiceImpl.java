package cn.pinhong.ssm.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pinhong.ssm.mapper.MessageMapper;
import cn.pinhong.ssm.mapper.RevertMapper;
import cn.pinhong.ssm.mapper.RevertMapperCustom;
import cn.pinhong.ssm.po.Message;
import cn.pinhong.ssm.po.Revert;
import cn.pinhong.ssm.service.RevertService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.RevertPageVo;

@Service
@Transactional
public class RevertServiceImpl implements RevertService {

	@Resource
	private RevertMapperCustom	revertMapperCustom;
	
	@Resource
	private RevertMapper revertMapper;
	
	@Resource
	private MessageMapper messageMapper;
	
	@Override
	public PageBean<Revert> findByPage(RevertPageVo revertPageVo) throws Exception {

		PageBean<Revert> pb = new PageBean<Revert>();
		pb.setPageNum(revertPageVo.getPageVo().getPageNum());
		pb.setPageSize(revertPageVo.getPageVo().getPageSize());
		List<Revert> revertList = revertMapperCustom.findRevertsByPage(revertPageVo);
		pb.setBeanList(revertList);
		int count = revertMapperCustom.count(revertPageVo);
		pb.setTotalRecords(count);
		
		return pb;
	}

	@Override
	public void addRevert(Revert revert) throws Exception {
		Date date = new Date();
		revert.setRdate(date);
		revertMapper.insert(revert);
		Message message = messageMapper.selectByPrimaryKey(revert.getMid());
		int rcount = message.getRcount() + 1;
		message.setLastupdatetime(date);
		message.setRcount(rcount);
		messageMapper.updateByPrimaryKey(message);
	}

}
