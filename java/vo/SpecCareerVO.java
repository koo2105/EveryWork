package vo;

public class SpecCareerVO extends SpecAwardsVO{
	
	private int car_id;
	private int spec_id;
	private String car_name;
	private String car_speriod;
	private String car_eperiod;
	private String car_rank;
	private String car_dep;
	private String car_work;
	private String car_res;
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public int getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(int spec_id) {
		this.spec_id = spec_id;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getCar_speriod() {
		return car_speriod;
	}
	public void setCar_speriod(String car_speriod) {
		this.car_speriod = car_speriod;
	}
	public String getCar_eperiod() {
		return car_eperiod;
	}
	public void setCar_eperiod(String car_eperiod) {
		this.car_eperiod = car_eperiod;
	}
	public String getCar_rank() {
		return car_rank;
	}
	public void setCar_rank(String car_rank) {
		this.car_rank = car_rank;
	}
	public String getCar_dep() {
		return car_dep;
	}
	public void setCar_dep(String car_dep) {
		this.car_dep = car_dep;
	}
	public String getCar_work() {
		return car_work;
	}
	public void setCar_work(String car_work) {
		this.car_work = car_work;
	}
	public String getCar_res() {
		return car_res;
	}
	public void setCar_res(String car_res) {
		this.car_res = car_res;
	}
	@Override
	public String toString() {
		return "SpecCareerVO [car_id=" + car_id + ", spec_id=" + spec_id + ", car_name=" + car_name + ", car_speriod="
				+ car_speriod + ", car_eperiod=" + car_eperiod + ", car_rank=" + car_rank + ", car_dep=" + car_dep
				+ ", car_work=" + car_work + ", car_res=" + car_res + "]";
	}
	
	
	

}
