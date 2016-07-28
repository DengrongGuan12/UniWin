package service.impl;

import dao.StyleDao;
import dao.UserDao;
import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StyleService;
import vo.*;
import vo.Error;
import vo.Process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
@Service
public class StyleServiceImpl implements StyleService {
    @Autowired
    StyleDao styleDao;
    @Override
    public RestResult addStyle(Style style) {
        if(style.getCode() == null || style.getImgUrl() == null ){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款式编号和图片地址均不能为空"));
        }
        styleDao.save(style);
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult searchStyles(Integer num) {
        if(num == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"每页数量不能为空"));
        }
        List<StyleItem> list = new ArrayList<>();
        Styles styles = new Styles();
        for(int i = 0;i<num;i++){
            StyleItem styleItem = new StyleItem();
            styleItem.setId(i);
            styleItem.setPass(i%2==0?true:false);
            styleItem.setCode("S"+i);
            styleItem.setDescription("sdfsdfsdf");
            styleItem.setImgUrl("http://photo.enterdesk.com/2011-2-16/enterdesk.com-1AA0C93EFFA51E6D7EFE1AE7B671951F.jpg");
            list.add(styleItem);
        }
        styles.setCount(100);
        styles.setList(list);
        return RestResult.CreateResult(1,styles);
    }

    @Override
    public RestResult updateStyle(Style style) {
        if(style.getCode() == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款号不能为空"));
        }
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult deleteStyle(String code) {
        if(code == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款号不能为空"));
        }
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult getDetail(String code) {
        if(code == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款号不能为空"));
        }
        StyleDetail styleDetail = new StyleDetail();
        styleDetail.setCode(code);
        styleDetail.setCreateTime(new Timestamp(new Date().getTime()));
        styleDetail.setDescription("sdfsdfsdf");
        styleDetail.setId(1);
        styleDetail.setImgUrl("http://photo.enterdesk.com/2011-2-16/enterdesk.com-1AA0C93EFFA51E6D7EFE1AE7B671951F.jpg");
        styleDetail.setPass(true);
        List<Process> processes = new ArrayList<>();
        for(int i = 0;i<10;i++){
            Process process = new Process();
            process.setId(i);
            process.setState("正在询价中...");
            processes.add(process);
        }
        styleDetail.setOrderList(processes);
        return RestResult.CreateResult(1,styleDetail);
    }
}
