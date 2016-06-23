package service.impl;

import dao.UserDao;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by I322233 on 6/23/2016.
 */
@Service
//service封装业务逻辑层代 码，我把每个service方法封装为一个事务。
// （PS:上面的SessionFactory获取当前Session是依赖于事务的，如果不在某个事务之内， 会报错：No Session found for current thread。)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void saveUsers(List<User> us) {
        for (User u : us) {
            userDao.save(u);
        }
    }

    public List<User> getAllUsernames() {
        return userDao.findAll();
    }

}
