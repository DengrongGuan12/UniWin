package controller;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xiaoge on 2014/8/21.
 */
@Controller
@RequestMapping("/act")
public class ActiController {
    @Autowired
    RuntimeService runtimeService;
    @Autowired
    TaskService taskService;

    private final String processDefKey = "miniProcess";

    @RequestMapping(method = RequestMethod.GET, value = "/{username}")
    public String index(@PathVariable String username, Model model) {
        if(username.equals("employee")) {
            List<ProcessInstance> processInstanceList = runtimeService.createProcessInstanceQuery().list();
            model.addAttribute("processList", processInstanceList);
            List<Task> taskList = taskService.createTaskQuery().taskName("employee").processDefinitionKey(processDefKey).list();
            model.addAttribute("taskList",taskList);
            return "act/employee";
        } else if(username.equals("employer")) {
            List<Task> taskList = taskService.createTaskQuery().taskName("employer").processDefinitionKey(processDefKey).list();
            model.addAttribute("taskList", taskList);
            return "act/employer";
        }
        return "act/index";
    }
    @RequestMapping(method = RequestMethod.POST, value = "/employee")
    public String dealEmployee(String tid) {
        if(tid.equals("first")){
            ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefKey);
            Task task = taskService.createTaskQuery().taskName("employee").processInstanceId(processInstance.getProcessInstanceId()).singleResult();

            taskService.complete(task.getId());
        }else{
            taskService.complete(tid);
        }
        return "redirect:/act/employee";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/employer")
    public String dealEmployer(String agree,String tid) {
        Map<String, Object> varMap = new HashMap<>();
        if(agree.equals("true")){
            varMap.put("agree",true);
        }else{
            varMap.put("agree",false);
        }
        taskService.complete(tid,varMap);
        return "redirect:/act/employer";
    }


}
