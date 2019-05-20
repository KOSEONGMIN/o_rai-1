package com.o_rai.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.o_rai.domain.ExcelVO;
import com.o_rai.domain.SessionVO;


@Service
public class ExcelService {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void selectExcelList(HttpServletResponse response) throws IOException {

	    SqlSession sqlSession = sqlSessionFactory.openSession();

	    SXSSFWorkbook wb = new SXSSFWorkbook(100);
	    final Sheet sheet = wb.createSheet("예약내역시트");

	    CellStyle headStyle = wb.createCellStyle();
	    
	    headStyle.setBorderTop(BorderStyle.THIN);
	    headStyle.setBorderBottom(BorderStyle.THIN);
	    headStyle.setBorderLeft(BorderStyle.THIN);
	    headStyle.setBorderRight(BorderStyle.THIN);
	    headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
	    headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	    headStyle.setAlignment(HorizontalAlignment.CENTER);
	    
	    sheet.setColumnWidth(1, 5000);
	    sheet.setColumnWidth(2, 5000);
	    sheet.setColumnWidth(3, 5000);
	    sheet.setColumnWidth(4, 5000);
	    sheet.setColumnWidth(5, 4000);
	    sheet.setColumnWidth(6, 6000);
	    sheet.setColumnWidth(7, 6000);
	    sheet.setColumnWidth(8, 6000);
	    sheet.setColumnWidth(9, 6000);
	    
	    int rowNum = 1;
	    
	    HttpServletRequest request = ((ServletRequestAttributes)
				RequestContextHolder.getRequestAttributes()).getRequest();
	    
	    SessionVO sessionVO 
			= (SessionVO) request.getSession().getAttribute("sessionVO");
	    
	    List<ExcelVO> reservatationList = sqlSession.selectList("selectExcelList", sessionVO.getApt_index());
	    
	    Row headerRow = sheet.createRow(0);
	    Cell headCell = null;
	    
	    headCell = headerRow.createCell(0);	
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("번호");

	    headCell = headerRow.createCell(1);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("아이디");

	    headCell = headerRow.createCell(2);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("사용자명");
	    
	    headCell = headerRow.createCell(3);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("휴대전화");
	    
	    
	    headCell = headerRow.createCell(4);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("차량번호");
	    
	    headCell = headerRow.createCell(5);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("차종");
	    
	    headCell = headerRow.createCell(6);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("예약시작시간");
	    
	    headCell = headerRow.createCell(7);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("예약종료시간");
	    
	    headCell = headerRow.createCell(8);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("입차시간");
	    
	    headCell = headerRow.createCell(9);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("출차시간");
	    
	    headCell = headerRow.createCell(10);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("요금");
	    
	    headCell = headerRow.createCell(11);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("유저등급");
	    
	    headCell = headerRow.createCell(12);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("신고여부");
	    
	    headCell = headerRow.createCell(13);
	    headCell.setCellStyle(headStyle);
	    headCell.setCellValue("신고횟수");
	    
	    for (ExcelVO vo : reservatationList) {
	    	Row row = sheet.createRow(rowNum++);
	    	Cell cell = null;
	    	
	    	cell = row.createCell(0);
  	      	cell.setCellValue(vo.getBook_index());
  	        cell = row.createCell(1);
  	        cell.setCellValue(vo.getUser_id());
  	        cell = row.createCell(2);
  	        cell.setCellValue(vo.getUser_name());
  	        cell = row.createCell(3);
  	        cell.setCellValue(vo.getUser_phone());
  	        cell = row.createCell(4);
  	        cell.setCellValue(vo.getCar_number());
  	        cell = row.createCell(5);
  	        cell.setCellValue(vo.getCar_type());
  	     	cell = row.createCell(6);
  	        cell.setCellValue(vo.getStart_time());
  	        cell = row.createCell(7);
  	        cell.setCellValue(vo.getFinish_time());
  	        cell = row.createCell(8);
  	        cell.setCellValue(vo.getEnter_time());
  	        cell = row.createCell(9);
  	        cell.setCellValue(vo.getLeave_time());
  	        cell = row.createCell(10);
  	        cell.setCellValue(vo.getBill());
  	        cell = row.createCell(11);
  	        cell.setCellValue(vo.getUser_grade());
  	        cell = row.createCell(12);
  	        cell.setCellValue(vo.getIs_reported());
  	        cell = row.createCell(13);
  	        cell.setCellValue(vo.getUser_report_cocunt());
	    }

	    LocalDate currentDate = LocalDate.now();
	    
	    String current = currentDate.getYear() + "/" + 
	    			currentDate.getMonthValue() + "/" + currentDate.getDayOfMonth();
	    
	    response.setHeader("Set-Cookie", "fileDownload=true; path=/");
	    response.setHeader("Content-Disposition", String.format("attachment; filename=reservationFile" + "/" + current + ".xlsx"));
	    wb.write(response.getOutputStream());

	}
	
}
