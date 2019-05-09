package com.o_rai.model;

import java.util.List;

import com.o_rai.domain.ReservationVO;

public interface ReservationDAO {

	public void insertReservation(ReservationVO vo);
	
	public List<ReservationVO> getBookedCount(ReservationVO vo);
	
	public List<ReservationVO> getReservationList(ReservationVO vo);
	
	public void modifyReservation(ReservationVO vo);
	
	public void disableReservation(ReservationVO vo);
	
	public List<ReservationVO> fcmRequest();
}
