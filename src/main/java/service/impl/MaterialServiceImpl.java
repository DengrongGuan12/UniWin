package service.impl;

import dao.MaterialDao;
import dao.SupplierDao;
import model.Material;
import model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MaterialService;
import util.ListUtil;
import vo.Error;
import vo.MaterialItem;
import vo.Materials;
import vo.RestResult;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/29.
 */
@Service
public class MaterialServiceImpl implements MaterialService {
    @Autowired
    MaterialDao materialDao;
    @Autowired
    SupplierDao supplierDao;

    @Override
    public RestResult addMaterial(Material material) {
        if(material.getName() == null
                || material.getColorExplain() == null
                || material.getComponent() == null
                || material.getUnitprice() == 0
                || material.getMeasurement() == null
                || material.getSupplierId() == 0
                || material.getStoragePos() == null
                ){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"名称、颜色说明、成分、单价、单位、供应商、仓储位置均必填"));
        }
        if(supplierDao.getById(material.getSupplierId()) == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"供应商id不存在"));
        }
        if(materialDao.save(material)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.DB_ERROR,"数据库写入错误"));
        }
    }

    @Override
    public RestResult getMaterials(Integer page, Integer num) {
        if(null == page || null == num){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page和num不能为空"));
        }
        if(page < 1){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page 从1开始"));
        }
        List<Material> materials = materialDao.getAllList();
        Materials materials1 = new Materials();
        materials1.setCount(materials.size());
        materials = ListUtil.slice(materials,page,num);
        List<MaterialItem> items = new ArrayList<>();
        for (Material material:materials
             ) {
            MaterialItem item = new MaterialItem();
            item.setId(material.getId());
            item.setComponent(material.getComponent());
            item.setInventoryAmount(material.getInventoryAmount());
            item.setName(material.getName());
            item.setNumber(material.getNumber());
            item.setType(material.getType());
            item.setSupplierId(material.getSupplierId());
            Supplier supplier = supplierDao.getById(material.getSupplierId());
            item.setSupplier(supplier.getName());
            items.add(item);
        }
        materials1.setMaterialItems(items);
        return RestResult.CreateResult(1,materials1);
    }

    @Override
    public RestResult modifyMaterial(Material material) {
        if(material.getId() == 0){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id不能为空"));
        }
        Material m = materialDao.getById(material.getId());
        if(m == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"物料不存在"));
        }
        if(material.getName() != null){
            m.setName(material.getName());
        }
        if(material.getNumber() != null){
            m.setNumber(material.getNumber());
        }
        if(material.getStoragePos() != null){
            m.setStoragePos(material.getStoragePos());
        }
        if(material.getSupplierId() != 0){
            if(supplierDao.getById(material.getSupplierId()) == null){
                return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"供应商id不存在"));
            }
            m.setSupplierId(material.getSupplierId());
        }
        if(material.getComponent() != null){
            m.setComponent(material.getComponent());
        }
        if(material.getUnitprice() != 0){
            m.setUnitprice(material.getUnitprice());
        }
        if(material.getColorExplain() != null){
            m.setColorExplain(material.getColorExplain());
        }
        if(materialDao.update(m)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"数据库写入错误"));
        }
    }
}
