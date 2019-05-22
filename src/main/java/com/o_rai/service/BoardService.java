package com.o_rai.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.o_rai.domain.PagingVO;
import com.o_rai.domain.SessionVO;
import com.o_rai.model.ApartmentDAO;

@Service
public class BoardService {

	@Autowired
	private ApartmentDAO apartmentDAO;
	
	@Transactional
	public List<Map<String, Object>> selectBoardList(PagingVO vo) {
		HttpServletRequest request = ((ServletRequestAttributes)
				RequestContextHolder.getRequestAttributes()).getRequest();
		
		SessionVO sessionVO 
				= (SessionVO) request.getSession().getAttribute("sessionVO");
		
		vo.setApt_index(sessionVO.getApt_index());
		
		PagingVO resultVO 
				= apartmentDAO.selectPagingInfo(vo.getApt_index());
		
		vo.setPagingInfo(resultVO);
		
		return apartmentDAO.selectBoardList(vo);
	}
	
	@Transactional
	public HashMap<String, Object> addCurrentDate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		if (apartmentDAO.addCurrentDate(map) == 1) {
			
			resultMap.put("result", "SUCCESS");
			
			String way = (String) map.get("way");
			
			if (way.equals("enter")) {
				resultMap.put("time", apartmentDAO.selectCurrentDate(map).get("enter_time"));
			} else {
				resultMap.put("time", apartmentDAO.selectCurrentDate(map).get("leave_time"));
			}
		}
		
		return resultMap;
	}

	public Map<String, Object> selectAptInform() {
		// TODO Auto-generated method stub
		HttpServletRequest request = ((ServletRequestAttributes)
				RequestContextHolder.getRequestAttributes()).getRequest();
		
		SessionVO sessionVO 
				= (SessionVO) request.getSession().getAttribute("sessionVO");
		

		return apartmentDAO.selectAptInform(sessionVO.getApt_index());
	}

	public Map<String, Object> selectUserInform(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		return apartmentDAO.selectUserInform(map);	
	}

	@Transactional
	public HashMap<String, Object> addBlackList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		Map<String, Object> blackListChkResultMap 
				= apartmentDAO.selectBlackListPossibleChk((String) map.get("bookIndex"));
		
		String blackListChkResult 
				= (String) blackListChkResultMap.get("is_blackList_possible"),
			
			isReportedPossible = (String) blackListChkResultMap.get("is_reported_possible");		
		
		System.out.println(blackListChkResultMap);
		System.out.println(map);
		
		if ("N".equals(blackListChkResult)) {
			resultMap.put("result", "FAILDAY");
			resultMap.put("msg", "사용시간 후 혹은 종료시간 이후 24시간 이내에만 신고가능 합니다.");
			
			return resultMap;
		}
		
		if ("N".equals(isReportedPossible)) {
			resultMap.put("result", "FAILALEADY");
			resultMap.put("msg", "이미 신고된 예약입니다.");
			
			return resultMap;
		}
		
		apartmentDAO.addBlackList(map);		
		
		apartmentDAO.addIsReported(map);
		
		resultMap.put("result", "SUCCESS");
		resultMap.put("msg", "신고되었습니다.");
		
		return resultMap;
	}

}
