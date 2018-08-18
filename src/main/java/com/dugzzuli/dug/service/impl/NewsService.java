package com.dugzzuli.dug.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dugzzuli.dug.dao.NewsMapper;
import com.dugzzuli.dug.entity.News;
import com.dugzzuli.dug.service.INewsService;
import com.dugzzuli.dug.util.HanLPUtil;
import com.dugzzuli.dug.util.TikaUtil;
@Service
public class NewsService implements INewsService {

	
	@Autowired
	public NewsMapper newsMapper; 

	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(News record) {
		String secDesc=HanLPUtil.extractKeyword(TikaUtil.getStringNoHtml(record.getContent()), 5);
		String secContent=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSeoDesc(secDesc);
		record.setSeoContent(secContent);
		String summary=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSummary(summary);
		return newsMapper.insert(record);
	}

	@Override
	public int insertSelective(News record) {
		String secDesc=HanLPUtil.extractKeyword(TikaUtil.getStringNoHtml(record.getContent()), 5);
		String secContent=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSeoDesc(secDesc);
		record.setSeoContent(secContent);
		String summary=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSummary(summary);
		return newsMapper.insertSelective(record);
	}

	@Override
	public News selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(News record) {
		String secDesc=HanLPUtil.extractKeyword(TikaUtil.getStringNoHtml(record.getContent()), 5);
		String secContent=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSeoDesc(secDesc);
		record.setSeoContent(secContent);
		String summary=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSummary(summary);
		return newsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(News record) {
		// TODO Auto-generated method stub
		String secDesc=HanLPUtil.extractKeyword(TikaUtil.getStringNoHtml(record.getContent()), 5);
		String secContent=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSeoDesc(secDesc);
		record.setSeoContent(secContent);
		String summary=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSummary(summary);
		return newsMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(News record) {
		// TODO Auto-generated method stub
		String secDesc=HanLPUtil.extractKeyword(TikaUtil.getStringNoHtml(record.getContent()), 5);
		String secContent=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSeoDesc(secDesc);
		record.setSeoContent(secContent);
		String summary=HanLPUtil.extractSummary(TikaUtil.getStringNoHtml(record.getContent()), 5);
		record.setSummary(summary);
		return newsMapper.updateByPrimaryKey(record);
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
		return newsMapper.selectHotNews(hot,  count);
	}

	public News selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey( id);
	}

	public News selectModel(String about) {
		// TODO Auto-generated method stub
		return newsMapper.selectModel(about);
	}
	
	

}
