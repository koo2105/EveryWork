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
	@Override
	public String toString() {
		return "JobCalendar [year=" + year + ", month=" + month + ", date=" + date + ", startDay=" + startDay
				+ ", endDay=" + endDay + ", start=" + start + ", sdateCheck=" + sdateCheck + ", edateCheck="
				+ edateCheck + "]";
	}

	
}
