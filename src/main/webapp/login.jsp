<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<div align="center">
    <h1>Employee Login Form</h1>
    <form action="<%=request.getContextPath()%>/LoginServlet" method="post">
        <table style="with: 100%">
            <tr>
                <td>Nume de utilizator</td>
                <td><input type="text" name="idcont" /></td>
            </tr>
            <tr>
                <td>Parola</td>
                <td><input type="password" name="parola" /></td>
            </tr>

        </table>
        <input type="submit" value="Submit" />
    </form>
</div>
</body>
</html>