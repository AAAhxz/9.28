package com.itheima.core.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.core.dao.YibanDao;
import com.itheima.core.po.Yiban;
import com.itheima.core.service.YibanService;
import com.mysql.jdbc.StringUtils;

/**
 * 
 * @author Administrator Yiban service实现类
 */
@Service("YibanService")
@Transactional
public class YibanServiceImpl implements YibanService {
	@Autowired
	private YibanDao yibandao;
	@Override
	public List<Yiban> getEncryptDeviceForExcel(Yiban yiban) {
		List<Yiban> list = yibandao.getEncryptDeviceForExcel(yiban);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getCreatetime());
		}
		return list;
	}
	@Override
	public int createYiban(Yiban yiban) {
		return yibandao.createYiban(yiban);
	}
	@SuppressWarnings("unused")
	@Override
	public List<Yiban> findYibanList(Integer page, Integer rows, String username, String campus, String department,
			String position) {
		Yiban yiban = new Yiban();
		if (!StringUtils.isNullOrEmpty(username)) {
			yiban.setUsername(username);
		}
		if (!StringUtils.isNullOrEmpty(campus)) {
			yiban.setCampus(campus);
		}
		if (!StringUtils.isNullOrEmpty(department)) {
			yiban.setDepartment(department);
		}
		if (!StringUtils.isNullOrEmpty(position)) {
			yiban.setPosition(position);
		}
		
		yiban.setStart((page-1) * rows) ;
		// 每页数
		yiban.setRows(rows);
		
		List<Yiban> list  =yibandao.findYibanList(yiban);
		//
		//总数
		Integer count = yibandao.selectYibanListCount(yiban);
			
		return list;
	}
	@Override
	public Yiban getYibanById(Integer id) {
	Yiban yiban =yibandao.getYibanById(id);
		return yiban;
	}
	@Override
	public int updateYiban(Yiban yiban) {
		return yibandao.updateYiban(yiban);
	}
	@Override
	public int deleteYiban(Integer id) {
		  return yibandao.deleteYiban(id);	
	}
}
