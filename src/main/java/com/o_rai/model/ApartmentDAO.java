package com.o_rai.model;

import java.util.List;
import java.util.Map;

import com.o_rai.domain.ApartmentVO;

public interface ApartmentDAO {
	
	public List<ApartmentVO> getAllApartment() throws Exception;
	
	public List<ApartmentVO> getSearchedApartment(ApartmentVO vo);
	
	public ApartmentVO getSelectedApartment(ApartmentVO vo);
	
	public List<ApartmentVO> overlayEmailChk(String email);
	
	public int insertApartment(ApartmentVO vo);
	
	public List<ApartmentVO> loginApartment(Map<String, Object> map);
}