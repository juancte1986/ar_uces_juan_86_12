package ar.edu.uces.progweb2.springmvc.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.*;

import ar.edu.uces.progweb2.springmvc.model.Usuario;

@Transactional(readOnly = true)
@Component
public class UsuarioDao {
	
	private SessionFactory sessionFactory;
	
	public Usuario getUsuario(Usuario usuario){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("From Usuario u where u.user = :user and u.pass = : pass");
		query.setParameter("user", usuario.getUser());
		query.setParameter("pass", usuario.getPass());
		
		return (Usuario) query.uniqueResult();
	}

}
