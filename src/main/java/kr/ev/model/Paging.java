package kr.ev.model;

public class Paging {
	
	
	private int page =1; //현재 페이지 (get)
    private int totalCount; //row 전체의 수 (get)
    private int beginPage;  //출력 시작
    private int endPage;    //출력 끝
    private int displayRow =15;  //한 페이지에 몇 개의 로우 (선택 set)
    private int displayPage =10;  //한 페이지에 몇 개의 페이지 (선택 set)
    boolean prev; //prev 버튼이 보일건지 안보일건지
    boolean next; //next 버튼이 보일건지 안보일건지
    private int tP;
    private String searchinfo;
    
    private int startNum = (page-1)*displayRow+1;
    private int endNum =page*displayRow;
    
    
    public String getSearchinfo() {
		return searchinfo;
	}
	public void setSearchinfo(String searchinfo) {
		this.searchinfo = searchinfo;
	}
    public int getStartNum() {
    	return startNum;
    }
    public int getEndNum() {
    	return endNum;
    }
    public int getPage() {
        return page;
    }
    public void setPage(int page) {
        this.page = page;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        paging();
    }
    public int getDisplayRow() {
        return displayRow;
    }
    public void setDisplayRow(int displayRow) {
        this.displayRow = displayRow;
    }
    public int getDisplayPage() {
        return displayPage;
    }
    public void setDisplayPage(int displayPage) {
        this.displayPage = displayPage;
    }
    public int getBeginPage() {
        return beginPage;
    }
    public int getEndPage() {
        return endPage;
    }
    public boolean isPrev() {
        return prev;
    }
    public boolean isNext() {
        return next;
    }
    
    private void paging(){
        endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;
//    or  endPage = (((page + (displayPage -1)) / displayPage) * displayPage;
        beginPage = endPage - (displayPage - 1);
        int totalPage = (int)Math.ceil(totalCount/(double)displayRow);
        
        if(totalPage < endPage){
            endPage = totalPage;
            next = false;
        }else{
            next = true;
        }
        prev = (beginPage==1)?false:true;//page가 11이상에만 나온다.
        System.out.println("paging 객체생성 ---- ");
        System.out.println("endPage : " + endPage);
        System.out.println("beginPage : " + beginPage);
        System.out.println("endPage : " + endPage);
        System.out.println("totalPage : " + totalPage);
        tP = totalPage;
        System.out.println("---------------------");
    }
	public int getTotalPage() {
		return tP;
	}

}
