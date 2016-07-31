package dao;

import model.Material;

import java.util.List;

/**
 * Created by dengrong on 2016/7/29.
 */
public interface MaterialDao {
    public boolean save(Material material);
    public List<Material> getAllList();
    public Material getById(int id);
    public boolean update(Material material);
    public List<Material> selectByCondition(String[] param, String[] val, String[] operation, String condition,String order,boolean isAsc);
}
