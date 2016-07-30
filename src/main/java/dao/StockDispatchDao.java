package dao;

import model.StockDispatch;

import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public interface StockDispatchDao {
    public List<StockDispatch> getAllList();
    public boolean save(StockDispatch stockDispatch);
}
