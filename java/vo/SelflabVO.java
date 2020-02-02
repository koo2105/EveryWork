package vo;

public class SelflabVO {

	private int lab_id;
	private String lab_cat;
	private String lab_title;
	private String lab_name;
	private int lab_count;
	private String lab_date;
	private String lab_content;
	private String lab_img;
	public int getLab_id() {
		return lab_id;
	}
	public void setLab_id(int lab_id) {
		this.lab_id = lab_id;
	}
	public String getLab_cat() {
		return lab_cat;
	}
	public void setLab_cat(String lab_cat) {
		this.lab_cat = lab_cat;
	}
	public String getLab_title() {
		return lab_title;
	}
	public void setLab_title(String lab_title) {
		this.lab_title = lab_title;
	}
	public String getLab_name() {
		return lab_name;
	}
	public void setLab_name(String lab_name) {
		this.lab_name = lab_name;
	}
	public int getLab_count() {
		return lab_count;
	}
	public void setLab_count(int lab_count) {
		this.lab_count = lab_count;
	}
	public String getLab_date() {
		return lab_date;
	}
	public void setLab_date(String lab_date) {
		this.lab_date = lab_date;
	}
	public String getLab_content() {
		return lab_content;
	}
	public void setLab_content(String lab_content) {
		this.lab_content = lab_content;
	}
	public String getLab_img() {
		return lab_img;
	}
	public void setLab_img(String lab_img) {
		this.lab_img = lab_img;
	}
	
	@Override
	public String toString() {
		return "SelflabVO [lab_id=" + lab_id + ", lab_cat=" + lab_cat + ", lab_title=" + lab_title + ", lab_name="
				+ lab_name + ", lab_count=" + lab_count + ", lab_date=" + lab_date + ", lab_content=" + lab_content
				+ ", lab_img=" + lab_img + "]";
	}
	
	
	
}
