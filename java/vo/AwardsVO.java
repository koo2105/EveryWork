package vo;

public class AwardsVO {
	private int aw_id;
	private int res_id;
	private String aw_name;
	private String aw_story;
	private String aw_pub;
	private String aw_date;
	public int getAw_id() {
		return aw_id;
	}
	public void setAw_id(int aw_id) {
		this.aw_id = aw_id;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
	}
	public String getAw_name() {
		return aw_name;
	}
	public void setAw_name(String aw_name) {
		this.aw_name = aw_name;
	}
	public String getAw_story() {
		return aw_story;
	}
	public void setAw_story(String aw_story) {
		this.aw_story = aw_story;
	}
	public String getAw_pub() {
		return aw_pub;
	}
	public void setAw_pub(String aw_pub) {
		this.aw_pub = aw_pub;
	}
	public String getAw_date() {
		return aw_date;
	}
	public void setAw_date(String aw_date) {
		this.aw_date = aw_date;
	}
	@Override
	public String toString() {
		return "AwardsVO [aw_id=" + aw_id + ", res_id=" + res_id + ", aw_name=" + aw_name + ", aw_story=" + aw_story
				+ ", aw_pub=" + aw_pub + ", aw_date=" + aw_date + "]";
	}
	
}
