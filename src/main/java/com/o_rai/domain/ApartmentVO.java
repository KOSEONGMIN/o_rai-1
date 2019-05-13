package com.o_rai.domain;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class ApartmentVO {

	private int apt_index;
	
	// Email
	@NotEmpty
	@Email
	private String apt_id;
	
	// More than 8 + include special characters, english, number
	@NotEmpty
	@Pattern(regexp="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,15}$")
	private String apt_password;
	
	// Phone-number pattern
	@NotEmpty
	@Pattern(regexp="(?:\\\\d{3}-){2}\\\\d{4}")
    private String apt_phone;
    
    // Not empty
	@NotEmpty
    private String apt_name;
    
    // Not empty
	@NotEmpty
    private String address;
    
    // Range in Korea
	@DecimalMax("38.6500") // North
	@DecimalMin("33.0643") // South
    private double latitude;
	
	@DecimalMax("125.0000") // West
	@DecimalMin("131.5222") // East
    private double longitude;
    
    // Not empty
	@NotEmpty
    private int fee;
    
    // Lower than close_time, 24 hour system
	@NotNull
    private String open_time;
    
    // Upper than open_time, 24 hour system
	@NotNull
    private String close_time;
    
    // Not null, Numeric
    @NotEmpty
    @Min(0)
    private int bookable_count;
    
    @NotEmpty
    @Min(0)
    private int total_count;

	// Validation in Database 
    // ********
    private String postcode;
    private int using_count;
    private int isbookable;
    private int apt_report_count;
    private int apt_grade;
    // ********
    
	public int getApt_index() {
		return apt_index;
	}
	public void setApt_index(int apt_index) {
		this.apt_index = apt_index;
	}
	public String getApt_phone() {
		return apt_phone;
	}
	public void setApt_phone(String apt_phone) {
		this.apt_phone = apt_phone;
	}
	public String getApt_name() {
		return apt_name;
	}
	public void setApt_name(String apt_name) {
		this.apt_name = apt_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getOpen_time() {
		return open_time;
	}
	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}
	public String getClose_time() {
		return close_time;
	}
	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}
	public int getBookable_count() {
		return bookable_count;
	}
	public void setBookable_count(int bookable_count) {
		this.bookable_count = bookable_count;
	}
	public int getIsbookable() {
		return isbookable;
	}
	public void setIsbookable(int isbookable) {
		this.isbookable = isbookable;
	}
	public int getApt_report_count() {
		return apt_report_count;
	}
	public void setApt_report_count(int apt_report_count) {
		this.apt_report_count = apt_report_count;
	}
	public int getApt_grade() {
		return apt_grade;
	}
	public void setApt_grade(int apt_grade) {
		this.apt_grade = apt_grade;
	}
	public String getApt_id() {
		return apt_id;
	}
	public void setApt_id(String apt_id) {
		this.apt_id = apt_id;
	}
	public String getApt_password() {
		return apt_password;
	}
	public void setApt_password(String apt_password) {
		this.apt_password = apt_password;
	}
	public int getUsing_count() {
		return using_count;
	}
	public void setUsing_count(int using_count) {
		this.using_count = using_count;
	}
    public int getTotal_count() {
		return total_count;
	}
	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	
	@Override
	public String toString() {
		return "ApartmentVO [apt_index=" + apt_index + ", apt_id=" + apt_id + ", apt_password=" + apt_password
				+ ", apt_phone=" + apt_phone + ", apt_name=" + apt_name + ", address=" + address + ", latitude="
				+ latitude + ", longitude=" + longitude + ", fee=" + fee + ", open_time=" + open_time + ", close_time="
				+ close_time + ", bookable_count=" + bookable_count + ", total_count=" + total_count + ", using_count="
				+ using_count + ", isbookable=" + isbookable + ", apt_report_count=" + apt_report_count + ", apt_grade="
				+ apt_grade + "]";
	}
}
