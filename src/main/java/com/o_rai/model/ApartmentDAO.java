package com.o_rai.model;

import java.util.List;
import java.util.Map;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.PagingVO;

public interface ApartmentDAO {
	
	public List<ApartmentVO> getAllApartment() throws Exception;
	
	public List<ApartmentVO> getSearchedApartment(ApartmentVO vo);
	
	public ApartmentVO getSelectedApartment(ApartmentVO vo);
	
	public List<ApartmentVO> overlayEmailChk(String email);
	
	public int insertApartment(ApartmentVO vo);
	
	public List<ApartmentVO> loginApartment(Map<String, Object> map);

	public List<Map<String, Object>> selectBoardList(PagingVO vo);

	public PagingVO selectPagingInfo(int apt_index);

	public int addCurrentDate(Map<String, Object> map);

	public Map<String, Object> selectCurrentDate(Map<String, Object> map);

	public Map<String, Object> selectAptInform(Integer apt_index);

	public Map<String, Object> selectUserInform(Map<String, Object> map);

	public Integer addBlackList(Map<String, Object> map);

	public Map<String, Object> selectBlackListPossibleChk(String param);

	public Integer addIsReported(Map<String, Object> map);
	
	public int updateApartment(ApartmentVO vo);
}