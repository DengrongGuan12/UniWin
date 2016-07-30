package service.impl;

import dao.SupplierDao;
import model.Style;
import model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SupplierService;
import util.ListUtil;
import vo.*;
import vo.Error;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
@Service
public class SupplierServiceImpl implements SupplierService {
    @Autowired
    SupplierDao supplierDao;

    @Override
    public RestResult addSupplier(Supplier supplier) {
        if(supplier.getName() == null || supplier.getNumber() == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"供应商名字和供应商编号不能为空"));
        }
        if(supplierDao.save(supplier)){
            return RestResult.CreateResult(1,null);
        }else {
            return RestResult.CreateResult(0,new Error(Error.DB_ERROR,"数据写入错误"));
        }
    }

    @Override
    public RestResult getSuppliers(Integer page, Integer num, String operation, String key, String field) {
        if(num == null || page == null || operation == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"num,page,operation 均不能为空"));
        }
        if(page < 1){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page从1开始"));
        }
        List<Supplier> suppliers;
        if(operation.equals("SEARCH")){
            //搜索
            if(key == null || field == null){
                return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"key field 不能为空"));
            }
            String[] para = field.split("\\|");
            String[] values = new String[para.length];
            String[] operations = new String[para.length];
            for(int i = 0;i<para.length;i++){
                values[i] = "'%"+key+"%'";
                operations[i] = "like";
            }
            suppliers = supplierDao.selectByCondition(para,values,operations,"or","id",true);
        }else{
            String[] orderFields = new String[1];
            orderFields[0] = "id";
            boolean[] isAsc = new boolean[1];
            isAsc[0] = true;
            suppliers = supplierDao.getAllList(orderFields,isAsc);
        }
        Suppliers suppliers1 = new Suppliers();
        suppliers1.setCount(suppliers.size());
        suppliers = ListUtil.slice(suppliers,page,num);
        suppliers1.setSupplierList(suppliers);
        return RestResult.CreateResult(1,suppliers1);
    }


}
