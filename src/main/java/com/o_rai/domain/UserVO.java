package com.o_rai.domain;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class UserVO {
	
	private int user_index;
	
	@NotEmpty
	@Email
    private String user_id;
	
	@NotEmpty
	@Pattern(regexp="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,15}$")
    private String user_password;
	
	@NotEmpty
	@Pattern(regexp="[°¡-ÆR]{2,4}$")
    private String user_name;
	
	@NotEmpty
	@Pattern(regexp="^\\\\d{2}[°¡|³ª|´Ù|¶ó|¸¶|°Å|³Ê|´õ|·¯|¸Ó|¹ö|¼­|¾î|Àú|°í|³ë|µµ|·Î|¸ð|º¸|¼Ò|¿À|Á¶|±¸|´©|µÎ|·ç|¹«|ºÎ|¼ö|¿ì|ÁÖ|¹Ù|»ç|¾Æ|ÀÚ|Çã|¹è|È£|ÇÏ\\\\x20]\\\\d{4}/*$")
    private String car_number;
	
	@NotEmpty
    private String car_type;
	
	@NotEmpty
	@Pattern(regexp="(?:\\\\d{3}-){2}\\\\d{4}")
    private String user_phone;
	
    private int user_grade;
    private int user_report_count;
    private String user_token;
    
    public int getUser_grade() {
    	return user_grade;
    }
    
    public int getUser_report_count() {
    	return user_report_count;
    }
    
	public int getUser_index() {
		return user_index;
	}
	public String getUser_id() {
		return user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public String getUser_name() {
		return user_name;
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
	public void setUser_index(int user_index) {
		this.user_index = user_index;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	public void setUser_report_count(int user_report_count) {
		this.user_report_count = user_report_count;
	}
	public String getUser_token() {
		return user_token;
	}

	public void setUser_token(String user_token) {
		this.user_token = user_token;
	}
	
	@Override
	public String toString() {
		return "UserVO [user_index=" + user_index + ", user_id=" + user_id + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", car_number=" + car_number + ", car_type=" + car_type + ", user_phone="
				+ user_phone + ", user_grade=" + user_grade + ", user_report_count=" + user_report_count + ", user_token=" + user_token + "]";
	}
}
