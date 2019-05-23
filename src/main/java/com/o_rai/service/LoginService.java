package com.o_rai.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.SessionVO;
import com.o_rai.model.ApartmentDAO;

@Service
public class LoginService {
	
	@Autowired
	private ApartmentDAO apartMentDAO;
	
	public HashMap<String, Object> loginProc(Map<String, Object> map) {
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		List<ApartmentVO> apartmentVOList = apartMentDAO.loginApartment(map);
		
		if (apartmentVOList.size() != 1) {
			resultMap.put("result", "FAIL");
			resultMap.put("msg", "로그인 실패");
			
			return resultMap;
		}
		
		ApartmentVO apartmentVO = apartmentVOList.get(0);
		
		HttpServletRequest request = ((ServletRequestAttributes)
				RequestContextHolder.getRequestAttributes()).getRequest();
		
		SessionVO sessionVO = new SessionVO();
		
		sessionVO.setApt_index(apartmentVO.getApt_index());
		sessionVO.setApt_id(apartmentVO.getApt_id());
		
		request.getSession().setAttribute("sessionVO", sessionVO);
		
		resultMap.put("result", "SUCCESS");
		resultMap.put("msg", "로그인 성공");
		
		return resultMap;
	}

	
	
}
