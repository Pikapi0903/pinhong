package cn.pinhong.ssm.service;

import cn.pinhong.ssm.po.Revert;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.RevertPageVo;

public interface RevertService {

	PageBean<Revert> findByPage(RevertPageVo revertPageVo) throws Exception;

	void addRevert(Revert revert) throws Exception;

}
