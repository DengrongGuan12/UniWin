package dao.impl;

import dao.BaseDao;
import dao.StyleDao;
import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
@Repository
public class StyleDaoImpl implements StyleDao{
    @Autowired
    BaseDao baseDao;
    @Override
    public void save(Style style) {
        baseDao.save(style);
    }
}
