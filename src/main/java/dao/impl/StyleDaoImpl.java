package dao.impl;

import dao.BaseDao;
import dao.StyleDao;
import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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

    @Override
    public List<Style> selectByCondition(String[] param, String[] val, String[] operation, String condition,String order,boolean isAsc) {
        return baseDao.getList(Style.class,param,val,operation,condition,order,isAsc);
    }

    @Override
    public List<Style> getAllList(String[] orderFields, boolean[] isAsc) {
        return baseDao.getAllList(Style.class,orderFields,isAsc);
    }

    @Override
    public void update(Style style) {
        Style oldStyle = (Style) baseDao.load(style.getClass(),style.getId());
        if(style.getImgUrl() != null){
            oldStyle.setImgUrl(style.getImgUrl());
        }
        if(style.getDescription() != null){
            oldStyle.setDescription(style.getDescription());
        }
        baseDao.update(oldStyle);
    }

}
