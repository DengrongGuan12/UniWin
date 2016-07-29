package dao;

import model.Supplier;

import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
public interface SupplierDao {
    public boolean save(Supplier supplier);
    public List<Supplier> selectByCondition(String[] param, String[] val, String[] operation, String condition,String order,boolean isAsc);
    public List<Supplier> getAllList(String[] orderFields,boolean[] isAsc);
}
