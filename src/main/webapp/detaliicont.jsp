<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/27/20
  Time: 6:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="Clase.Client" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Detalii Cont</title>

</head>
<body>
<center><h2>Detalii Cont</h2></center>
<table border ="1" width="500" align="center">
    <%
        Client c = (Client)request.getAttribute("date");
    %>
    <tr>
        <th><b>Nume</b></th>
        <td><%=c.getNume_client()%></td>
    </tr>
    <tr>
        <th><b>Prenume</b></th>
        <td><%=c.getPrenume_client()%></td>
    </tr>
    <tr>
        <th><b>Nume de cont</b></th>
        <td><%=c.getId_cont()%></td>
    </tr>
    <tr>
        <th><b>Institutie</b></th>
        <td><%=c.getNume_institutie()%></td>
    </tr>
    <tr>
        <th><b>Mail Institutional</b></th>
        <td><%=c.getMail_inst()%></td>
    </tr>
    <tr>
        <th><b>Mail personal</b></th>
        <td><%=c.getMail_pers()%></td>
    </tr>
    <tr>
        <th><b>Nr de telefon</b></th>
        <td><%=c.getNr_tel()%></td>
    </tr>
</table>
</body>
</html>
