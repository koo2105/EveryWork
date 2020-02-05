package vo;

public class JobcategoryVO {
	
	private int jc_id; 
	private int jobopen_id ; //references jobopen(jobopen_id)
	private String jc_div ; 
	private String jc_part ;
	
	public int getJc_id() {
		return jc_id;
	}
	public void setJc_id(int jc_id) {
		this.jc_id = jc_id;
	}
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getJc_div() {
		return jc_div;
	}
	public void setJc_div(String jc_div) {
		this.jc_div = jc_div;
	}
	public String getJc_part() {
		return jc_part;
	}
	public void setJc_part(String jc_part) {
		this.jc_part = jc_part;
	}
	@Override
	public String toString() {
		return "JobcategoryVO [jc_id=" + jc_id + ", jobopen_id=" + jobopen_id + ", jc_div=" + jc_div + ", jc_part="
				+ jc_part + "]";
	} 
	
	
	

}
