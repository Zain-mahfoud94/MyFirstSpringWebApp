package com.zcompany.MyFirstSpringWebApp.Controller;

import com.zcompany.MyFirstSpringWebApp.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController {
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/CreateEmployee")
    public String addEmployee(@ModelAttribute Employee employee){
        System.out.println(employee);
        String sql = "insert into employee (id, name, salary, role) values (?,?,?,?)";
        int res = jdbcTemplate.update(sql,employee.getId(), employee.getName(), employee.getSalary(), employee.getRole());
        System.out.println(res);
        List<Employee> employees = findAll();
        System.out.println(employees);
        for (Employee e: employees){
            System.out.println(e.getName());
        }
        return "HomePage";
    }

    @RequestMapping("/ShowEmployees")
    public List<Employee> findAll(){
        String sql = "select * from employee";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Employee e = new Employee();
            e.setId(rs.getInt("id"));
            e.setName(rs.getString("name"));
            e.setSalary(rs.getFloat("salary"));
            e.setRole(rs.getString("role"));
            return e;
        });
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("employeeId") int employeeId, Model model){
        String sql = "delete from employee where id=?";
        jdbcTemplate.update(sql,employeeId);
        model.addAttribute("employees", findAll());
        return "DeleteEmployee";
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}

