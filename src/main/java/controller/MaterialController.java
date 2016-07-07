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
        return RestResult.CreateResult(1,material);
    }
}
