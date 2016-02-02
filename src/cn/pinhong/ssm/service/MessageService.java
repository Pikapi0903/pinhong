package cn.pinhong.ssm.service;

import cn.pinhong.ssm.po.Message;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

public interface MessageService {

	PageBean<Message> findByPage(PageVo pageVo) throws Exception;

	Message findById(Integer mid) throws Exception;

	void addMessage(Message message) throws Exception;

}
