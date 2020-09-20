<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/27/20
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register</title>
    <script>
        function validate()
        {
            var nume = document.form.nume.value;

            if (nume==null || nume=="")
            {
                alert("Numele trebuie completat");
                return false;
            }
        }
    </script>
</head>
<body>
<center><h2>Inregistrare client</h2></center>
<form name="form" action="InvitaFormServlet" method="post" onsubmit="return validate()">
    <table align="center">
        <tr>
            <td>Numele de cont al invitatului</td>
            <td><input type="text" name="nume" /></td>
        </tr>
        <tr>
            <td>Mesaj</td>
            <td><input type="text" name="mesaj" /></td>
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
