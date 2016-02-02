package cn.pinhong.ssm.mapper;

import java.util.List;

import cn.pinhong.ssm.po.Revert;
import cn.pinhong.ssm.vo.RevertPageVo;

public interface RevertMapperCustom {

	List<Revert> findRevertsByPage(RevertPageVo revertPageVo) throws Exception;

	int count(RevertPageVo revertPageVo) throws Exception;

}
