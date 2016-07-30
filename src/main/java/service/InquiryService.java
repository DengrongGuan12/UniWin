package service;

import model.Inquiry;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/30.
 */
public interface InquiryService {
    public RestResult addInquiry(Integer styleId);
    public RestResult updateInquiry(Inquiry inquiry);
    public RestResult get(Integer styleId);
}
