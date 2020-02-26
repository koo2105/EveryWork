package vo;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class JobopenVO {
	private int jobopen_id;
	private String admin_id;
	private String jobopen_pimg;
	private MultipartFile jobopen_pimgf;
	private String jobopen_company;
	private String jobopen_link;
	private String jobopen_sdate;
	private String jobopen_edate;
	private String jobopen_cimg;
	private MultipartFile jobopen_cimgf;
	private String jobopen_count;
	private long endDday;
	private String calendarDate;
	private ArrayList<String> jc_div;
	private ArrayList<String> jc_part;
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getJobopen_pimg() {
		return jobopen_pimg;
	}
	public void setJobopen_pimg(String jobopen_pimg) {
		this.jobopen_pimg = jobopen_pimg;
	}
	public MultipartFile getJobopen_pimgf() {
		return jobopen_pimgf;
	}
	public void setJobopen_pimgf(MultipartFile jobopen_pimgf) {
		this.jobopen_pimgf = jobopen_pimgf;
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
	public MultipartFile getJobopen_cimgf() {
		return jobopen_cimgf;
	}
	public void setJobopen_cimgf(MultipartFile jobopen_cimgf) {
		this.jobopen_cimgf = jobopen_cimgf;
	}
	public String getJobopen_count() {
		return jobopen_count;
	}
	public void setJobopen_count(String jobopen_count) {
		this.jobopen_count = jobopen_count;
	}
	public long getEndDday() {
		return endDday;
	}
	public void setEndDday(long endDday) {
		this.endDday = endDday;
	}
	public String getCalendarDate() {
		return calendarDate;
	}
	public void setCalendarDate(String calendarDate) {
		this.calendarDate = calendarDate;
	}
	public ArrayList<String> getJc_div() {
		return jc_div;
	}
	public void setJc_div(ArrayList<String> jc_div) {
		this.jc_div = jc_div;
	}
	public ArrayList<String> getJc_part() {
		return jc_part;
	}
	public void setJc_part(ArrayList<String> jc_part) {
		this.jc_part = jc_part;
	}
	@Override
	public String toString() {
		return "JobopenVO [jobopen_id=" + jobopen_id + ", admin_id=" + admin_id + ", jobopen_pimg=" + jobopen_pimg
				+ ", jobopen_pimgf=" + jobopen_pimgf + ", jobopen_company=" + jobopen_company + ", jobopen_link="
				+ jobopen_link + ", jobopen_sdate=" + jobopen_sdate + ", jobopen_edate=" + jobopen_edate
				+ ", jobopen_cimg=" + jobopen_cimg + ", jobopen_cimgf=" + jobopen_cimgf + ", jobopen_count="
				+ jobopen_count + ", endDday=" + endDday + ", calendarDate=" + calendarDate + ", jc_div=" + jc_div
				+ ", jc_part=" + jc_part + "]";
	}
	
	
	

}
