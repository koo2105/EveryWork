package vo;

public class JobopenVO {
	private int jobopen_id;
	private String jobopen_name;
	private String jobopen_pimg;
	private String jobopen_company;
	private String jobopen_link;
	private String jobopen_sdate;
	private String jobopen_edate;
	private String jobopen_cimg;
	
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getJobopen_name() {
		return jobopen_name;
	}
	public void setJobopen_name(String jobopen_name) {
		this.jobopen_name = jobopen_name;
	}
	public String getJobopen_pimg() {
		return jobopen_pimg;
	}
	public void setJobopen_pimg(String jobopen_pimg) {
		this.jobopen_pimg = jobopen_pimg;
	}
	public String getJobopen_company() {
		return jobopen_company;
	}
	public void setJobopen_company(String jobopen_company) {
		this.jobopen_company = jobopen_company;
	}
	public String getJobopen_link() {
		return jobopen_link;
	}
	public void setJobopen_link(String jobopen_link) {
		this.jobopen_link = jobopen_link;
	}
	public String getJobopen_sdate() {
		return jobopen_sdate;
	}
	public void setJobopen_sdate(String jobopen_sdate) {
		this.jobopen_sdate = jobopen_sdate;
	}
	public String getJobopen_edate() {
		return jobopen_edate;
	}
	public void setJobopen_edate(String jobopen_edate) {
		this.jobopen_edate = jobopen_edate;
	}
	public String getJobopen_cimg() {
		return jobopen_cimg;
	}
	public void setJobopen_cimg(String jobopen_cimg) {
		this.jobopen_cimg = jobopen_cimg;
	}
	@Override
	public String toString() {
		return "JobopenVO [jobopen_id=" + jobopen_id + ", jobopen_name=" + jobopen_name + ", jobopen_pimg="
				+ jobopen_pimg + ", jobopen_company=" + jobopen_company + ", jobopen_link=" + jobopen_link
				+ ", jobopen_sdate=" + jobopen_sdate + ", jobopen_edate=" + jobopen_edate + ", jobopen_cimg="
				+ jobopen_cimg + "]";
	}
	
	
	
}