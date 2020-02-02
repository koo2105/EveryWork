package vo;


public class EmemberVO {
	private String emem_id;
	private String emem_pw;
	private String emem_name;
	private String emem_pnum;
	private String emem_birthd;
	private String emem_gender;
	
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public String getEmem_pw() {
		return emem_pw;
	}
	public void setEmem_pw(String emem_pw) {
		this.emem_pw = emem_pw;
	}
	public String getEmem_name() {
		return emem_name;
	}
	public void setEmem_name(String emem_name) {
		this.emem_name = emem_name;
	}
	public String getEmem_pnum() {
		return emem_pnum;
	}
	public void setEmem_pnum(String emem_pnum) {
		this.emem_pnum = emem_pnum;
	}
	public String getEmem_birthd() {
		return emem_birthd;
	}
	public void setEmem_birthd(String emem_birthd) {
		this.emem_birthd = emem_birthd;
	}
	public String getEmem_gender() {
		return emem_gender;
	}
	public void setEmem_gender(String emem_gender) {
		this.emem_gender = emem_gender;
	}
	@Override
	public String toString() {
		return "ememberVO [emem_id=" + emem_id + ", emem_pw=" + emem_pw + ", emem_name=" + emem_name + ", emem_pnum="
				+ emem_pnum + ", emem_birthd=" + emem_birthd + ", emem_gender=" + emem_gender + "]";
	}
	
	
}
