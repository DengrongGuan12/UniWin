package service;

import model.Material;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/29.
 */
public interface MaterialService {
    public RestResult addMaterial(Material material);
    public RestResult getMaterials(Integer page,Integer num,String operation, String keys, String fields);
    public RestResult modifyMaterial(Material material);
    public RestResult detail(Integer id);
}
