package dao;

import model.User;

import java.util.List;

/**
 * Created by I322233 on 6/23/2016.
 */
public interface UserDao {
    public void save(User u);
    public List<User> findAll();
}
