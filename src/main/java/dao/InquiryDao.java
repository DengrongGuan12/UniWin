package dao;

import model.Inquiry;

import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public interface InquiryDao {
    public Inquiry getByStyleId(int styleId);
    public boolean update(Inquiry inquiry);
    public Inquiry getById(int id);
    public boolean save(Inquiry inquiry);
    public List<Inquiry> getAllList();
}
