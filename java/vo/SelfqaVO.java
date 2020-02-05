package vo;

public class SelfqaVO {
	
	private int selfqa_id;
	private String emem_id;
	private String selfqa_q;
	private String selfqa_a;
	
	public int getSelfqa_id() {
		return selfqa_id;
	}
	public void setSelfqa_id(int selfqa_id) {
		this.selfqa_id = selfqa_id;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
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
		return "SelfqaVO [selfqa_id=" + selfqa_id + ", emem_id=" + emem_id + ", selfqa_q=" + selfqa_q + ", selfqa_a="
				+ selfqa_a + "]";
	}
	
	
}
