package com.o_rai.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.service.FcmService;

@Controller
public class MainController {
	
	@Inject
	FcmService fcmSvc;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		fcmSvc.fcmScheduler();

		return "main/main";
	}

	@RequestMapping(value = "/login")
	public String login() {

		return "main/login";
	}

	@RequestMapping(value = "/loginProc", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public String loginProc(@ModelAttribute ApartmentVO vo) {
		
		return "adf";
	}
	
}
