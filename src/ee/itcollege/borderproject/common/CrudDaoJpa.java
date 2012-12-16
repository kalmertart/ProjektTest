package ee.itcollege.borderproject.common;

import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public abstract class CrudDaoJpa<T extends BaseEntity> {
	
	protected EntityManagerFactory entityManagerFactory = Persistence
			.createEntityManagerFactory("Team11BorderDb");
	
	private Class<T> entityClass = figureOutPersistentClass();
    
	public void save(T entity) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(entity);
		entityManager.getTransaction().commit();
		entityManager.close();
	}

	public void save(List<T> entities) {
		for (T entity : entities)
			save(entity);
	}

	public T find(Integer id) {
		EntityManager em = entityManagerFactory.createEntityManager();
		try {
			return em.find(entityClass, id);
		} 
		finally {
			em.close();
		}
	}

	public void update(T entity) {
		EntityManager em = entityManagerFactory.createEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
		} 
		finally {
			em.close();
		}
	}

	public void delete(Integer id) {
		T entity = find(id);
		entity.setRemoved(new Date());
		update(entity);
	}
	
    private Class<T> figureOutPersistentClass() {
        @SuppressWarnings("unchecked")
		Class<T> clazz = (Class<T>)((ParameterizedType) (getClass().getGenericSuperclass())).getActualTypeArguments()[0];
        return clazz;
    }
    
}
