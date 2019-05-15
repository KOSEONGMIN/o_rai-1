package com.o_rai.domain;

public class ExcelVO {

	private int book_index;
	private String car_number;
	private String car_type;
	private String start_time;
	private String finish_time;
	private String enter_time;
	private String leave_time;
	private int bill;
	private int is_used;
	private String is_reported;
	private String user_phone;
	private String user_id;
	private String user_name;
	private int user_report_cocunt;
	private int user_grade;
	
	
	public int getBook_index() {
		return book_index;
	}
	public void setBook_index(int book_index) {
		this.book_index = book_index;
	}
	public String getCar_number() {
		return car_number;
	}
	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getFinish_time() {
		return finish_time;
	}
	public void setFinish_time(String finish_time) {
		this.finish_time = finish_time;
	}
	public String getEnter_time() {
		return enter_time;
	}
	public void setEnter_time(String enter_time) {
		this.enter_time = enter_time;
	}
	public String getLeave_time() {
		return leave_time;
	}
	public void setLeave_time(String leave_time) {
		this.leave_time = leave_time;
	}
	public int getBill() {
		return bill;
	}
	public void setBill(int bill) {
		this.bill = bill;
	}
	public int getIs_used() {
		return is_used;
	}
	public void setIs_used(int is_used) {
		this.is_used = is_used;
	}
	public String getIs_reported() {
		return is_reported;
	}
	public void setIs_reported(String is_reported) {
		this.is_reported = is_reported;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_report_cocunt() {
		return user_report_cocunt;
	}
	public void setUser_report_cocunt(int user_report_cocunt) {
		this.user_report_cocunt = user_report_cocunt;
	}
	public int getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	
	
	@Override
	public String toString() {
		return "ExcelVO [book_index=" + book_index + ", car_number=" + car_number + ", car_type=" + car_type
				+ ", start_time=" + start_time + ", finish_time=" + finish_time + ", enter_time=" + enter_time
				+ ", leave_time=" + leave_time + ", bill=" + bill + ", is_used=" + is_used + ", is_reported="
				+ is_reported + ", user_phone=" + user_phone + ", user_id=" + user_id + ", user_name=" + user_name
				+ ", user_report_cocunt=" + user_report_cocunt + ", user_grade=" + user_grade + "]";
	}

	
	
	
}
