package service;

import model.Style;
import vo.Error;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
public interface StyleService {
    public Error addStyle(Style style);
    public RestResult searchStyles(Integer num);
}
