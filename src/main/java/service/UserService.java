package service;

import model.User;

import java.util.List;

/**
 * Created by I322233 on 6/23/2016.
 */
public interface UserService {
    public void saveUsers(List<User> us);
    public List<User> getAllUsernames();
    public String addFile(String storName);
    public String getFilePathById(String id);
}
