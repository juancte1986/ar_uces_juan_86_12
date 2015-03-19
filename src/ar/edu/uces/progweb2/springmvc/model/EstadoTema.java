package ar.edu.uces.progweb2.springmvc.model;

public class EstadoTema {
	
	private Long id;
	private String descripcion;
	
	public EstadoTema() {
	
	}
	
	public EstadoTema(String descripcion, Long id){
		this.descripcion = descripcion;
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
}
