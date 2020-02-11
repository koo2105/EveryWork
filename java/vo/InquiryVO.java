package vo;

public class InquiryVO {

	private int inq_id;
	private String emem_id;//references emember(emem_id)
	private String inq_title;
	private String inq_content;
	private String inq_date;
	private int inq_count;
	private String inq_state;
	public int getInq_id() {
		return inq_id;
	}
	public void setInq_id(int inq_id) {
		this.inq_id = inq_id;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public String getInq_title() {
		return inq_title;
	}
	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}
	public String getInq_content() {
		return inq_content;
	}
	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}
	public String getInq_date() {
		return inq_date;
	}
	public void setInq_date(String inq_date) {
		this.inq_date = inq_date;
	}
	public int getInq_count() {
		return inq_count;
	}
	public void setInq_count(int inq_count) {
		this.inq_count = inq_count;
	}
	public String getInq_state() {
		return inq_state;
	}
	public void setInq_state(String inq_state) {
		this.inq_state = inq_state;
	}
	@Override
	public String toString() {
		return "InquiryVO [inq_id=" + inq_id + ", emem_id=" + emem_id + ", inq_title=" + inq_title + ", inq_content="
				+ inq_content + ", inq_date=" + inq_date + ", inq_count=" + inq_count + ", inq_state=" + inq_state
				+ "]";
	}

	
	
	
	
	
	
	
}
