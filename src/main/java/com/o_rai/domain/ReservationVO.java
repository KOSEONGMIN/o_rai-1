package com.o_rai.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class ReservationVO {
	
	private int book_index;
	private int user_index;
	private int apt_index;
	
	private String car_number;
	private String car_type;
	private String user_phone;
	
	// get from android user 
	@NotEmpty
	private String start_time;
	@NotEmpty
	private String finish_time;
	@NotEmpty
	private int bill;
	
	private int is_used;
	private String apt_name;
	
	
	private int using_count;
	private int total_count;
	private String user_token;
	
	public int getUsing_count() {
		return using_count;
	}

	public int getTotal_count() {
		return total_count;
	}

	public String getUser_token() {
		return user_token;
	}

	public void setBook_index(int book_index) {
		this.book_index = book_index;
	}

	public void setBill(int bill) {
		this.bill = bill;
	}

	public void setUsing_count(int using_count) {
		this.using_count = using_count;
	}

	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}

	public void setUser_token(String user_token) {
		this.user_token = user_token;
	}

	public int getBook_index() {
		return book_index;
	}
	
	public int getUser_index() {
		return user_index;
	}
	
	public int getApt_index() {
		return apt_index;
	}
	
	public String getCar_number() {
		return car_number;
	}
	
	public String getCar_type() {
		return car_type;
	}
	
	public String getUser_phone() {
		return user_phone;
	}
	
	public String getStart_time() {
		return start_time;
	}
	
	public String getFinish_time() {
		return finish_time;
	}
	
	public int getBill() {
		return bill;
	}
	
	public void setUser_index(int user_index) {
		this.user_index = user_index;
	}
	
	public void setApt_index(int apt_index) {
		this.apt_index = apt_index;
	}
	
	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}
	
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	
	public void setFinish_time(String finish_time) {
		this.finish_time = finish_time;
	}
	
	public int getIs_used() {
		return is_used;
	}

	public void setIs_used(int is_used) {
		this.is_used = is_used;
	}
	
	public String getApt_name() {
		return apt_name;
	}

	public void setApt_name(String apt_name) {
		this.apt_name = apt_name;
	}
	
	public void setReservationVO(int user_index, int apt_index, String car_number, String car_type, String user_phone, String start_time, String finish_time) {
		
		this.user_index = user_index;
		this.apt_index = apt_index;
		this.car_number = car_number;
		this.car_type = car_type;
		this.user_phone = user_phone;
		this.start_time = start_time;
		this.finish_time = finish_time;
		
	}
	
	public String toString() {
		return "Reservation : {user_index : "+ String.valueOf(this.user_index) + ", apt_index : " + String.valueOf(this.apt_index) + ", car_number : " + this.car_number + 
				", car_type : " + this.car_type + ", phone_number : " + this.user_phone + ", reservation_start : " + this.start_time + ", reservation_end : " + this.finish_time + "}";
	}

}
