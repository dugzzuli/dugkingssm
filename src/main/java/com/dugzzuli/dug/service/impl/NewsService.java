package com.dugzzuli.dug.service.impl;

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
		return 0;
	}

	@Override
	public int insertSelective(News record) {
		newsMapper.insertSelective(record);
		return 0;
	}

	@Override
	public News selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(News record) {
		// TODO Auto-generated method stub
		return 0;
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

}
