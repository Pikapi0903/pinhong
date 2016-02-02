package cn.pinhong.ssm.mapper;

import java.util.List;

import cn.pinhong.ssm.po.Message;
import cn.pinhong.ssm.vo.PageVo;

public interface MessageMapperCustom {

	List<Message> findMessagesByPage(PageVo pageVo) throws Exception;

	int count() throws Exception;

}
