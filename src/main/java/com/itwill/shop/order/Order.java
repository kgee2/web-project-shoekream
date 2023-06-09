package com.itwill.shop.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.itwill.shop.delivery.Delivery;

public class Order {
	/*
	 * 이름 널? 유형 ------- -------- ------------- O_NO NOT NULL NUMBER(10) O_DESC
	 * VARCHAR2(100) O_DATE DATE O_PRICE NUMBER(10) USER_ID VARCHAR2(20)
	 */

	private int o_no;
	private String o_desc;
	private Date o_date;
	private int o_price;
	private Delivery delivery;
	/********* FK *********/
	private String user_id;

	private List<OrderItem> orderItemList;

	public Order() {
		orderItemList = new ArrayList<OrderItem>();
		delivery = new Delivery();
	}

	public Order(int o_no, String o_desc, Date o_date, int o_price, String user_id,Delivery delivery) {
		super();
		this.o_no = o_no;
		this.o_desc = o_desc;
		this.o_date = o_date;
		this.o_price = o_price;
		this.user_id = user_id;
		this.delivery = delivery;
		this.orderItemList = new ArrayList<OrderItem>();
	}

	
	
	public Delivery getDelivery() {
		return delivery;
	}

	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public String getO_desc() {
		return o_desc;
	}

	public void setO_desc(String o_desc) {
		this.o_desc = o_desc;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public int getO_price() {
		return o_price;
	}

	public void setO_price(int o_price) {
		this.o_price = o_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public List<OrderItem> getOrderItemList() {
		return orderItemList;
	}

	public void setOrderItemList(List<OrderItem> orderItemList) {
		this.orderItemList = orderItemList;
	}

	@Override
	public String toString() {
		return "Order [o_no=" + o_no + ", o_desc=" + o_desc + ", o_date=" + o_date + ", o_price=" + o_price
				+ ", user_id=" + user_id + ", orderItemList=" + orderItemList + "]\n";
	}

}
