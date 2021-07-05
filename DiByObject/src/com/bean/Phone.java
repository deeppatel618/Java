package com.bean;

public class Phone {
	private int pno;

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}
	public void call()
	{
		System.out.println("calling ....."+pno);
	}
}
