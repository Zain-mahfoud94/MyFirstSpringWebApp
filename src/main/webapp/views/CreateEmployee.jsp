<%@page language="java"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h2> Create New Employee</h2>
        <form action="CreateEmployee">
            <label for="id">Employee id</label> <br>
            <input id="id" name="id" type="number"/><br>
            <label for="name">Employee Name</label> <br>
            <input id="name" name="name" type="text"/><br>
            <label for="salary">Employee Salary</label> <br>
            <input id="salary" name="salary" type="number"/><br>
            <label for="role">Employee Role</label> <br>
            <input id="role" name="role" type="text"/><br>
            <button class="button" id="create_emp" name="create" type="submit"> Create Employee </button>
        </form>
    </body>
</html>