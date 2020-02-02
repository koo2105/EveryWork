package vo;

public class SelfqaVO {
	
	private int selfqa_id;
	private int ja_id;//references selftitle(ja_id),
	private int jobopen_id;//references jobopen(jobopen_id)
	private String selfqa_q;
	private String selfqa_a;
	public int getSelfqa_id() {
		return selfqa_id;
	}
	public void setSelfqa_id(int selfqa_id) {
		this.selfqa_id = selfqa_id;
	}
	public int getJa_id() {
		return ja_id;
	}
	public void setJa_id(int ja_id) {
		this.ja_id = ja_id;
	}
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getSelfqa_q() {
		return selfqa_q;
	}
	public void setSelfqa_q(String selfqa_q) {
		this.selfqa_q = selfqa_q;
	}
	public String getSelfqa_a() {
		return selfqa_a;
	}
	public void setSelfqa_a(String selfqa_a) {
		this.selfqa_a = selfqa_a;
	}
	
	@Override
	public String toString() {
		return "SelfqaVO [selfqa_id=" + selfqa_id + ", ja_id=" + ja_id + ", jobopen_id=" + jobopen_id + ", selfqa_q="
				+ selfqa_q + ", selfqa_a=" + selfqa_a + "]";
	}
	
	

}
