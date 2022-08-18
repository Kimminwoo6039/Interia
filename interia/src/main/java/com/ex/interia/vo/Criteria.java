package com.ex.interia.vo;

public class Criteria {

	
	private int page; //페이지
	private int perPageNumber; // 한페이지당 보여줄 개수
	
	
	// 검색기능
	private String keyword; // 키워드
	private String type; //추후에 타입
	
	// 브랜듬별
	private String brand; // 브랜드별
	
	
	public Criteria() {
		this.page = 1; //시작페이지
		this.perPageNumber = 12; //페이지당 12개상품 조회하기
	}
	
	
	public int getPageStart() {  //추가로 필수로 넣어야함..
		return (this.page-1) * perPageNumber;  // 페이지 시작할려고 만듬.
	}
	
	
	
	
	
	

	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		
		if(page <=0) {
			this.page = 1;
		}else {
			this.page = page;	
		}
		
		
	}
	
	
	
	

	public int getPerPageNumber() {
		return perPageNumber;
	}

	public void setPerPageNumber(int perPageNumber) {
		this.perPageNumber = perPageNumber;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	
}
