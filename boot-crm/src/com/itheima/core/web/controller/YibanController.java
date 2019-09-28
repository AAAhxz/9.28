package com.itheima.core.web.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.common.utils.ExportExcel;
import com.itheima.core.dao.YibanDao;
import com.itheima.core.po.User;
import com.itheima.core.po.Yiban;
import com.itheima.core.service.YibanService;

@Controller
public class YibanController {
	@Autowired
	private YibanDao yibanDao;
	@Autowired
	private YibanService yibanService;

	/**
	 * 
	 * @param page:页数
	 * @param rows
	 *            :显示的行数
	 * @param custName
	 * @param custSource
	 * @param custIndustry
	 * @param custLevel
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/yiban/list.action")
	public String list(@RequestParam(defaultValue = "1") Integer currentPage,
			@RequestParam(defaultValue = "100") Integer rows, String username, String campus, String department,
			String position, Model model) {
		PageHelper.startPage(currentPage, 10);
		// 条件查询所有客户
		List<Yiban> yiban = yibanService.findYibanList(currentPage, rows, username, campus, department, position);
		model.addAttribute("data", yiban);
		PageInfo<Yiban> pageInfo = new PageInfo<Yiban>(yiban);// 分页
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("pageInfo", pageInfo);// 设置属性pageInfo 传值给前台
		return "yiban";
	}

	/**
	 * 创建成员类
	 */
	@RequestMapping("/yiban/create.action")
	@ResponseBody
	public String yibanCreate(Yiban yiban, HttpSession session) {
		// 获取Session中的当前用户信息
		User user = (User) session.getAttribute("USER_SESSION");
		// 将当前用户id存储在客户对象中

		// 创建Date对象
		Date date = new Date();
		// 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
		Timestamp timeStamp = new Timestamp(date.getTime());
		System.out.println(timeStamp + "_______________________");
		yiban.setCreatetime(timeStamp);
		// 执行Service层中的创建方法，返回的是受影响的行数
		int rows = yibanService.createYiban(yiban);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	/**
	 * 通过id获取客户信息
	 */
	@RequestMapping("/yiban/getYibanById.action")
	@ResponseBody
	public Yiban getYibanById(Integer id) {
		Yiban yiban = yibanService.getYibanById(id);
		return yiban;
	}

	/**
	 * 更新客户
	 */
	@RequestMapping("/yiban/update.action")
	@ResponseBody
	public String yibanUpdate(Yiban yiban) {
		int rows = yibanService.updateYiban(yiban);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	/**
	 * 删除客户
	 */
	@RequestMapping("/yiban/delete.action")
	@ResponseBody
	public String yibanDelete(Integer id) {
		int rows = yibanService.deleteYiban(id);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	/**
	 * 
	 * 导出Excel
	 * 
	 */
	@RequestMapping(value = "/exportExcel.action", method = RequestMethod.GET)
	public void export(HttpServletRequest request, HttpServletResponse response) {
		Yiban yiban = new Yiban();// 创建实体类对象
		List<Yiban> list = yibanService.getEncryptDeviceForExcel(yiban);
		System.out.println(list);
		ExportExcel<Yiban> ee = new ExportExcel<Yiban>();
		String[] headers = extracted();
		String fileName = "易班成员信息汇总表";
		ee.exportExcel(headers, list, fileName, response);
	}

	private String[] extracted() {
		String[] headers = { " ", "序号", "校区", "姓名", "部门", "职位", "学院", "专业", "班级", "QQ号", "电话号", "最后修改时间" };
		return headers;
	}

}
