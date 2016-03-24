package personalblog.common.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import personalblog.common.dao.BaseDao;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/**
 * Created by yuxiao on 1/17/16.
 */
public class BaseDaoImp<T> implements BaseDao<T> {

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @SuppressWarnings("unchecked")
    public T get(Class<T> entityClazz, Serializable id) {
        return (T)getSessionFactory().getCurrentSession().get(entityClazz,id);
    }

    public Serializable save(T entity) {
        return getSessionFactory().getCurrentSession().save(entity);
    }

    public void update(T entity) {
            getSessionFactory().getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(T entity) {
        getSessionFactory().getCurrentSession().delete(entity);

    }

    public void delete(Class<T> entityClazz, Serializable id) {
        getSessionFactory().getCurrentSession().createQuery("delete " + entityClazz.getSimpleName()
                + " en where en.id = ?0").setParameter("0", id).executeUpdate();
    }

    public List<T> findAll(Class<T> entityClazz) {

        return find("select en from " + entityClazz.getSimpleName() + " en");
    }

    public long findCount(Class<T> entityClazz) {
        List<?> l = find("select count(*) from " + entityClazz.getSimpleName());
        if(l != null && l.size()==1){
            return (Long)l.get(0);
        }
        return 0;
    }

    @SuppressWarnings("unchecked")
    protected List<T> find(String hql){
        return (List<T>)getSessionFactory().getCurrentSession().createQuery(hql).list();
    }

    @SuppressWarnings("unchecked")
    public List<T> find(String hql,Object... params){
        Query query = getSessionFactory().getCurrentSession().createQuery(hql);
        int len=params.length;
        for(int i=0;i<len;i++){
            query.setParameter(i+"",params[i]);
        }
        return (List<T>)query.list();
    }
}
