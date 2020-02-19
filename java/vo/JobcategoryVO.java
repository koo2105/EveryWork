package vo;

import java.util.ArrayList;

public class JobcategoryVO {
	
	private int jc_id; 
	private int jobopen_id ; //references jobopen(jobopen_id)
	private String jc_div ; 
	private String jc_part ;
	private ArrayList<String> jobqa_q;
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
	public ArrayList<String> getJobqa_q() {
		return jobqa_q;
	}
	public void setJobqa_q(ArrayList<String> jobqa_q) {
		this.jobqa_q = jobqa_q;
	}
	
	@Override
	public String toString() {
		return "JobcategoryVO [jc_id=" + jc_id + ", jobopen_id=" + jobopen_id + ", jc_div=" + jc_div + ", jc_part="
				+ jc_part + ", jobqa_q=" + jobqa_q + "]";
	}

	
	
	

}
