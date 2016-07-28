package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;
import vo.RestResult;

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

    @RequestMapping("repertoryin")
    public String repertoryIn() { return "repertory/repertory_in"; };

    @RequestMapping("repertoryout")
    public String repertoryOut() { return "repertory/repertory_out"; };

    @RequestMapping("repertorycontrolrecordinfo")
    public String repertoryControlRecordInfo() { return "repertory/repertory_control_record_info"; };

    @RequestMapping("repertoryinfo")
    public String repertoryInfo() { return "repertory/repertory_info";};

    @RequestMapping("inquirymodify")
    public String inquiryModify() { return "inquiry/inquiry-modify"; }

    @RequestMapping("inquirymanage")
    public String inquiryManage() { return "inquiry/inquiry-manage"; }

    @RequestMapping("designadd")
    public String designAdd() { return "design/design_add"; }

    @RequestMapping("designlist")
    public String designList() { return "design/design_list"; }

    @RequestMapping("/json")
    @ResponseBody
    public RestResult json(){
        return RestResult.CreateResult(1,userService.getAllUsernames());
    }


}
