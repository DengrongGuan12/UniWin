package service;

import model.Style;
import vo.Error;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
public interface StyleService {
    public RestResult addStyle(Style style);
    public RestResult searchStyles(Integer page,Integer num,String operation,String key,String field);
    public RestResult updateStyle(Style style);
    public RestResult deleteStyle(Integer id);
    public RestResult getDetail(String code);
}
