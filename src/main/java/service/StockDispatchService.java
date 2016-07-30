package service;

import model.StockDispatch;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/30.
 */
public interface StockDispatchService {
    public RestResult get(Integer page,Integer num);
    public RestResult addRecord(StockDispatch stockDispatch);
}
