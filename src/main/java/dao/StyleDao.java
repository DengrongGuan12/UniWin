package dao;

import model.Style;

import java.util.List;
import java.util.Map;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
public interface StyleDao {
    public void save(Style style);
    public List<Style> selectByCondition(String[] param, String[] val, String[] operation, String condition,String order,boolean isAsc);
    public List<Style> getAllList(String[] orderFields,boolean[] isAsc);
    public void update(Style style);
}
