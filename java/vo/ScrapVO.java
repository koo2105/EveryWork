package vo;

public class ScrapVO {
	
	private String scrap_id;
	private String emem_id;
	private String jobopen_id;
	public String getScrap_id() {
		return scrap_id;
	}
	public void setScrap_id(String scrap_id) {
		this.scrap_id = scrap_id;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public String getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(String jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	@Override
	public String toString() {
		return "ScrapVO [scrap_id=" + scrap_id + ", emem_id=" + emem_id + ", jobopen_id=" + jobopen_id + "]";
	}
	
	

}
