package usuario;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class LoginModel {
	private EntityManager entityManager;
	private Query query;
	private String hql;

	public LoginModel() {
		entityManager = getEntityManager();
	}

	private EntityManager getEntityManager() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("configHibernate");

		if (entityManager == null) {
			entityManager = factory.createEntityManager();
		}
		return entityManager;
	}

	@SuppressWarnings("unchecked")
	public Login validate(Login usuario) {
		hql = "FROM " + Login.class.getName() + " WHERE email = :email AND senha = :senha";
		query = entityManager.createQuery(hql);
		query.setParameter("email", usuario.getEmail());
		query.setParameter("senha", usuario.getSenha());
		List<Login> list = query.getResultList();
		if (!list.isEmpty())
			return list.get(0);
		else
			return null;

	}
}