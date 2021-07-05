package com.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="EmpInfo")
public class EmpInfo {
	private int einfo;
	private String uname,email,dept;
	private Emp emp;
	@Id
	@GenericGenerator(name="idInc",strategy = "increment")
	@GeneratedValue(generator = "idInc")
	public int getEinfo() {
		return einfo;
	}
	public void setEinfo(int einfo) {
		this.einfo = einfo;
	}
	
	@Column(name="uname")
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="dept")
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	@OneToOne(fetch =FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "einfo")
	public Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}
}
