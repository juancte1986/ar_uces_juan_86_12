package ar.edu.uces.progweb2.springmvc.model;

import java.util.Date;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonIgnore;

public class Tema {
	
	private Long id;
	private Usuario owner;
	private String titulo;
	private EstadoTema estado;
	private String texto;
	private Integer puntuacion;
	private Genero genero;
	@JsonIgnore
	private Set<Respuesta> respuestas;
	private Date fecha;
	
	public Tema() {
		
	}
	
	public Tema(Long id, Usuario owner, String titulo, EstadoTema estado,
			String texto, Integer puntuacion, Genero genero,
			Set<Respuesta> respuestas, Date fecha) {
		this.id = id;
		this.owner = owner;
		this.titulo = titulo;
		this.estado = estado;
		this.texto = texto;
		this.puntuacion = puntuacion;
		this.genero = genero;
		this.respuestas = respuestas;
		this.fecha = fecha;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((estado == null) ? 0 : estado.hashCode());
		result = prime * result + ((genero == null) ? 0 : genero.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((owner == null) ? 0 : owner.hashCode());
		result = prime * result
				+ ((puntuacion == null) ? 0 : puntuacion.hashCode());
		result = prime * result
				+ ((respuestas == null) ? 0 : respuestas.hashCode());
		result = prime * result + ((texto == null) ? 0 : texto.hashCode());
		result = prime * result + ((titulo == null) ? 0 : titulo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Tema other = (Tema) obj;
		if (estado == null) {
			if (other.estado != null)
				return false;
		} else if (!estado.equals(other.estado))
			return false;
		if (genero == null) {
			if (other.genero != null)
				return false;
		} else if (!genero.equals(other.genero))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (owner == null) {
			if (other.owner != null)
				return false;
		} else if (!owner.equals(other.owner))
			return false;
		if (puntuacion == null) {
			if (other.puntuacion != null)
				return false;
		} else if (!puntuacion.equals(other.puntuacion))
			return false;
		if (respuestas == null) {
			if (other.respuestas != null)
				return false;
		} else if (!respuestas.equals(other.respuestas))
			return false;
		if (texto == null) {
			if (other.texto != null)
				return false;
		} else if (!texto.equals(other.texto))
			return false;
		if (titulo == null) {
			if (other.titulo != null)
				return false;
		} else if (!titulo.equals(other.titulo))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Tema [id=" + id + ", owner=" + owner + ", titulo=" + titulo
				+ ", estado=" + estado + ", texto=" + texto + ", puntuacion="
				+ puntuacion + ", genero=" + genero + ", respuestas="
				+ respuestas + ", fecha=" + fecha + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Usuario getOwner() {
		return owner;
	}

	public void setOwner(Usuario owner) {
		this.owner = owner;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public EstadoTema getEstado() {
		return estado;
	}

	public void setEstado(EstadoTema estado) {
		this.estado = estado;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Set<Respuesta> getRespuestas() {
		return respuestas;
	} 

	public void setRespuestas(Set<Respuesta> respuestas) {
		this.respuestas = respuestas;
	}
	
	public Integer getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(Integer puntuacion) {
		this.puntuacion = puntuacion;
	}
	
	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}
	
	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
}
