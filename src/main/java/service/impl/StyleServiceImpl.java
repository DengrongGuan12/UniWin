package service.impl;

import model.Style;
import org.springframework.stereotype.Service;
import service.StyleService;
import vo.Error;
import vo.RestResult;
import vo.StyleItem;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
@Service
public class StyleServiceImpl implements StyleService {
    @Override
    public RestResult addStyle(Style style) {
        return RestResult.CreateResult(1,null);
    }

    @Override
    public RestResult searchStyles(Integer num) {
        if(num == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"每页数量不能为空"));
        }
        List<StyleItem> list = new ArrayList<>();
        for(int i = 0;i<num;i++){
            StyleItem styleItem = new StyleItem();
            styleItem.setId(i);
            styleItem.setPass(i%2==0?true:false);
            styleItem.setCode("S"+i);
            styleItem.setDescription("sdfsdfsdf");
            styleItem.setImgUrl("http://photo.enterdesk.com/2011-2-16/enterdesk.com-1AA0C93EFFA51E6D7EFE1AE7B671951F.jpg");
            list.add(styleItem);
        }
        return RestResult.CreateResult(1,list);
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
        return RestResult.CreateResult(1,"尚未实现");
    }
}
