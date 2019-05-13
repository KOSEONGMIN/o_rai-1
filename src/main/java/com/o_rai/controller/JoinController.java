package com.o_rai.controller;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.o_rai.cmmn.JsonUtil;
import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.FormVO;
import com.o_rai.model.ApartmentDAO;
import com.o_rai.service.JoinService;

@Controller
public class JoinController {
	
	@Inject
	private ApartmentDAO aptDao;
	
	@Autowired
	private JoinService joinSvc;

	@RequestMapping(value = "/selectJoinChoice")
	public String joinChoice() {
		
		return "join/joinChoice.join";
	}
	
	@RequestMapping(value = "/selectJoinAgreeWrite")
	public String joinAgreeWrite() {
		
		return "join/joinAgreeWrite.join";
	}
	
	@RequestMapping(value = "/joinRegist")
	public String joinRegist() {
		
		return "join/joinRegist.join";
	}
	
	@RequestMapping(value = "/joinComplete", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public String joinComplete(@ModelAttribute FormVO vo, RedirectAttributes rttr) {
		System.out.println(vo);
		
		int result = joinSvc.formToApartment(vo);
		
		if (result == 1) {
			return "join/joinComplete.join";
		}else {
			rttr.addFlashAttribute("msg", "회원가입에 실패하였습니다. 다시 시도해주세요.");
			
			return "redirect:join/joinRegist.join";
		}
		
	}
	
	// Email redundancy check 
	@RequestMapping(value = "/ajax/emailOverlayChk", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String emailOverlayChk(@RequestParam String email) {
		System.out.println("email:" + email);

		List<ApartmentVO> listAptVO = aptDao.overlayEmailChk(email);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		System.out.println("listAptVO Size :" + listAptVO.size());
        
		// List size > 0 is that id exist more than 1
		if (listAptVO.size() > 0) {
			resultMap.put("isSuccess", "FAIL");
			return JsonUtil.HashMapToJson(resultMap);
			
		} else {
			resultMap.put("isSuccess", "SUCCESS");
			return JsonUtil.HashMapToJson(resultMap);
			
		}
	}
	
	// 상세정보
	@RequestMapping(value = "/joinDetail")
	public String joinDetail() throws Exception {
		// TODO: 정보 가져와서 form 맞춰서 jsp로 뿌려주기
		
		return "join/joinDetail.join";
	}
}
