<%@page language="java"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <style>
        .button {
          border: none;
          padding: 15px 32px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          cursor: pointer;
          color: black;
          background-color: #a57868;
        }
        .button:hover {
          background-color: #795548;
          color: white;
        }
        </style>
    </head>
    <body>
        <h2> Welcome to Employee Control Panel </h2>
        <form action="handleButtons">
            <label for="c_emp">Add Employee </label> <br>
            <button class="button" id="c_emp" name="action" value="c_emp" type="submit"> New Employee </button> <br>
            <label for="e_emp">Edit Employee </label> <br>
            <button class="button" id="e_emp" name="action" value="e_emp" type="submit"> Change Employee data</button> <br>
            <label for="d_emp">Delete specific Employee </label> <br>
            <button class="button" id="d_emp" name="action" value="d_emp" type="submit"> Delete Employee </button> <br>
            <label for="s_emp">Show all Employees </label> <br>
            <button class="button" id="s_emp" name="action" value="s_emp" type="submit"> Show Employees </button> <br>
        </form>
    </body>
</html>