package com.o_rai.domain;

public class PagingVO {

	private int page  			= 1;			// 현재 페이지
	private int rows  			= 10; 			// 한 페이지 row 수
	private int scale 			= 5;
	private int scaleStartPage 	= 1; 			// scale 시작 페이지
	private int scaleEndPage 	= 1;
	private int totPage			= 1;			// 전체 페이지 수
	private int totCnt			= 0;			// 전체 게시글 수
	private int prevPage		= 0;			// 이전 페이지 ("<<" 버튼 클릭 시)
	private int nextPage		= 0; 			// 다음 페이지 (">>" 버튼 클릭 시)
	private int apt_index;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public int getScale() {
		return scale;
	}
	public void setScale(int scale) {
		this.scale = scale;
	}
	
	public int getScaleStartPage() {
		return scaleStartPage;
	}
	public void setScaleStartPage(int scaleStartPage) {
		this.scaleStartPage = scaleStartPage;
	}
	
	public int getScaleEndPage() {
		return scaleEndPage;
	}
	public void setScaleEndPage(int scaleEndPage) {
		this.scaleEndPage = scaleEndPage;
	}
	
	public int getTotPage() {
		return totPage;
	}
	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}
	
	public int getTotCnt() {
		return totCnt;
	}
	public void setTotCnt(int totCnt) {
		this.totCnt = totCnt;
	}
	
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
	public int getApt_index() {
		return apt_index;
	}
	public void setApt_index(int apt_index) {
		this.apt_index = apt_index;
	}
	
	@Override
	public String toString() {
		return "PagingVO [page=" + page + ", rows=" + rows + ", scale=" + scale + ", scaleStartPage=" + scaleStartPage
				+ ", scaleEndPage=" + scaleEndPage + ", totPage=" + totPage + ", totCnt=" + totCnt + ", prevPage="
				+ prevPage + ", nextPage=" + nextPage + ", apt_index=" + apt_index + "]";
	}
	
	public void setPagingInfo(PagingVO pagingVO) {
		int totPage = pagingVO.getTotPage();
		
		int nowScale 	= (this.page - 1) / this.scale + 1;		// 현재 화면의 스케일
		int startPage 	= (nowScale - 1) * this.scale + 1;		// 스케일 시작 페이지
		int endPage		= startPage + this.scale - 1;			// 스케일 끝 페이지
		
		endPage = (endPage > totPage) ? totPage : endPage;
		
		int prevPage = startPage - 1;   	// 이전페이지
		int nextPage = endPage + 1;			// 다음페이지
		
		this.scaleStartPage = startPage;
		this.scaleEndPage = endPage;
		this.prevPage = prevPage;
		this.nextPage = nextPage;
		
		this.totCnt  = pagingVO.getTotCnt();
		this.totPage = totPage;
	}
}
