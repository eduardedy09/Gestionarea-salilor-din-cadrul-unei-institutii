<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/25/20
  Time: 1:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register</title>
</head>
<body>
<center><h2>Update Eveniment</h2></center>
<form name="form" action="UpdateFormEvenServlet" method="post">
    <table align="center">
        <tr>
            <td>Descriere</td>
            <td><input type="text" name="descriere" /></td>
        </tr>
        <tr>
            <td>Data de incepere</td>
            <td><input type="date" name="datainc" /></td>
        </tr>
        <tr>
            <td>Ora de incepere</td>
            <td><input type="time" name="orainc" /></td>
        </tr>
        <tr>
            <td>Ora de incheiere</td>
            <td><input type="time" name="orafin" /></td>
        </tr>
        <tr>
            <td>Data de incheiere</td>
            <td><input type="date" name="datafin" /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Register"></input><input
                    type="reset" value="Reset"></input></td>
        </tr>
    </table>
</form>
</body>
</html>
