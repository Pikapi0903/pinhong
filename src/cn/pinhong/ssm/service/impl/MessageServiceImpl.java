package cn.pinhong.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.pinhong.ssm.mapper.MessageMapper;
import cn.pinhong.ssm.mapper.MessageMapperCustom;
import cn.pinhong.ssm.po.Message;
import cn.pinhong.ssm.service.MessageService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

@Service
@Transactional
public class MessageServiceImpl implements MessageService {

	@Resource
	private MessageMapperCustom messageMapperCustom;
	
	@Resource
	private MessageMapper messageMapper;
	
	@Override
	public PageBean<Message> findByPage(PageVo pageVo) throws Exception {
		
		PageBean<Message> pb = new PageBean<Message>();
		pb.setPageNum(pageVo.getPageNum());
		pb.setPageSize(pageVo.getPageSize());
		List<Message> messageList = messageMapperCustom.findMessagesByPage(pageVo);
		pb.setBeanList(messageList);
		int count = messageMapperCustom.count();
		pb.setTotalRecords(count);
		
		return pb;
	}

	@Override
	public Message findById(Integer mid) throws Exception {
		return messageMapper.selectByPrimaryKey(mid);
	}

	@Override
	public void addMessage(Message message) throws Exception {
		message.setRcount(0);
		messageMapper.insert(message);
	}

}
