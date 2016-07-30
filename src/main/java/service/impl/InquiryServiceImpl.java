package service.impl;

import dao.InquiryDao;
import dao.StyleDao;
import model.Inquiry;
import model.InquiryState;
import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.InquiryService;
import vo.Error;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/30.
 */
@Service
public class InquiryServiceImpl implements InquiryService {
    @Autowired
    InquiryDao inquiryDao;
    @Autowired
    StyleDao styleDao;
    @Override
    public RestResult addInquiry(Integer styleId) {
        if(styleId == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"styleId 不能为空"));
        }
        Style style = styleDao.getById(styleId);
        if(style == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"style id 不存在"));
        }
        Inquiry inquiry = new Inquiry();
        inquiry.setStyleId(styleId);
        if(inquiryDao.save(inquiry)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.DB_ERROR,"数据库写入错误"));
        }
    }

    @Override
    public RestResult updateInquiry(Inquiry inquiry) {
        if(inquiry.getId() == 0){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id 不能为空"));
        }
        Inquiry inquiryOld = inquiryDao.getById(inquiry.getId());
        if(inquiryOld == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"id 不存在"));
        }
        switch (inquiry.getState()){
            case PASS:
                break;
            case REJECT:
                break;
            case NOCHECK:
                break;
        }

        return null;
    }

    @Override
    public RestResult get(Integer styleId) {
        if(styleId == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"styleId 不能为空"));
        }
        Inquiry inquiry = inquiryDao.getByStyleId(styleId);
        return RestResult.CreateResult(1,inquiry);
    }
}
