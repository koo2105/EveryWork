package vo;

public class SelftitleVO {
	private int ja_id;
	private String emem_id;
	private String ja_name;
	
	public int getJa_id() {
		return ja_id;
	}
	public void setJa_id(int ja_id) {
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
	
	@Override
	public String toString() {
		return "SelftitleVO [ja_id=" + ja_id + ", emem_id=" + emem_id + ", ja_name=" + ja_name + "]";
	}
	
	
	
}
