package controller;

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
//        List<User> us = new ArrayList<User>();
//        User u = new User();
//        u.setUsername("MarK");
//        us.add(u);
//        u = new User();
//        u.setUsername("Fawofolo");
//        us.add(u);
//        userService.saveUsers(us);
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

    @RequestMapping("customermanage")
    public String customerManage() { return "customer/customer_manage"; }

    @RequestMapping("/json")
    @ResponseBody
    public RestResult json(){
        return RestResult.CreateResult(1,userService.getAllUsernames());
    }


}
