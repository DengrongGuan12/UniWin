package dao.impl;

import dao.BaseDao;
import dao.UserDao;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by I322233 on 6/23/2016.
 */
@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private BaseDao baseDao;

    public void save(User u) {
        baseDao.save(u);
    }

    public List<User> findAll() {
        return baseDao.getAllList(User.class);
    }
}
