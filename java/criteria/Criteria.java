package criteria;

public class Criteria {

	private int page;	// ���� ��� PageNo
	private int perPageNum; // page �� ��� row ����
	private int sno ; // start rownum
	private int eno ; // end rownum
	
// �����ڷ� �ʱ�ȭ
	public Criteria(){
		this.page = 1;  
		this.perPageNum = 5; 
	}
	
	public void setSnoEno(){
		if (sno<1) sno=1 ;
		this.sno=((page-1)*perPageNum)+1 ; // - startRowNum ���
		this.eno=(sno+perPageNum)-1 ; // - endRowNum ��� 
	}
	
	public int getSno() {  
		return this.sno;
	}
	public int getEno() {  
		return this.eno ;
	}

	public void setPage(int page){
		if(page<1) page=1;
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum){
		
		if(perPageNum < 1 || perPageNum > 100){
			  this.perPageNum = 10;
		}else this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}	
	
	//method for MySQL Mapper - startRowNum
	//public int getPageStart() {
	//	return (this.page -1)* perPageNum;
	//}
	
	//method for MyBatis SQL Mapper 
	public int getPerPageNum(){
		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "Criteria [page="+page+", perPageNum="+perPageNum+", sno="+sno+", eno="+eno+"]";
	}
} // class
