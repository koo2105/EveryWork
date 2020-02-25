package criteria;

// ��Ű�� org.springframework.web.util
// => �����߿� �ʿ��� ���� ��ƿ��Ƽ Ŭ���� ����
// => UriComponents , UriComponentsBuilder
//		Uri�� �������� �������ִ� Ŭ����,
//		�Ķ���Ͱ� ���յ� uri�� �ս��� �������
// => ?page=8&perPageNum=10 �̰��� �������

// Paging�� �⺻��Ģ-> �ڵ��...242p

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

	private int totalCount;// Table��ü row ����
	private int startPage; // View�� ǥ���� ù PageNo
	private int endPage;   // View�� ǥ���� �� PageNo
	private int lastPage;  // ��ü row�� ������ PageNo
	private boolean prev;  // ���� Page�� ����
	private boolean next;  // ���� Page�� ����
	
	private int displayPageNum = 5; // View�� ǥ���� PageNo ����
	
	// private Criteria cri;
	private SearchCriteria cri;
	

	public void setCri(SearchCriteria cri) {
		this.cri = cri;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();  
		// totalCount ���� �̿��ؼ� 
		// endPage, startPage, lastPage, prev, next ��� ���
	}

	private void calcData() {
		
		endPage = (int) (Math.ceil(cri.getPage() / (double)displayPageNum ) * displayPageNum);
		// Math.ceil(c) : �Ű����� c ���� ũ�鼭 ���� ���� ���� ������ double ���·� ��ȯ
		// ceil : õ��   ,  ��) 11/3=3.666..  lastPage=4
		startPage = (endPage - displayPageNum) + 1;
		
		// ������ pageNO ��� 
		lastPage = (int)(Math.ceil(totalCount / (double)cri.getPerPageNum()));
		// ��) total_row=11, perPage=3  => 11/3=3.666..  lastPage=4
		
		if(endPage > lastPage){
			endPage = lastPage;
		}
		
		prev = startPage ==1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
		
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}
	
	public int getLastPage() {
		return lastPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public SearchCriteria getCri() {
		return cri;
	}
	
	public String makeQuery(int page){
		UriComponents uriComponents =
	            UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
	            .build();	            
		
		return uriComponents.toUriString();
	}
	
//	** UriComponents , UriComponentsBuilder
//	=> Uri �� �������� �������ִ� Ŭ�����̴�. 
//	=> �Ķ���Ͱ� ���յ� uri�� �ս��� ������ش� 
//	    (�ڵ带 �������� ������ ���� ������ �Ǽ�����)
//		
//	     -  ?page=8&perPageNum=10  �̰��� �������
//	     -  ? ���� ��������Ƿ� jsp Code���� ? �������� �ʵ��� ���� 

	public String makeSearch(int page){
		UriComponents uriComponents =
	            UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
 	            .queryParam("searchType", cri.getSearchType())
 	            .queryParam("keyword", cri.getKeyword())
	            .build();	
		
		//.queryParam("searchType", ((SearchCriteria)cri).getSearchType())
        //.queryParam("keyword", ((SearchCriteria)cri).getKeyword())
		// (SearchCriteria)cri).getSearchType() 
		// => cri �� �ļ�(SearchCriteria) �� ����ȯ�Ͽ� �ļ��� �ɹ��� �����ϴ� ���
		// => ������  private SearchCriteria cri �� ���� �����Ƿ� �ʿ����
		return uriComponents.toUriString();
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", lastPage=" + lastPage + ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum
				+ ", cri=" + cri + "]";
	}	
	
} // class
