package vo;

public class SpecLanguageVO {
	
	private int lan_id;
	private int res_id;
	private String lan_sort;
	private String lan_name;
	private String lan_grade;
	private String lan_date;
	
	public int getLan_id() {
		return lan_id;
	}
	public void setLan_id(int lan_id) {
		this.lan_id = lan_id;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
	}
	public String getLan_sort() {
		return lan_sort;
	}
	public void setLan_sort(String lan_sort) {
		this.lan_sort = lan_sort;
	}
	public String getLan_name() {
		return lan_name;
	}
	public void setLan_name(String lan_name) {
		this.lan_name = lan_name;
	}
	public String getLan_grade() {
		return lan_grade;
	}
	public void setLan_grade(String lan_grade) {
		this.lan_grade = lan_grade;
	}
	public String getLan_date() {
		return lan_date;
	}
	public void setLan_date(String lan_date) {
		this.lan_date = lan_date;
	}
	@Override
	public String toString() {
		return "LanguageVO [lan_id=" + lan_id + ", res_id=" + res_id + ", lan_sort=" + lan_sort + ", lan_name="
				+ lan_name + ", lan_grade=" + lan_grade + ", lan_date=" + lan_date + "]";
	}

	
	
}
