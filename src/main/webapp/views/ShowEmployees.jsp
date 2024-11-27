<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.zcompany.MyFirstSpringWebApp.Model.Employee" %>
<%@ page import="java.util.List" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }

        th, td {
          padding: 8px;
          text-align: left;
          border-bottom: 1px solid #ddd;
        }
        tr:hover {background-color: #795548;
        color: white;}
        </style>
    </head>
    <body>
        <h2> Show Employees</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Salary</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Retrieve the list of employees from the request
                    List<Employee> employees = (List<Employee>) request.getAttribute("employees");
                    if (employees.size() != 0) {
                        for (Employee employee : employees) {
                %>
                            <tr>
                                <td><%= employee.getId() %></td>
                                <td><%= employee.getName() %></td>
                                <td><%= employee.getSalary() %></td>
                                <td><%= employee.getRole() %></td>
                            </tr>
                <%
                        }
                    } else {
                %>
                        <tr>
                            <td colspan="4" style="text-align: center">No employees found.</td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>