package vitrini;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ProdutoModelFiltro {
	protected EntityManager entityManager;
	private Query query;
	private String hql;

	public ProdutoModelFiltro() {
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
	public List<Produto> select(String search) {
		if (search.isEmpty()) {
			hql = "FROM " + Produto.class.getName();
			query = entityManager.createQuery(hql);
		} else {
			hql = "FROM " + Produto.class.getName() +

					" WHERE nome LIKE :search";

			query = entityManager.createQuery(hql);
			query.setParameter("search", search + "%");
		}
		return query.getResultList();
	}
}
