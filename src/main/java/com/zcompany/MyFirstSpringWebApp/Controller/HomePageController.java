package com.zcompany.MyFirstSpringWebApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {

    @Autowired
    private EmployeeController employeeController;

    @RequestMapping("/")
    public String homePage(){
        return "HomePage";
    }

    @RequestMapping("/handleButtons")
    public String handleButtons(String action, Model model) {
        return switch (action) {
            case "c_emp" -> "CreateEmployee";
            case "e_emp" -> "EditEmployee";
            case "d_emp" -> {
                model.addAttribute("employees", employeeController.findAll());
                yield "DeleteEmployee";
            }
            case "s_emp" -> {
                model.addAttribute("employees", employeeController.findAll());
                yield "ShowEmployees";
            }
            default -> "HomePage";
        };
    }

}
