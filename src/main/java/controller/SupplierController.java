package controller;

import model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.SupplierService;
import vo.Error;
import vo.RestResult;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
@Controller
@RequestMapping("/v1/supplier")
public class SupplierController {
    @Autowired
    SupplierService supplierService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public RestResult post(@ModelAttribute("supplier")Supplier supplier){
        return supplierService.addSupplier(supplier);
    }

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public RestResult get(Integer page,Integer num,String key, String operation,String field){
        return supplierService.getSuppliers(page,num,operation,key,field);
    }
}
