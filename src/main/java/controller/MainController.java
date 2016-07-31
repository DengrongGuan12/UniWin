package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.UserService;
import vo.Error;
import vo.RestResult;
import vo.UrlInfo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
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



    @RequestMapping("usermanage")
    public String SystemUser(){
        return "system/user_manage";
    }

    @RequestMapping("departmentmanage")
    public String SystemDepartment(){
        return "system/department_manage";
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


    @RequestMapping("/json")
    @ResponseBody
    public RestResult json(){
        return RestResult.CreateResult(1,userService.getAllUsernames());
    }

    @RequestMapping(value = "/uploadPicture", method = RequestMethod.POST)
    @ResponseBody
    public RestResult uploadPicture(@RequestParam("file") MultipartFile file){
        if (!file.isEmpty()) {
//            String path = "/store/picture/";
            String path = "c://tmp//";
            String storeName ="";
            int length = 0;
            try {

                File dir = new File(path);
                if (!dir.exists()) {
                    dir.mkdir();
                }
                // 读取文件流并保持在指定路径
                String time = System.currentTimeMillis()+"";
                String originalName = file.getOriginalFilename();
//                String[] strings = originalName.split("");
//                length = strings.length;
                String ext = "";
                int dot = originalName.lastIndexOf('.');
                if ((dot >-1) && (dot < (originalName.length() - 1))) {
                    ext = originalName.substring(dot + 1);
                }
                storeName = path + time+"."+ext;
                InputStream inputStream = file.getInputStream();
                OutputStream outputStream = new FileOutputStream(storeName);
                byte[] buffer = file.getBytes();
                int bytesum = 0;
                int byteread = 0;
                while ((byteread = inputStream.read(buffer)) != -1) {
                    bytesum += byteread;
                    outputStream.write(buffer, 0, byteread);
                    outputStream.flush();
                }
                outputStream.close();
                inputStream.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
            String id = userService.addFile(storeName);
            String url = "http://localhost:8080/uniwin/main/picture?id="+id;
            UrlInfo urlInfo = new UrlInfo();
            urlInfo.setUrl(url);
            return RestResult.CreateResult(1,urlInfo);
        } else {
            return RestResult.CreateResult(0,new Error(Error.BAD_PARAM,"文件不存在"));
        }
    }
    @RequestMapping(value = "/picture",method = RequestMethod.GET)
    public void picture(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response){
        String fullFileName = userService.getFilePathById(id);
        File tempFile =new File( fullFileName.trim());

        String fileName = tempFile.getName();
        //设置文件MIME类型
        response.setContentType("text/html; charset=UTF-8");
        response.setContentType(request.getSession().getServletContext().getMimeType(fileName));
        //设置Content-Disposition,不设置表示直接在浏览器显示
//        response.setHeader("Content-Disposition", "attachment;filename="+fileName);
        //读取目标文件，通过response将目标文件写到客户端
        //获取目标文件的绝对路径
        //System.out.println(fullFileName);
        //读取文件
        InputStream in = null;
        try {
            in = new FileInputStream(fullFileName);
            OutputStream out = response.getOutputStream();

            //写文件
            int b;
            while((b=in.read())!= -1)
            {
                out.write(b);
            }

            in.close();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
