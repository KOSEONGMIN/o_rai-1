package com.o_rai.domain;

public class SessionVO {

	private Integer apt_index;
	private String apt_id;
	
	public Integer getApt_index() {
		return apt_index;
	}
	public void setApt_index(Integer apt_index) {
		this.apt_index = apt_index;
	}
	
	public String getApt_id() {
		return apt_id;
	}
	public void setApt_id(String apt_id) {
		this.apt_id = apt_id;
	}
	
	@Override
	public String toString() {
		return "SessionVO [apt_index=" + apt_index + ", apt_id=" + apt_id + "]";
	}
}
