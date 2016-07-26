package controller;

import model.Role;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;
import vo.RestResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by I322233 on 6/23/2016.
 */
@Controller
@RequestMapping("main")
public class MainController {
    @Autowired
    private UserService userService;

    @RequestMapping("")
    public String home(){
        return "index";
    }

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

    @RequestMapping("usermanage")
    public String SystemUser(){
        return "system/user_manage";
    }

    @RequestMapping("departmentmanage")
    public String SystemDepartment(){
        return "system/department_manage";
    }

    @RequestMapping("materialsupplier")
    public String materialSupplier(){
        return "material/material_supplier";
    }

    @RequestMapping("customermanage")
    public String customerManage() { return "customer/customer_manage"; }

    @RequestMapping("repertoryrecords")
    public String repertoryRecords() { return "repertory/repertory_records"; }

    @RequestMapping("repertorycontrolrecords")
    public String repertoryControlRecords() { return "repertory/repertory_control_records"; }


    @RequestMapping("designadd")
    public String designAdd() { return "design/design_add"; }

    @RequestMapping("designlist")
    public String designList() { return "design/design_list"; }

    @RequestMapping("designdetail")
    public String designDetail() { return "design/design_detail"; }

    @RequestMapping("/json")
    @ResponseBody
    public RestResult json(){
        return RestResult.CreateResult(1,userService.getAllUsernames());
    }


}
