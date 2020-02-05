package vo;

public class JobqaVO {
	
	private int jobqa_id;
	private int jobopen_id;
	private String jobqa_q;
	
	public int getJobqa_id() {
		return jobqa_id;
	}
	public void setJobqa_id(int jobqa_id) {
		this.jobqa_id = jobqa_id;
	}
	public int getJobopen_id() {
		return jobopen_id;
	}
	public void setJobopen_id(int jobopen_id) {
		this.jobopen_id = jobopen_id;
	}
	public String getJobqa_q() {
		return jobqa_q;
	}
	public void setJobqa_q(String jobqa_q) {
		this.jobqa_q = jobqa_q;
	}
	@Override
	public String toString() {
		return "JobqaVO [jobqa_id=" + jobqa_id + ", jobopen_id=" + jobopen_id + ", jobqa_q=" + jobqa_q + "]";
	}

	
}
