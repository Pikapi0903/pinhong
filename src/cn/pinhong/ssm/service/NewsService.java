package cn.pinhong.ssm.service;

import java.util.List;

import cn.pinhong.ssm.po.News;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.PageVo;

public interface NewsService {

	PageBean<News> findAllNews(PageVo pageVo) throws Exception;

	void addNews(News news) throws Exception;

	News findById(Integer nid) throws Exception;

	void updateNews(Integer nid, News news) throws Exception;

	void deleteById(Integer nid) throws Exception;

	List<News> findLatestNews() throws Exception;

}
