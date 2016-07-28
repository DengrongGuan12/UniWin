package dao.impl;

import dao.BaseDao;
import dao.FileDao;
import model.FilePath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dengrong on 2016/7/28.
 */
@Repository
public class FileDaoImpl implements FileDao {
    @Autowired
    BaseDao baseDao;
    @Override
    public void save(FilePath filePath) {
        baseDao.save(filePath);
    }

    @Override
    public FilePath getByUniqueId(String unique) {
        List list = baseDao.getList(FilePath.class,"unique_id","'"+unique+"'");
        return (FilePath) list.get(0);
    }
}
