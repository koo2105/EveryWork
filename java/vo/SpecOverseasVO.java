package vo;

public class SpecOverseasVO {
	private Integer ov_id;
	private Integer spec_id;
	private String ov_country;
	private String ov_pub;
	private String ov_purpose;
	public Integer getOv_id() {
		return ov_id;
	}
	public void setOv_id(Integer ov_id) {
		this.ov_id = ov_id;
	}
	public Integer getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(Integer spec_id) {
		this.spec_id = spec_id;
	}
	public String getOv_country() {
		return ov_country;
	}
	public void setOv_country(String ov_country) {
		this.ov_country = ov_country;
	}
	public String getOv_pub() {
		return ov_pub;
	}
	public void setOv_pub(String ov_pub) {
		this.ov_pub = ov_pub;
	}
	public String getOv_purpose() {
		return ov_purpose;
	}
	public void setOv_purpose(String ov_purpose) {
		this.ov_purpose = ov_purpose;
	}
	@Override
	public String toString() {
		return "SpecOverseasVO [ov_id=" + ov_id + ", spec_id=" + spec_id + ", ov_country=" + ov_country + ", ov_pub="
				+ ov_pub + ", ov_purpose=" + ov_purpose + "]";
	}
	
	
}
