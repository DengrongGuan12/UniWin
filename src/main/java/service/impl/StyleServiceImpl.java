package service.impl;

import dao.StyleDao;
import dao.UserDao;
import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StyleService;
import util.ListUtil;
import vo.*;
import vo.Error;
import vo.Process;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
    public RestResult searchStyles(Integer page,Integer num,String operation,String key,String field) {
        if(num == null || page == null || operation == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"num,page,operation 均不能为空"));
        }
        List<Style> styles;
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
            styles = styleDao.selectByCondition(para,values,operations,"or","create_time",false);
        }else{
            String[] orderFields = new String[1];
            orderFields[0] = "create_time";
            boolean[] isAsc = new boolean[1];
            isAsc[0] = false;
            styles = styleDao.getAllList(orderFields,isAsc);
        }
        Styles stylesRes = new Styles();
        stylesRes.setCount(styles.size());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        styles = ListUtil.slice(styles,page,num);
        List<StyleItem> items = new ArrayList<>();
        for (Style style:styles
             ) {
            StyleItem item = new StyleItem();
            item.setId(style.getId());
            item.setImgUrl(style.getImgUrl());
            item.setDescription(style.getDescription());
            item.setCode(style.getCode());
            item.setCreateTime(style.getCreateTime());
            item.setCreateTimeStr(df.format(style.getCreateTime()));
            items.add(item);
        }
        stylesRes.setList(items);
        return RestResult.CreateResult(1,stylesRes);
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
