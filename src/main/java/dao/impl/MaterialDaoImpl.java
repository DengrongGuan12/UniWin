package dao.impl;

import dao.BaseDao;
import dao.MaterialDao;
import model.Material;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by dengrong on 2016/7/29.
 */
public class MaterialDaoImpl implements MaterialDao {

    @Autowired
    BaseDao baseDao;

    @Override
    public boolean save(Material material) {
        try{
            baseDao.save(material);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
