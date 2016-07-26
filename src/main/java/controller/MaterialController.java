package controller;

import model.Material;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/4.
 */
@Controller
@RequestMapping("/v1/materials")
public class MaterialController {

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page, Integer per_page){
        return RestResult.CreateResult(1,page);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(@ModelAttribute("material")Material material){
        //添加
        return RestResult.CreateResult(1,material);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public RestResult put(String a, String b){
        //在服务器更新资源（客户端提供改变后的完整资源)
        return RestResult.CreateResult(1,a+";"+b);
    }

    @RequestMapping(method = RequestMethod.PATCH)
    @ResponseBody
    public RestResult patch(){
        //在服务器更新资源（客户端提供改变的属性）
        return RestResult.CreateResult(1,null);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    @ResponseBody
    public RestResult delete(){
        return RestResult.CreateResult(1,null);
    }
}
