package com.itwill.shop.delivery;

public class DeliverySQL {
	public final static String DELIVERY_INSERT =
			"insert into delivery(d_no,d_address,d_phone,d_name,user_id) values(delivery_d_no_SEQ.nextval,?,?,?,?)";
	public final static String DELIVERY_DELETE_BY_D_NO = 
			"delete delivery where d_no = ?";
	public final static String DELIVERY_SELECT_BY_USER_ID = 
			"select * from delivery where user_id = ?";
	public final static String DELIVERY_SELECT_BY_D_ADDRESS = 
			"select * from delivery where d_address = ?";
	public final static String DELIVERY_UPDATE =
			"update delivery set d_address=?, d_phone=? d_name=? where user id=?";
}