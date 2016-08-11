package service.impl;

import dao.StyleDao;
import dao.StyleMaterialsDao;
import dao.UserDao;
import model.Style;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StyleService;
import util.ListUtil;
import util.TimeUtil;
import vo.*;
import vo.Error;
import vo.Process;

import java.sql.Time;
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
    @Autowired
    StyleMaterialsDao styleMaterialsDao;
    @Override
    public RestResult addStyle(Style style,String materials) {
        if(style.getCode() == null || style.getImgUrl() == null || style.getName() == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款式编号,图片地址,名称均不能为空"));
        }
        styleDao.save(style);
//        return RestResult.CreateResult(1,style);
        if(materials != null && !materials.equals("")){
            JSONArray jsonArray = new JSONArray(materials);
            for(int i = 0;i<jsonArray.length();i++){
                JSONObject jsonObject = jsonArray.optJSONObject(i);
                int materialId = jsonObject.optInt("id");
                double amount = jsonObject.optDouble("amount");
                styleMaterialsDao.addData(style.getId(),materialId,amount);
            }
        }else{
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"物料信息不能为空!"));
        }
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult searchStyles(Integer page,Integer num,String operation,String key,String field) {
        if(num == null || page == null || operation == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"num,page,operation 均不能为空"));
        }
        if(page < 1){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page 从1开始"));
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
            item.setName(style.getName());
            item.setCreateTime(style.getCreateTime());
            item.setCreateTimeStr(df.format(style.getCreateTime()));
            items.add(item);
        }
        stylesRes.setList(items);
        return RestResult.CreateResult(1,stylesRes);
    }

    @Override
    public RestResult updateStyle(Style style) {
//        return RestResult.CreateResult(1,style);
        if(style.getId() == 0 ||style.getCode() == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款号和id不能为空"));
        }
        Style style1 = styleDao.getById(style.getId());
        if(style1 == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款式id不存在"));
        }
        if(style.getName() != null){
            style1.setName(style.getName());
        }
        if(style.getImgUrl() != null){
            style1.setImgUrl(style.getImgUrl());
        }
        if(style.getDescription() != null){
            style1.setDescription(style.getDescription());
        }

        styleDao.update(style1);
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult deleteStyle(Integer id) {
        if(id == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id不能为空"));
        }
        if(styleDao.delete(id)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id不存在"));
        }
    }

    @Override
    public RestResult getDetail(Integer id) {
        if(id == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"款式id不能为空"));
        }
        Style style = styleDao.getById(id);
        if(style == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id 不存在"));
        }
        StyleDetail styleDetail = new StyleDetail();
        styleDetail.setId(id);
        styleDetail.setName(style.getName());
        styleDetail.setCode(style.getCode());
        styleDetail.setCreateTime(style.getCreateTime());
        styleDetail.setCreateTimeStr(TimeUtil.toString(style.getCreateTime()));
        styleDetail.setDescription(style.getDescription());
        styleDetail.setImgUrl(style.getImgUrl());
        styleDetail.setPass(style.getPassed());
        List<Process> processes = new ArrayList<>();
        String timeStr = TimeUtil.toString(new Timestamp(new Date().getTime()));
        for(int i = 0;i<10;i++){
            Process process = new Process();
            process.setId(i);
            process.setCreateTime(timeStr);
            process.setOrderNumber(timeStr.replace(" ","").replace("-","").replace(":","")+"0000"+i);
            process.setState("正在询价中...");
            processes.add(process);
        }
        styleDetail.setOrderList(processes);
        return RestResult.CreateResult(1,styleDetail);
    }
}
