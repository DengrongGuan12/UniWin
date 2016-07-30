package dao.impl;

import dao.BaseDao;
import dao.MaterialDao;
import model.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dengrong on 2016/7/29.
 */
@Repository
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

    @Override
    public List<Material> getAllList() {
        return baseDao.getAllList(Material.class);
    }

    @Override
    public Material getById(int id) {
        return (Material) baseDao.load(Material.class,id);
    }

    @Override
    public boolean update(Material material) {
        try{
           baseDao.update(material);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}
