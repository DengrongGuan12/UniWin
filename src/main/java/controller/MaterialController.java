package controller;

import model.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.MaterialService;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/4.
 */
@Controller
@RequestMapping("/v1/materials")
public class MaterialController {

    @Autowired
    MaterialService materialService;

    @RequestMapping("materialadd")
    public String materialAdd(){
        return "material/material_add";
    }

    @RequestMapping("materialquery")
    public String materialQuery(){
        return "material/material_query";
    }

    @RequestMapping("materialmodify")
    public String materialModify(){
        return "material/material_modify";
    }

    @RequestMapping("materialsupplier")
    public String materialSupplier(){
        return "material/material_supplier";
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page, Integer num, String operation, String keys,String fields){
        return materialService.getMaterials(page,num,operation,keys,fields);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(@ModelAttribute("material")Material material){
        //添加
        return materialService.addMaterial(material);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public RestResult put(@ModelAttribute("material")Material material){
        //在服务器更新资源（客户端提供改变后的完整资源)
        return materialService.modifyMaterial(material);
    }

    @RequestMapping(value = "/detail",method = RequestMethod.GET)
    @ResponseBody
    public RestResult detail(Integer id){
        return materialService.detail(id);
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
