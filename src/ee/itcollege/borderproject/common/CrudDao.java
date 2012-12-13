package ee.itcollege.borderproject.common;

import java.util.List;

public interface CrudDao<T> {

	List<T> getAll();

	void save(T entity) ;
	
	void save(List<T> entities);
	
	T find(Integer id);
	
	void update(T entity);
	
	void delete(Integer id);
	
}
