package com.o_rai.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.FormVO;
import com.o_rai.model.ApartmentDAO;

@Service
public class JoinService {

	@Inject
	private ApartmentDAO aptDao;
	
	public int formToApartment(FormVO vo){
		
		ApartmentVO aptVO = new ApartmentVO();
		
		aptVO.setApt_id(vo.getFirstEmail() + "@" + vo.getLastEmail());
		aptVO.setApt_password(vo.getPwd());
		aptVO.setApt_phone("010-" + vo.getFirstPhoneNum() + "-" + vo.getLastPhoneNum());
		aptVO.setApt_name(vo.getBuildingName());
		aptVO.setAddress(vo.getRoadAddress());
		aptVO.setFee(vo.getFee());
		aptVO.setLongitude(vo.getLongitude());
		aptVO.setLatitude(vo.getLatitude());
		
		if (vo.getOpenTime() < vo.getCloseTime() && 
				( vo.getOpenTime() >= 0 && vo.getOpenTime() <= 24) &&
				( vo.getCloseTime() >= 0 && vo.getCloseTime() <=24) ) {
			
			String open_time = String.valueOf(vo.getOpenTime());
			String close_time = String.valueOf(vo.getCloseTime());
			
			if ( String.valueOf(vo.getOpenTime()).length() < 2) {
				aptVO.setOpen_time("0" + open_time + ":00");
			} else {
				aptVO.setOpen_time(open_time+":00");
			}
			
			if ( String.valueOf(vo.getCloseTime()).length() < 2) {
				aptVO.setClose_time("0"+close_time + ":00");
			} else {
				aptVO.setClose_time(close_time + ":00");
			}
			
		} else {
			aptVO.setOpen_time(null);
			aptVO.setClose_time(null);
		}
		
		aptVO.setBookable_count(vo.getBookableCount());
		if( vo.getTotalCount() > vo.getBookableCount())
		{
			aptVO.setTotal_count(vo.getTotalCount());
			
		} else {
			aptVO.setTotal_count(0);			
		}
		
		System.out.println(aptVO.toString());
		
		int result = aptDao.insertApartment(aptVO);
		
		return result;
	}
	
	
}
