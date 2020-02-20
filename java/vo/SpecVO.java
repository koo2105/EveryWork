package vo;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class SpecVO{

	private Integer spec_id;
	private String emem_id;
	private String spec_pt;
	private MultipartFile spec_ptf;
	private String spec_name;
	private String spec_birthd;	
	private String spec_gender;
	private String spec_num;
	private String spec_phoneNum;
	private String spec_email;
	private String spec_sns;
	private String spec_add;
	private String spec_hsperiod ;
	private String spec_heperiod ;
	private String spec_hname;
	private String spec_hkind;
	private String spec_vet;
	private String spec_obs;
	private String spec_obscontent;
	private String spec_mil;
	private String spec_milsperiod;
	private String spec_mileperiod;
	private String spec_mildis;
	private String spec_rank;
	private ArrayList<String> aw_name;
	private ArrayList<String> aw_story;
	private ArrayList<String> aw_pub;
	private ArrayList<String> aw_date;
	private ArrayList<String> car_name;
	private ArrayList<String> car_speriod;
	private ArrayList<String> car_eperiod;
	private ArrayList<String> car_rank;
	private ArrayList<String> car_dep;
	private ArrayList<String> car_work;
	private ArrayList<String> car_res;
	private ArrayList<String> edu_name;
	private ArrayList<String> edu_pub;
	private ArrayList<String> edu_sdate;
	private ArrayList<String> edu_edate;
	private ArrayList<String> edu_story;
	private ArrayList<String> exp_name;
	private ArrayList<String> exp_pub;
	private ArrayList<String> exp_sdate;
	private ArrayList<String> exp_edate;
	private ArrayList<String> exp_story;
	private ArrayList<String> gra_speriod;
	private ArrayList<String> gra_eperiod;
	private ArrayList<String> gra_name;
	private ArrayList<String> gra_kind;
	private ArrayList<Double> gra_grade;
	private ArrayList<String> gra_major;
	private ArrayList<String> gra_smajor1;
	private ArrayList<String> gra_smajor2;
	private ArrayList<String> lan_sort;
	private ArrayList<String> lan_name;
	private ArrayList<String> lan_grade;
	private ArrayList<String> lan_date;
	private ArrayList<String> lic_name;
	private ArrayList<String> lic_pub;
	private ArrayList<String> lic_grade;
	private ArrayList<String> ov_country;
	private ArrayList<String> ov_pub;
	private ArrayList<String> ov_purpose;
	private ArrayList<String> uni_speriod;
	private ArrayList<String> uni_eperiod;
	private ArrayList<String> uni_name;
	private ArrayList<String> uni_kind;
	private ArrayList<Double> uni_grade;
	private ArrayList<String> uni_major;
	private ArrayList<String> uni_smajor1;
	private ArrayList<String> uni_smajor2;
		
	private ArrayList<SpecAwardsVO> alist ;  
	private ArrayList<SpecCareerVO> clist ;
	private ArrayList<SpecEducationVO> edlist ;
	private ArrayList<SpecExperienceVO> exlist ;
	private ArrayList<SpecGraduateSchVO> mlist ;
	private ArrayList<SpecLanguageVO> lalist ;
	private ArrayList<SpecLicenseVO> lilist ;
	private ArrayList<SpecOverseasVO> olist ;
	private ArrayList<SpecUniversityVO> ulist ;
	public Integer getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(Integer spec_id) {
		this.spec_id = spec_id;
	}
	public String getEmem_id() {
		return emem_id;
	}
	public void setEmem_id(String emem_id) {
		this.emem_id = emem_id;
	}
	public String getSpec_pt() {
		return spec_pt;
	}
	public void setSpec_pt(String spec_pt) {
		this.spec_pt = spec_pt;
	}
	public MultipartFile getSpec_ptf() {
		return spec_ptf;
	}
	public void setSpec_ptf(MultipartFile spec_ptf) {
		this.spec_ptf = spec_ptf;
	}
	public String getSpec_name() {
		return spec_name;
	}
	public void setSpec_name(String spec_name) {
		this.spec_name = spec_name;
	}
	public String getSpec_birthd() {
		return spec_birthd;
	}
	public void setSpec_birthd(String spec_birthd) {
		this.spec_birthd = spec_birthd;
	}
	public String getSpec_gender() {
		return spec_gender;
	}
	public void setSpec_gender(String spec_gender) {
		this.spec_gender = spec_gender;
	}
	public String getSpec_num() {
		return spec_num;
	}
	public void setSpec_num(String spec_num) {
		this.spec_num = spec_num;
	}
	public String getSpec_phoneNum() {
		return spec_phoneNum;
	}
	public void setSpec_phoneNum(String spec_phoneNum) {
		this.spec_phoneNum = spec_phoneNum;
	}
	public String getSpec_email() {
		return spec_email;
	}
	public void setSpec_email(String spec_email) {
		this.spec_email = spec_email;
	}
	public String getSpec_sns() {
		return spec_sns;
	}
	public void setSpec_sns(String spec_sns) {
		this.spec_sns = spec_sns;
	}
	public String getSpec_add() {
		return spec_add;
	}
	public void setSpec_add(String spec_add) {
		this.spec_add = spec_add;
	}
	public String getSpec_hsperiod() {
		return spec_hsperiod;
	}
	public void setSpec_hsperiod(String spec_hsperiod) {
		this.spec_hsperiod = spec_hsperiod;
	}
	public String getSpec_heperiod() {
		return spec_heperiod;
	}
	public void setSpec_heperiod(String spec_heperiod) {
		this.spec_heperiod = spec_heperiod;
	}
	public String getSpec_hname() {
		return spec_hname;
	}
	public void setSpec_hname(String spec_hname) {
		this.spec_hname = spec_hname;
	}
	public String getSpec_hkind() {
		return spec_hkind;
	}
	public void setSpec_hkind(String spec_hkind) {
		this.spec_hkind = spec_hkind;
	}
	public String getSpec_vet() {
		return spec_vet;
	}
	public void setSpec_vet(String spec_vet) {
		this.spec_vet = spec_vet;
	}
	public String getSpec_obs() {
		return spec_obs;
	}
	public void setSpec_obs(String spec_obs) {
		this.spec_obs = spec_obs;
	}
	public String getSpec_obscontent() {
		return spec_obscontent;
	}
	public void setSpec_obscontent(String spec_obscontent) {
		this.spec_obscontent = spec_obscontent;
	}
	public String getSpec_mil() {
		return spec_mil;
	}
	public void setSpec_mil(String spec_mil) {
		this.spec_mil = spec_mil;
	}
	public String getSpec_milsperiod() {
		return spec_milsperiod;
	}
	public void setSpec_milsperiod(String spec_milsperiod) {
		this.spec_milsperiod = spec_milsperiod;
	}
	public String getSpec_mileperiod() {
		return spec_mileperiod;
	}
	public void setSpec_mileperiod(String spec_mileperiod) {
		this.spec_mileperiod = spec_mileperiod;
	}
	public String getSpec_mildis() {
		return spec_mildis;
	}
	public void setSpec_mildis(String spec_mildis) {
		this.spec_mildis = spec_mildis;
	}
	public String getSpec_rank() {
		return spec_rank;
	}
	public void setSpec_rank(String spec_rank) {
		this.spec_rank = spec_rank;
	}
	public ArrayList<String> getAw_name() {
		return aw_name;
	}
	public void setAw_name(ArrayList<String> aw_name) {
		this.aw_name = aw_name;
	}
	public ArrayList<String> getAw_story() {
		return aw_story;
	}
	public void setAw_story(ArrayList<String> aw_story) {
		this.aw_story = aw_story;
	}
	public ArrayList<String> getAw_pub() {
		return aw_pub;
	}
	public void setAw_pub(ArrayList<String> aw_pub) {
		this.aw_pub = aw_pub;
	}
	public ArrayList<String> getAw_date() {
		return aw_date;
	}
	public void setAw_date(ArrayList<String> aw_date) {
		this.aw_date = aw_date;
	}
	public ArrayList<String> getCar_name() {
		return car_name;
	}
	public void setCar_name(ArrayList<String> car_name) {
		this.car_name = car_name;
	}
	public ArrayList<String> getCar_speriod() {
		return car_speriod;
	}
	public void setCar_speriod(ArrayList<String> car_speriod) {
		this.car_speriod = car_speriod;
	}
	public ArrayList<String> getCar_eperiod() {
		return car_eperiod;
	}
	public void setCar_eperiod(ArrayList<String> car_eperiod) {
		this.car_eperiod = car_eperiod;
	}
	public ArrayList<String> getCar_rank() {
		return car_rank;
	}
	public void setCar_rank(ArrayList<String> car_rank) {
		this.car_rank = car_rank;
	}
	public ArrayList<String> getCar_dep() {
		return car_dep;
	}
	public void setCar_dep(ArrayList<String> car_dep) {
		this.car_dep = car_dep;
	}
	public ArrayList<String> getCar_work() {
		return car_work;
	}
	public void setCar_work(ArrayList<String> car_work) {
		this.car_work = car_work;
	}
	public ArrayList<String> getCar_res() {
		return car_res;
	}
	public void setCar_res(ArrayList<String> car_res) {
		this.car_res = car_res;
	}
	public ArrayList<String> getEdu_name() {
		return edu_name;
	}
	public void setEdu_name(ArrayList<String> edu_name) {
		this.edu_name = edu_name;
	}
	public ArrayList<String> getEdu_pub() {
		return edu_pub;
	}
	public void setEdu_pub(ArrayList<String> edu_pub) {
		this.edu_pub = edu_pub;
	}
	public ArrayList<String> getEdu_sdate() {
		return edu_sdate;
	}
	public void setEdu_sdate(ArrayList<String> edu_sdate) {
		this.edu_sdate = edu_sdate;
	}
	public ArrayList<String> getEdu_edate() {
		return edu_edate;
	}
	public void setEdu_edate(ArrayList<String> edu_edate) {
		this.edu_edate = edu_edate;
	}
	public ArrayList<String> getEdu_story() {
		return edu_story;
	}
	public void setEdu_story(ArrayList<String> edu_story) {
		this.edu_story = edu_story;
	}
	public ArrayList<String> getExp_name() {
		return exp_name;
	}
	public void setExp_name(ArrayList<String> exp_name) {
		this.exp_name = exp_name;
	}
	public ArrayList<String> getExp_pub() {
		return exp_pub;
	}
	public void setExp_pub(ArrayList<String> exp_pub) {
		this.exp_pub = exp_pub;
	}
	public ArrayList<String> getExp_sdate() {
		return exp_sdate;
	}
	public void setExp_sdate(ArrayList<String> exp_sdate) {
		this.exp_sdate = exp_sdate;
	}
	public ArrayList<String> getExp_edate() {
		return exp_edate;
	}
	public void setExp_edate(ArrayList<String> exp_edate) {
		this.exp_edate = exp_edate;
	}
	public ArrayList<String> getExp_story() {
		return exp_story;
	}
	public void setExp_story(ArrayList<String> exp_story) {
		this.exp_story = exp_story;
	}
	public ArrayList<String> getGra_speriod() {
		return gra_speriod;
	}
	public void setGra_speriod(ArrayList<String> gra_speriod) {
		this.gra_speriod = gra_speriod;
	}
	public ArrayList<String> getGra_eperiod() {
		return gra_eperiod;
	}
	public void setGra_eperiod(ArrayList<String> gra_eperiod) {
		this.gra_eperiod = gra_eperiod;
	}
	public ArrayList<String> getGra_name() {
		return gra_name;
	}
	public void setGra_name(ArrayList<String> gra_name) {
		this.gra_name = gra_name;
	}
	public ArrayList<String> getGra_kind() {
		return gra_kind;
	}
	public void setGra_kind(ArrayList<String> gra_kind) {
		this.gra_kind = gra_kind;
	}
	public ArrayList<Double> getGra_grade() {
		return gra_grade;
	}
	public void setGra_grade(ArrayList<Double> gra_grade) {
		this.gra_grade = gra_grade;
	}
	public ArrayList<String> getGra_major() {
		return gra_major;
	}
	public void setGra_major(ArrayList<String> gra_major) {
		this.gra_major = gra_major;
	}
	public ArrayList<String> getGra_smajor1() {
		return gra_smajor1;
	}
	public void setGra_smajor1(ArrayList<String> gra_smajor1) {
		this.gra_smajor1 = gra_smajor1;
	}
	public ArrayList<String> getGra_smajor2() {
		return gra_smajor2;
	}
	public void setGra_smajor2(ArrayList<String> gra_smajor2) {
		this.gra_smajor2 = gra_smajor2;
	}
	public ArrayList<String> getLan_sort() {
		return lan_sort;
	}
	public void setLan_sort(ArrayList<String> lan_sort) {
		this.lan_sort = lan_sort;
	}
	public ArrayList<String> getLan_name() {
		return lan_name;
	}
	public void setLan_name(ArrayList<String> lan_name) {
		this.lan_name = lan_name;
	}
	public ArrayList<String> getLan_grade() {
		return lan_grade;
	}
	public void setLan_grade(ArrayList<String> lan_grade) {
		this.lan_grade = lan_grade;
	}
	public ArrayList<String> getLan_date() {
		return lan_date;
	}
	public void setLan_date(ArrayList<String> lan_date) {
		this.lan_date = lan_date;
	}
	public ArrayList<String> getLic_name() {
		return lic_name;
	}
	public void setLic_name(ArrayList<String> lic_name) {
		this.lic_name = lic_name;
	}
	public ArrayList<String> getLic_pub() {
		return lic_pub;
	}
	public void setLic_pub(ArrayList<String> lic_pub) {
		this.lic_pub = lic_pub;
	}
	public ArrayList<String> getLic_grade() {
		return lic_grade;
	}
	public void setLic_grade(ArrayList<String> lic_grade) {
		this.lic_grade = lic_grade;
	}
	public ArrayList<String> getOv_country() {
		return ov_country;
	}
	public void setOv_country(ArrayList<String> ov_country) {
		this.ov_country = ov_country;
	}
	public ArrayList<String> getOv_pub() {
		return ov_pub;
	}
	public void setOv_pub(ArrayList<String> ov_pub) {
		this.ov_pub = ov_pub;
	}
	public ArrayList<String> getOv_purpose() {
		return ov_purpose;
	}
	public void setOv_purpose(ArrayList<String> ov_purpose) {
		this.ov_purpose = ov_purpose;
	}
	public ArrayList<String> getUni_speriod() {
		return uni_speriod;
	}
	public void setUni_speriod(ArrayList<String> uni_speriod) {
		this.uni_speriod = uni_speriod;
	}
	public ArrayList<String> getUni_eperiod() {
		return uni_eperiod;
	}
	public void setUni_eperiod(ArrayList<String> uni_eperiod) {
		this.uni_eperiod = uni_eperiod;
	}
	public ArrayList<String> getUni_name() {
		return uni_name;
	}
	public void setUni_name(ArrayList<String> uni_name) {
		this.uni_name = uni_name;
	}
	public ArrayList<String> getUni_kind() {
		return uni_kind;
	}
	public void setUni_kind(ArrayList<String> uni_kind) {
		this.uni_kind = uni_kind;
	}
	public ArrayList<Double> getUni_grade() {
		return uni_grade;
	}
	public void setUni_grade(ArrayList<Double> uni_grade) {
		this.uni_grade = uni_grade;
	}
	public ArrayList<String> getUni_major() {
		return uni_major;
	}
	public void setUni_major(ArrayList<String> uni_major) {
		this.uni_major = uni_major;
	}
	public ArrayList<String> getUni_smajor1() {
		return uni_smajor1;
	}
	public void setUni_smajor1(ArrayList<String> uni_smajor1) {
		this.uni_smajor1 = uni_smajor1;
	}
	public ArrayList<String> getUni_smajor2() {
		return uni_smajor2;
	}
	public void setUni_smajor2(ArrayList<String> uni_smajor2) {
		this.uni_smajor2 = uni_smajor2;
	}
	public ArrayList<SpecAwardsVO> getAlist() {
		return alist;
	}
	public void setAlist(ArrayList<SpecAwardsVO> alist) {
		this.alist = alist;
	}
	public ArrayList<SpecCareerVO> getClist() {
		return clist;
	}
	public void setClist(ArrayList<SpecCareerVO> clist) {
		this.clist = clist;
	}
	public ArrayList<SpecEducationVO> getEdlist() {
		return edlist;
	}
	public void setEdlist(ArrayList<SpecEducationVO> edlist) {
		this.edlist = edlist;
	}
	public ArrayList<SpecExperienceVO> getExlist() {
		return exlist;
	}
	public void setExlist(ArrayList<SpecExperienceVO> exlist) {
		this.exlist = exlist;
	}
	public ArrayList<SpecGraduateSchVO> getMlist() {
		return mlist;
	}
	public void setMlist(ArrayList<SpecGraduateSchVO> mlist) {
		this.mlist = mlist;
	}
	public ArrayList<SpecLanguageVO> getLalist() {
		return lalist;
	}
	public void setLalist(ArrayList<SpecLanguageVO> lalist) {
		this.lalist = lalist;
	}
	public ArrayList<SpecLicenseVO> getLilist() {
		return lilist;
	}
	public void setLilist(ArrayList<SpecLicenseVO> lilist) {
		this.lilist = lilist;
	}
	public ArrayList<SpecOverseasVO> getOlist() {
		return olist;
	}
	public void setOlist(ArrayList<SpecOverseasVO> olist) {
		this.olist = olist;
	}
	public ArrayList<SpecUniversityVO> getUlist() {
		return ulist;
	}
	public void setUlist(ArrayList<SpecUniversityVO> ulist) {
		this.ulist = ulist;
	}
	@Override
	public String toString() {
		return "SpecVO [spec_id=" + spec_id + ", emem_id=" + emem_id + ", spec_pt=" + spec_pt + ", spec_ptf=" + spec_ptf
				+ ", spec_name=" + spec_name + ", spec_birthd=" + spec_birthd + ", spec_gender=" + spec_gender
				+ ", spec_num=" + spec_num + ", spec_phoneNum=" + spec_phoneNum + ", spec_email=" + spec_email
				+ ", spec_sns=" + spec_sns + ", spec_add=" + spec_add + ", spec_hsperiod=" + spec_hsperiod
				+ ", spec_heperiod=" + spec_heperiod + ", spec_hname=" + spec_hname + ", spec_hkind=" + spec_hkind
				+ ", spec_vet=" + spec_vet + ", spec_obs=" + spec_obs + ", spec_obscontent=" + spec_obscontent
				+ ", spec_mil=" + spec_mil + ", spec_milsperiod=" + spec_milsperiod + ", spec_mileperiod="
				+ spec_mileperiod + ", spec_mildis=" + spec_mildis + ", spec_rank=" + spec_rank + ", aw_name=" + aw_name
				+ ", aw_story=" + aw_story + ", aw_pub=" + aw_pub + ", aw_date=" + aw_date + ", car_name=" + car_name
				+ ", car_speriod=" + car_speriod + ", car_eperiod=" + car_eperiod + ", car_rank=" + car_rank
				+ ", car_dep=" + car_dep + ", car_work=" + car_work + ", car_res=" + car_res + ", edu_name=" + edu_name
				+ ", edu_pub=" + edu_pub + ", edu_sdate=" + edu_sdate + ", edu_edate=" + edu_edate + ", edu_story="
				+ edu_story + ", exp_name=" + exp_name + ", exp_pub=" + exp_pub + ", exp_sdate=" + exp_sdate
				+ ", exp_edate=" + exp_edate + ", exp_story=" + exp_story + ", gra_speriod=" + gra_speriod
				+ ", gra_eperiod=" + gra_eperiod + ", gra_name=" + gra_name + ", gra_kind=" + gra_kind + ", gra_grade="
				+ gra_grade + ", gra_major=" + gra_major + ", gra_smajor1=" + gra_smajor1 + ", gra_smajor2="
				+ gra_smajor2 + ", lan_sort=" + lan_sort + ", lan_name=" + lan_name + ", lan_grade=" + lan_grade
				+ ", lan_date=" + lan_date + ", lic_name=" + lic_name + ", lic_pub=" + lic_pub + ", lic_grade="
				+ lic_grade + ", ov_country=" + ov_country + ", ov_pub=" + ov_pub + ", ov_purpose=" + ov_purpose
				+ ", uni_speriod=" + uni_speriod + ", uni_eperiod=" + uni_eperiod + ", uni_name=" + uni_name
				+ ", uni_kind=" + uni_kind + ", uni_grade=" + uni_grade + ", uni_major=" + uni_major + ", uni_smajor1="
				+ uni_smajor1 + ", uni_smajor2=" + uni_smajor2 + ", alist=" + alist + ", clist=" + clist + ", edlist="
				+ edlist + ", exlist=" + exlist + ", mlist=" + mlist + ", lalist=" + lalist + ", lilist=" + lilist
				+ ", olist=" + olist + ", ulist=" + ulist + "]";
	}

	
	
	
	
}//class
