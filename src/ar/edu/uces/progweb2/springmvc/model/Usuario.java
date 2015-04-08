package ar.edu.uces.progweb2.springmvc.model;

public class Usuario {
	
	private Long id;
	private String user;
	private String pass;

	public Usuario(){
		
	}
	
	public Usuario(String user, Long id){
		this.user = user;
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
