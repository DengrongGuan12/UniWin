package dao.impl;

import dao.BaseDao;
import dao.StockDispatchDao;
import model.StockDispatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
@Repository
public class StockDispatchDaoImpl implements StockDispatchDao {
    @Autowired
    BaseDao baseDao;

    @Override
    public List<StockDispatch> getAllList() {
        String[] fields = new String[1];
        boolean[] isAsc = new boolean[1];
        fields[0] = "id";
        isAsc[0] = false;
        return baseDao.getAllList(StockDispatch.class,fields,isAsc);
    }

    @Override
    public boolean save(StockDispatch stockDispatch) {
        try {
            baseDao.save(stockDispatch);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}
