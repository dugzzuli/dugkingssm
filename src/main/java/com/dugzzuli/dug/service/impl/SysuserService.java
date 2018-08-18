package com.dugzzuli.dug.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dugzzuli.dug.dao.SysuserMapper;
import com.dugzzuli.dug.entity.Sysuser;
import com.dugzzuli.dug.service.ISysuser;
@Service
public class SysuserService implements ISysuser {

	@Autowired
	public SysuserMapper sysuserMapper; 
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sysuserMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Sysuser record) {
		// TODO Auto-generated method stub
		return sysuserMapper.insert(record);
	}

	@Override
	public int insertSelective(Sysuser record) {
		// TODO Auto-generated method stub
		return sysuserMapper.insertSelective(record);
	}

	@Override
	public Sysuser selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sysuserMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Sysuser record) {
		// TODO Auto-generated method stub
		return sysuserMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Sysuser record) {
		// TODO Auto-generated method stub
		return sysuserMapper.updateByPrimaryKey(record);
	}

	@Override
	public Sysuser selectModel(Sysuser model) {
		// TODO Auto-generated method stub
		return sysuserMapper.selectModel(model);
	}

}
