package dao;

import org.hibernate.Session;

import java.util.List;

/**
 * Created by I322233 on 6/23/2016.
 */
public interface BaseDao {
    public Session getSession();

    public Session getNewSession();

    public void flush();

    public void clear();

    public Object load(Class c, int id);

    public Object load(Class c, Byte id);

    public List getAllList(Class c);

    public List getAllList(Class c,String[] orderFields,boolean[] isAsc);

    public List getList(Class c, String para, String val);

    public List getList(Class c, String[] para, String[] val,
                        String[] operation, String order, boolean isAsc);

    public List getList(Class c, String[] para, String[] val, String[] operation);

    public List getList(Class c,String[] para,String[] val,String[] operation,String condition,String order, boolean isAsc);

    public List getList(Class[] c, String[] para, String[] val,
                        String[] operation, String order, boolean isAsc);

    public Long getTotalCount(Class c);

    public void save(Object bean);

    public void update(Object bean);

    public void delete(Object bean);

    public void delete(Class c, String id);

    public void delete(Class c, String[] ids);

    public void delete(Class c, int id);

    public void delete(Class c, String para, String val);

    public Object getLast(Class c);
}
