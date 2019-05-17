package com.o_rai.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.o_rai.cmmn.JsonUtil;
import com.o_rai.service.FcmService;
import com.o_rai.service.LoginService;

@Controller
public class MainController {
	
	private boolean isFcmSchedulerOn = false;
	
	@Inject
	FcmService fcmSvc;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		if(!isFcmSchedulerOn) {
			isFcmSchedulerOn = true;
			fcmSvc.fcmScheduler();
		}

		return "main/main";
	}

	@RequestMapping(value = "/login")
	public String login() {

		return "main/login";
	}

	@RequestMapping(value = "/loginProc", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String loginProc(@RequestParam Map<String, Object> map) {
		
		HashMap<String, Object> resultMap = loginService.loginProc(map);
		
		return JsonUtil.HashMapToJson(resultMap);
	}
	
	@RequestMapping(value = "/logoutProc")
	public String logoutProc(HttpServletRequest request) {
		request.getSession().removeAttribute("sessionVO");
		
		return "redirect:/";
	}
	
	
}
