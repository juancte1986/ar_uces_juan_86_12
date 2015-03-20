package ar.edu.uces.progweb2.springmvc.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import ar.edu.uces.progweb2.springmvc.model.Respuesta;
import ar.edu.uces.progweb2.springmvc.model.Tema;

@Transactional(readOnly = true)
@Component
public class RespuestaDao {
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Tema get(long id) {
		Session session = sessionFactory.getCurrentSession();
		Tema out = (Tema) session.get(Respuesta.class, id);
		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<Respuesta> listarRespuestas(Tema tema) {
		Session session = sessionFactory.getCurrentSession();
		org.hibernate.Query q = session.createQuery("FROM Respuesta r where r.tema.id = :tema_id"); 
		q.setParameter("tema_id", tema.getId());
		return q.list();
	}

	@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
	public void save(Respuesta respuesta) {
		Session session = sessionFactory.getCurrentSession();
		session.save(respuesta);
	}
}
