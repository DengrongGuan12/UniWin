package controller;

import model.Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.StyleService;
import vo.Error;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
@Controller
@RequestMapping("/v1/styles")
public class StyleController {
    @Autowired
    private StyleService styleService;
    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(@ModelAttribute("style")Style style){
        Error error = styleService.addStyle(style);
        if(error == null){
            return RestResult.CreateResult(1,null);
        }else{
            return RestResult.CreateResult(0,error);
        }
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page,Integer num,String operation,String key,String field){
        return styleService.searchStyles(num);
    }
}
