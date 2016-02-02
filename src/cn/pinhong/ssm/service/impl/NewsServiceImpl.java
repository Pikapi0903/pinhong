package cn.pinhong.ssm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import cn.pinhong.ssm.mapper.NewsMapper;
import cn.pinhong.ssm.mapper.NewsMapperCustom;
import cn.pinhong.ssm.po.News;
import cn.pinhong.ssm.service.NewsService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.util.SerializingUtil;
import cn.pinhong.ssm.vo.PageVo;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {

	@Resource
	private JedisPool jedisPool;
	
	@Resource
	private NewsMapper newsMapper;
	
	@Resource
	private NewsMapperCustom newsMapperCustom;
	
	@Override
	public PageBean<News> findAllNews(PageVo pageVo) throws Exception {
		PageBean<News> pb = new PageBean<News>();
		pb.setPageNum(pageVo.getPageNum());
		pb.setPageSize(pageVo.getPageSize());
		List<News> newsList = newsMapperCustom.findNewsByPage(pageVo);
		int count = newsMapperCustom.count();
		pb.setBeanList(newsList);
		pb.setTotalRecords(count);
		return pb;
	}

	/**
	 * 添加新闻后存入redis
	 */
	@Override
	public void addNews(News news) throws Exception {
		news.setNdate(new Date());
		newsMapper.insert(news);
		Jedis jedis = jedisPool.getResource();
		byte[] key = "newsList".getBytes();
		jedis.lpush(key, SerializingUtil.serialize(news));
		jedis.ltrim(key, 0, 6);
		jedisPool.returnResourceObject(jedis);
	}

	@Override
	public News findById(Integer nid) throws Exception {
		return newsMapper.selectByPrimaryKey(nid);
	}

	@Override
	public void updateNews(Integer nid, News news) throws Exception {
		news.setNid(nid);
		newsMapper.updateByPrimaryKey(news);
	}

	@Override
	public void deleteById(Integer nid) throws Exception {
		newsMapper.deleteByPrimaryKey(nid);
	}

	/**
	 * 查询最新的7条新闻
	 * 如果在redis中有，则直接从缓存中取，否则查询数据库
	 */
	@Override
	public List<News> findLatestNews() throws Exception {
		
		List<News> newsList = new ArrayList<News>();
		Jedis jedis = jedisPool.getResource();
		byte[] key = "newsList".getBytes();
		List<byte[]> newsListRedis = jedis.lrange(key, 0, 6);
		if (newsListRedis.size() == 0) {
			newsList = newsMapperCustom.findLatestNews();
			for (News news : newsList) {
				jedis.rpush(key, SerializingUtil.serialize(news));
			}
		} else {
			for (byte[] source : newsListRedis) {
				News news = (News) SerializingUtil.deserialize(source);
				newsList.add(news);
			}
		}
		jedisPool.returnResourceObject(jedis);
		return newsList;
	}

}
