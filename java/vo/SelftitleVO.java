package vo;

import java.util.ArrayList;

public class SelftitleVO {
	private Integer ja_id;
	private String emem_id;
	private String ja_name;
	private ArrayList<String> selfqa_q;
	private ArrayList<String> selfqa_a;
	public Integer getJa_id() {
		return ja_id;
	}
	public void setJa_id(Integer ja_id) {
		this.ja_id = ja_id;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public String getJa_name() {
		return ja_name;
	}
	public void setJa_name(String ja_name) {
		this.ja_name = ja_name;
	}
	public ArrayList<String> getSelfqa_q() {
		return selfqa_q;
	}
	public void setSelfqa_q(ArrayList<String> selfqa_q) {
		this.selfqa_q = selfqa_q;
	}
	public ArrayList<String> getSelfqa_a() {
		return selfqa_a;
	}
	public void setSelfqa_a(ArrayList<String> selfqa_a) {
		this.selfqa_a = selfqa_a;
	}
	@Override
	public String toString() {
		return "SelftitleVO [ja_id=" + ja_id + ", emem_id=" + emem_id + ", ja_name=" + ja_name + ", selfqa_q="
				+ selfqa_q + ", selfqa_a=" + selfqa_a + "]";
	}
	
	
	
	

	
	
}
