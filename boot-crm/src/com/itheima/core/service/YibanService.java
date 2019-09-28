package com.itheima.core.service;

import java.util.List;


import com.itheima.core.po.Yiban;



public interface YibanService {
	//导出Excel
	public List<Yiban> getEncryptDeviceForExcel(Yiban yiban);
	//查询
	public List<Yiban> findYibanList(Integer page, Integer rows,  
	String username,String  campus, String department,String position);
	
	public int createYiban(Yiban yiban);
	
	// 通过id查询客户
	public Yiban getYibanById(Integer id);
	// 更新客户
	public int updateYiban(Yiban yiban);
	// 删除客户
	public int deleteYiban(Integer id);

}
