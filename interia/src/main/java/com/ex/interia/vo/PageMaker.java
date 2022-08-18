package com.ex.interia.vo;

public class PageMaker {

	
	
	private int totalcount; // 상품전체개수
	private int displayPageNum =10; //페이지당 개수
	
	private int startpage; //시작하는페이지
	private int endpage; //마지막페이지
	private boolean prev; //이전버튼
	private boolean next; // 넥스트버튼
	private int firstpage;; //첫페이지
	private int lastpage; // 마지막페이지
	
	private Criteria cri; //검색기능

	
	
	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		
		this.totalcount = totalcount;
		
		start();
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getStartpage() {
		return startpage;
	}

	public void setStartpage(int startpage) {
		this.startpage = startpage;
	}

	public int getEndpage() {
		return endpage;
	}

	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getFirstpage() {
		return firstpage;
	}

	public void setFirstpage(int firstpage) {
		this.firstpage = firstpage;
	}

	public int getLastpage() {
		return lastpage;
	}

	public void setLastpage(int lastpage) {
		this.lastpage = lastpage;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	
    private void start() {
    	
    	
    	// 마지막페이지 == 현재페이지 / 보여줄페이지
    	endpage = (int)(Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
    	
    	// 시작페이지
    	startpage = (endpage -displayPageNum) +1;
    	
    	System.out.println("startpage="+startpage);
    	
    	if(startpage ==0) startpage =1;
    	
    	// 마지막으로 보여줄 페이지
    	int tempEndpage = (int)(Math.ceil(totalcount/(double) cri.getPerPageNumber()));
    	
    	if(endpage > tempEndpage) { // 마지막페이지 가 전체상품에 / 한페이지 보여줄 12개를 나눈거보다 클때 페이지를 같게 함,!
    		endpage = tempEndpage;
    	}
    	
    	prev = startpage == 1 ? false : true; // 이전페이지 버튼이 처음페이지가 1페이지면 거짓이고 1아니면 참
		next = endpage * cri.getPerPageNumber() >= totalcount ? false : true; // 10페이지 * 12개 12개가 전체 상품보다 더많으면 다음페이지 생성

    }
	
	
	
	
	
	
	
	
}
