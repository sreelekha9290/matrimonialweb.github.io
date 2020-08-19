package pojo;

public class User {
	private int id;
	private String profile;
	private String name;
	private String gender;

	private int age;
	private String religion;
	private String language;
	private String country;
	private String email;

	private String mobile;

	private String password;

	private String question;

	private String answer;
	private String sign;

	/**
	 * 
	 */

	public User() {

		super();

	}

	public User(int id, String profile, String name, String gender, int age,
			String religion, String language, String country, String email,
			String mobile, String password, String question, String answer,String sign) {
		super();
		this.id = id;
		this.profile = profile;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.religion = religion;
		this.language = language;
		this.country = country;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.question = question;
		this.answer = answer;
		this.sign=sign;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", profile=" + profile + ", name=" + name
				+ ", gender=" + gender + ", age=" + age + ", religion="
				+ religion + ", language=" + language + ", country=" + country
				+ ", email=" + email + ", mobile=" + mobile + ", password="
				+ password + ", question=" + question + ", answer=" + answer
				+ ",sign="+sign+"]";
	}

}