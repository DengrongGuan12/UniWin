package service.impl;

import dao.MaterialDao;
import dao.StockDispatchDao;
import dao.UserDao;
import model.DispatchType;
import model.Material;
import model.StockDispatch;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StockDispatchService;
import util.ListUtil;
import util.TimeUtil;
import vo.Error;
import vo.RestResult;
import vo.StockDispatchItem;
import vo.StockDispatchs;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
@Service
public class StockDispatchServiceImpl implements StockDispatchService {
    @Autowired
    StockDispatchDao stockDispatchDao;
    @Autowired
    UserDao userDao;
    @Autowired
    MaterialDao materialDao;

    @Override
    public RestResult get(Integer page, Integer num) {
        if(page == null || num == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page和num均不能为空"));
        }
        if(page < 1){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page从1开始"));
        }
        List<StockDispatch> stockDispatches = stockDispatchDao.getAllList();
        StockDispatchs stockDispatchs = new StockDispatchs();
        stockDispatchs.setCount(stockDispatches.size());
        stockDispatches = ListUtil.slice(stockDispatches,page,num);
        List<StockDispatchItem> stockDispatchItems = new ArrayList<>();
        for(StockDispatch stockDispatch:stockDispatches){
            StockDispatchItem stockDispatchItem = new StockDispatchItem();
            stockDispatchItem.setQuantity(stockDispatch.getQuantity());
            stockDispatchItem.setTime(TimeUtil.toString(stockDispatch.getTimestamp()));
            stockDispatchItem.setType(stockDispatch.getType());
            User user = userDao.getById(stockDispatch.getUserId());
            stockDispatchItem.setUserName(user.getName());
            Material material = materialDao.getById(stockDispatch.getMaterialId());
            stockDispatchItem.setMaterialName(material.getName());
            stockDispatchItems.add(stockDispatchItem);

        }
        stockDispatchs.setList(stockDispatchItems);
        return RestResult.CreateResult(1,stockDispatchs);
    }

    @Override
    public RestResult addRecord(StockDispatch stockDispatch) {
        if(stockDispatch.getMaterialId() == 0
                || stockDispatch.getQuantity() <=0
                || stockDispatch.getType() == DispatchType.DEFAULT
                || stockDispatch.getUserId() ==0){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"物料id,quantity，type，userId 不能为空"));
        }
        Material material = materialDao.getById(stockDispatch.getMaterialId());
        User user = userDao.getById(stockDispatch.getUserId());
        if(material == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"物料id不存在"));
        }
        if(user == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"user id 不存在"));
        }
        switch (stockDispatch.getType()){
            case IN:
                material.setInventoryAmount(material.getInventoryAmount()+stockDispatch.getQuantity());
                break;
            case OUT:
                double newInventoryAmount = material.getInventoryAmount()-stockDispatch.getQuantity();
                if(newInventoryAmount < 0){
                    return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"库存量不够"));
                }
                material.setInventoryAmount(newInventoryAmount);
                break;
        }
        if(materialDao.update(material) && stockDispatchDao.save(stockDispatch)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.DB_ERROR,"数据库写入错误"));
        }
    }
}
