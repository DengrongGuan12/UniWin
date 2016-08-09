package dao.impl;

import dao.BaseDao;
import dao.StyleMaterialsDao;
import model.StyleMaterials;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by DengrongGuan on 2016/8/10.
 */
@Repository
public class StyleMaterialsDaoImpl implements StyleMaterialsDao {
    @Autowired
    BaseDao baseDao;

    @Override
    public boolean addData(int style, int materialId, double amount) {
        StyleMaterials styleMaterials = new StyleMaterials();
        styleMaterials.setStyleId(style);
        styleMaterials.setMaterialId(materialId);
        styleMaterials.setUseAmount(amount);
        try{
            baseDao.save(styleMaterials);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}
