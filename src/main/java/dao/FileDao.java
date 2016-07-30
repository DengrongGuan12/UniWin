package dao;

import model.FilePath;

/**
 * Created by dengrong on 2016/7/28.
 */
public interface FileDao {
    public void save(FilePath filePath);
    public FilePath getByUniqueId(String unique);
}
