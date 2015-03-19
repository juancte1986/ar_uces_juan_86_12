package ar.edu.uces.progweb2.springmvc.model;

public class Genero {
	
	private Long id;
	private String Descripcion;
	
	public Genero() {
		
	}

	public Genero(String descripcion, Long id){
		this.Descripcion = descripcion;
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
}
