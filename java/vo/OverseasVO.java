package vo;

public class OverseasVO {
	private int ov_id;
	private int res_id;
	private String ov_country;
	private String ov_pub;
	private String ov_purpose;
	public int getOv_id() {
		return ov_id;
	}
	public void setOv_id(int ov_id) {
		this.ov_id = ov_id;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
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
		return "OverseasVO [ov_id=" + ov_id + ", res_id=" + res_id + ", ov_country=" + ov_country + ", ov_pub=" + ov_pub
				+ ", ov_purpose=" + ov_purpose + "]";
	}

	
}
