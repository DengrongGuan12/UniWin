package controller;

import model.StockDispatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.StockDispatchService;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/30.
 */
@Controller
@RequestMapping("/v1/stockDispatch")
public class StockDispatchController {

    @Autowired
    StockDispatchService stockDispatchService;

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page,Integer num){
        return stockDispatchService.get(page,num);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(StockDispatch stockDispatch){
        return stockDispatchService.addRecord(stockDispatch);
    }
}
