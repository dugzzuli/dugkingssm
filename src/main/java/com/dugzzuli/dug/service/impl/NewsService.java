package com.dugzzuli.dug.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dugzzuli.dug.dao.NewsMapper;
import com.dugzzuli.dug.entity.News;
import com.dugzzuli.dug.service.INewsService;
@Service
public class NewsService implements INewsService {

	
	@Autowired
	public NewsMapper newsMapper; 

	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(News record) {
		// TODO Auto-generated method stub
		return newsMapper.insert(record);
	}

	@Override
	public int insertSelective(News record) {
		
		return newsMapper.insertSelective(record);
	}

	@Override
	public News selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(News record) {
		// TODO Auto-generated method stub
		return newsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(News record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(News record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<News> selectAll() {
		
		return newsMapper.selectAll();
	}

	@Override
	public List<News> selectAllNews(String order, int count) {
		// TODO Auto-generated method stub
		return newsMapper.selectAllNews(order,count);
	}

	public List<News> selectHotNews(String hot, int count) {
		// TODO Auto-generated method stub
		return newsMapper.selectHotNews( hot,  count);
	}

	public News selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey( id);
	}

}
