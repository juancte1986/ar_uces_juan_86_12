package ar.edu.uces.progweb2.springmvc.model;

import java.util.Date;

public class Respuesta {
	
	private Long id;
	private Usuario sender;
	private String texto;
	private int meGusta;
	private Tema tema;
	private Date fecha;
	
	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Tema getTema() {
		return tema;
	}

	public void setTema(Tema tema) {
		this.tema = tema;
	}

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public Usuario getSender() {
		return sender;
	}
	
	public void setSender(Usuario sender) {
		this.sender = sender;
	}
	
	public String getTexto() {
		return texto;
	}
	
	public void setTexto(String texto) {
		this.texto = texto;
	}
	
	public int getMeGusta() {
		return meGusta;
	}
	
	public void setMeGusta(int meGusta) {
		this.meGusta = meGusta;
	}
}
