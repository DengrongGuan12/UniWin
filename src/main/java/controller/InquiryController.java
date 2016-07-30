package controller;

import model.Inquiry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.InquiryService;
import vo.RestResult;

/**
 * Created by dengrong on 2016/7/30.
 */
@Controller
@RequestMapping("/v1/inquiry")
public class InquiryController {
    @Autowired
    InquiryService inquiryService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(Integer styleId){
        return inquiryService.addInquiry(styleId);
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer styleId){
        return inquiryService.get(styleId);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public RestResult put(Inquiry inquiry){
        return inquiryService.updateInquiry(inquiry);
    }
}