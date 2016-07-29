package dao.impl;

import dao.BaseDao;
import dao.SupplierDao;
import model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
@Repository
public class SupplierDaoImpl implements SupplierDao {
    @Autowired
    BaseDao baseDao;

    @Override
    public boolean save(Supplier supplier) {
        try{
            baseDao.save(supplier);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public List<Supplier> selectByCondition(String[] param, String[] val, String[] operation, String condition, String order, boolean isAsc) {
        return baseDao.getList(Supplier.class,param,val,operation,order,isAsc);
    }

    @Override
    public List<Supplier> getAllList(String[] orderFields, boolean[] isAsc) {
        return baseDao.getAllList(Supplier.class,orderFields,isAsc);
    }
}
