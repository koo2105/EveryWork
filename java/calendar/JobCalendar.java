package calendar;

public class JobCalendar {
	
	private Integer year;
	private Integer month;
	private Integer date;
	private int startDay;
	private int endDay;
	private int start;
	private String sdateCheck;
	private String edateCheck;
	private String jobKeyword;
	private String emem_id;
	private int jobopen_id;
	private String scrapCode;
	
	
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Integer getMonth() {
		return month;
	}
	public void setMonth(Integer month) {
		this.month = month;
	}
	public Integer getDate() {
		return date;
	}
	public void setDate(Integer date) {
		this.date = date;
	}
	public int getStartDay() {
		return startDay;
	}
	public void setStartDay(int startDay) {
		this.startDay = startDay;
	}
	public int getEndDay() {
		return endDay;
	}
	public void setEndDay(int endDay) {
		this.endDay = endDay;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public String getSdateCheck() {
		return sdateCheck;
	}
	public void setSdateCheck(String sdateCheck) {
		this.sdateCheck = sdateCheck;
	}
	public String getEdateCheck() {
		return edateCheck;
	}
	public void setEdateCheck(String edateCheck) {
		this.edateCheck = edateCheck;
	}
	public String getJobKeyword() {
		return jobKeyword;
	}
	public void setJobKeyword(String jobKeyword) {
		this.jobKeyword = jobKeyword;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getScrapCode() {
		return scrapCode;
	}
	public void setScrapCode(String scrapCode) {
		this.scrapCode = scrapCode;
	}
	@Override
	public String toString() {
		return "JobCalendar [year=" + year + ", month=" + month + ", date=" + date + ", startDay=" + startDay
				+ ", endDay=" + endDay + ", start=" + start + ", sdateCheck=" + sdateCheck + ", edateCheck="
				+ edateCheck + ", jobKeyword=" + jobKeyword + ", emem_id=" + emem_id + ", jobopen_id=" + jobopen_id
				+ ", scrapCode=" + scrapCode + "]";
	}
	
}
