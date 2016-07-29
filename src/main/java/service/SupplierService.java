package service;

import model.Supplier;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
public interface SupplierService {
    public RestResult addSupplier(Supplier supplier);
    public RestResult getSuppliers(Integer page,Integer num,String operation,String key,String field);
}
