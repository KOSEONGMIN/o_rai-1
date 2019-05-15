package com.o_rai.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.o_rai.service.ExcelService;

@Controller
public class ExcelController {

	@Autowired
	private ExcelService excelService;
	
	@RequestMapping(value = "/downloadExcel")
	public void downloadExcel(HttpServletResponse response) throws Exception {

		excelService.selectExcelList(response);
		
	}
	
}
