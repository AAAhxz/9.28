package com.itheima.core.dao;

import java.util.List;

import com.itheima.core.po.Yiban;

public interface YibanDao {
	//导出Excel
	public List<Yiban> getEncryptDeviceForExcel(Yiban yiban);
	//创建用户
	public int createYiban(Yiban yiban);
	//查询用户列表
	public List<Yiban> findYibanList(Yiban yiban);
	//总数
	public Integer selectYibanListCount( Yiban yiban);
	//根据ID查询
	public Yiban getYibanById(Integer id);
	//更新
	public int updateYiban(Yiban yiban);
	//删除
	public int deleteYiban(Integer id);

}
