package personalblog.common.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Created by yuxiao on 1/17/16.
 */
public interface BaseDao<T> {
    T get(Class<T> entityClazz, Serializable id);
    Serializable save(T entity);
    void update(T entity);
    void delete(T entity);
    void delete(Class<T> entityClazz, Serializable id);
    List<T> findAll(Class<T> entityClazz);
    long findCount(Class<T> entityClazz);
    List<T> find(String hql,Object... params);

}
