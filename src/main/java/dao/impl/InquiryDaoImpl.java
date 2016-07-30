package dao.impl;

import dao.BaseDao;
import dao.InquiryDao;
import model.Inquiry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
@Repository
public class InquiryDaoImpl implements InquiryDao {
    @Autowired
    BaseDao baseDao;

    @Override
    public Inquiry getByStyleId(int styleId) {
        List<Inquiry> list = baseDao.getList(Inquiry.class,"style_id",styleId+"");
        if(list.size() == 0){
            return null;
        }else{
            return list.get(0);
        }
    }

    @Override
    public boolean update(Inquiry inquiry) {
        try{
            baseDao.update(inquiry);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    public Inquiry getById(int id) {
        return (Inquiry) baseDao.load(Inquiry.class,id);
    }

    @Override
    public boolean save(Inquiry inquiry) {
        try{
            baseDao.save(inquiry);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}
