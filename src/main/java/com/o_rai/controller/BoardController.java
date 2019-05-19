package com.o_rai.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.o_rai.cmmn.JsonUtil;
import com.o_rai.domain.PagingVO;
import com.o_rai.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/board")
	public String boardInit(@ModelAttribute PagingVO vo, ModelMap model) {
		
		List<Map<String, Object>> boardList = boardService.selectBoardList(vo);

		System.out.println("####### vo : " + vo);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("pagingVO", vo);
		model.addAttribute("aptInform", boardService.selectAptInform());
		
		return "board/board";
	}
	
	@RequestMapping(value = "/addCurrentDate", produces="application/json; charset=utf-8")
	@ResponseBody
	public String addCurrentDate(@RequestParam Map<String, Object> map) {

		return JsonUtil.HashMapToJson(boardService.addCurrentDate(map));
	}
	
	@RequestMapping(value = "/selectUserInform", produces="application/json; charset=utf-8")
	@ResponseBody
	public String selectUserInform(@RequestParam Map<String, Object> map) {
		
		return JsonUtil.MapToJson(boardService.selectUserInform(map));
	}
	
	@RequestMapping(value = "/addBlackList", produces="application/json; charset=utf-8")
	@ResponseBody
	public String addBlackList(@RequestParam Map<String, Object> map) {
		return JsonUtil.HashMapToJson(boardService.addBlackList(map));
	}
}
