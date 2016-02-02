package cn.pinhong.ssm.mapper;

import java.util.List;

import cn.pinhong.ssm.po.News;
import cn.pinhong.ssm.vo.PageVo;

public interface NewsMapperCustom {

	List<News> findNewsByPage(PageVo pageVo) throws Exception;

	int count() throws Exception;

	List<News> findLatestNews() throws Exception;

}
