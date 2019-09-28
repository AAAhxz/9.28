package com.itheima.core.po;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class Yiban implements Serializable{
	
	private static long serialVersionUID = 2350589818950872260L;
	private Integer id;      //用户id 
	private String campus;     //校区
	private String username;     //姓名
	private String department; //部门
	private String position;   //职位
	private String college;   //学院
	private String major;   //专业
	private String classes;   //班级
	private String qqnumber;   //QQ号
	private String telnumber;   //电话
	private Date createtime;//创建时间
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	public long getSerialVersionUID(){
		return serialVersionUID;
	}
	public void getSerialVersionUID(long serialVersionUID){
		Yiban.serialVersionUID = serialVersionUID;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCampus() {
		return campus;
	}
	public void setCampus(String campus) {
		this.campus = campus;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getQqnumber() {
		return qqnumber;
	}
	public void setQqnumber(String qqnumber) {
		this.qqnumber = qqnumber;
	}
	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
}
