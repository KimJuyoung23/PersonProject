package beans;

public class PersonDTO {
	private int id;
	private String name;
	private String birth;
	private String email;
	
	public PersonDTO(int id, String name, String birth, String email) {
		super();
		this.id = id;
		this.name = name;
		this.birth = birth;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
