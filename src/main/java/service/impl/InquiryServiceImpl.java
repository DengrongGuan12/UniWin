package service.impl;

import dao.InquiryDao;
import dao.StyleDao;
import model.Inquiry;
import model.InquiryState;
import model.Style;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.InquiryService;
import util.ListUtil;
import util.TimeUtil;
import vo.Error;
import vo.InquiryItem;
import vo.Inquirys;
import vo.RestResult;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
        Inquiry inquiry1 = inquiryDao.getByStyleId(styleId);
        if(inquiry1 != null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"该款式已经新建过询价单了"));
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
                inquiryOld.setState(InquiryState.PASS);
                inquiryOld.setCheckTime(new Timestamp(new Date().getTime()));
                break;
            case REJECT:
                inquiryOld.setState(InquiryState.REJECT);
                inquiryOld.setCheckTime(new Timestamp(new Date().getTime()));
                break;
            case NOCHECK:
                inquiryOld.setPlateMakePrice(inquiry.getPlateMakePrice());
                inquiryOld.setProducePrice(inquiry.getProducePrice());
                inquiryOld.setPurchasePrice(inquiry.getPurchasePrice());
                inquiryOld.setTechnologyPrice(inquiry.getTechnologyPrice());
                inquiryOld.setPlatRemark(inquiry.getPlatRemark());
                inquiryOld.setProdRemark(inquiry.getProdRemark());
                inquiryOld.setPurcRemark(inquiry.getPurcRemark());
                inquiryOld.setTechRemark(inquiry.getTechRemark());
                break;
        }
        if(inquiryDao.update(inquiryOld)){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"数据库写入错误"));
        }
    }

    @Override
    public RestResult get(Integer styleId) {
        if(styleId == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"styleId 不能为空"));
        }
        Inquiry inquiry = inquiryDao.getByStyleId(styleId);
        return RestResult.CreateResult(1,inquiry);
    }

    @Override
    public RestResult getList(Integer page, Integer num) {
        if(page == null || num == null){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page 和num不能为空"));
        }
        if(page<1){
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"page从1开始"));
        }
        List<Inquiry> inquiries = inquiryDao.getAllList();
        Inquirys inquirys = new Inquirys();
        inquirys.setCount(inquiries.size());
        inquiries = ListUtil.slice(inquiries,page,num);
        List<InquiryItem> items = new ArrayList<>();
        for (Inquiry inquiry:inquiries
             ) {
            InquiryItem item = new InquiryItem();
            item.setStyleId(inquiry.getStyleId());
            item.setId(inquiry.getId());
            item.setCreateTime(inquiry.getCreateTime());
            item.setCreateTimeStr(TimeUtil.toString(inquiry.getCreateTime()));
            item.setPlateMakePrice(inquiry.getPlateMakePrice());
            item.setProducePrice(inquiry.getProducePrice());
            item.setPurchasePrice(inquiry.getPurchasePrice());
            item.setTechnologyPrice(inquiry.getTechnologyPrice());
            items.add(item);
        }
        inquirys.setList(items);
        return RestResult.CreateResult(1,inquirys);
    }
}
