package com.dugzzuli.dug.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dugzzuli.dug.dao.CategoryMapper;
import com.dugzzuli.dug.dao.NewsMapper;
import com.dugzzuli.dug.entity.Category;
import com.dugzzuli.dug.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {

	@Autowired
	public CategoryMapper categoryMapper;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return categoryMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Category record) {
		// TODO Auto-generated method stub
		
		return categoryMapper.insert(record);
	}

	@Override
	public int insertSelective(Category record) {
		// TODO Auto-generated method stub
		return categoryMapper.insertSelective(record);
	}

	@Override
	public Category selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return categoryMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Category record) {
		// TODO Auto-generated method stub
		return categoryMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Category record) {
		// TODO Auto-generated method stub
		return categoryMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Category> selectAll() {
		// TODO Auto-generated method stub
		
		return categoryMapper.selectAll();
	}

	public List<Category> selectCategory(String category) {
		// TODO Auto-generated method stub
		return categoryMapper.selectCategory(category) ;
	}

}
