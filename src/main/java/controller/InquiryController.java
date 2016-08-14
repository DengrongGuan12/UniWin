package controller;

import model.Inquiry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @RequestMapping("inquirymodify")
    public String inquiryModify() { return "inquiry/inquiry-modify"; }

    @RequestMapping("inquirymanage")
    public String inquiryManage() { return "inquiry/inquiry-manage"; }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(Integer styleId){
        return inquiryService.addInquiry(styleId);
    }

    @RequestMapping(value = "/detail",method = RequestMethod.GET)
    @ResponseBody
    public RestResult detail(Integer styleId){
        return inquiryService.get(styleId);
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page,Integer num){
        return inquiryService.getList(page,num);
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public RestResult update(@ModelAttribute("inquiry") Inquiry inquiry){
//        return RestResult.CreateResult(1,materials+inquiry.getPlatRemark());
        return inquiryService.updateInquiry(inquiry);
    }
}
