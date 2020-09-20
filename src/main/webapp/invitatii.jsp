<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/27/20
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clase.Evenimente"%>
<%@ page import="Clase.AfisInv" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Adaugare Sali</title>

</head>
<body>
<table border ="1" width="1000" align="center">
    <tr bgcolor="00FF7F">
        <th><b>Mesaj</b></th>
        <th><b>Gazda</b></th>
        <th><b>Data</b></th>
    </tr>
    <center><h2>Evenimente</h2></center>
    <%
        ArrayList<AfisInv> std = (ArrayList<AfisInv>)request.getAttribute("date");
        for(AfisInv s:std){%>
    <tr>
        <td><%=s.getMesaj()%></td>
        <td><%=s.getGazda()%></td>
        <td><%=s.getDatainc()%></td>
        <td><form action="UpdateInvitatie" method="post">
            <input type="hidden" name="rasp" value="true">
            <button name="idinvitatie" type="submit" value=<%=s.getId()%>>Accepta</button></form></td>
        <td><form action="UpdateInvitatie" method="post">
            <input type="hidden" name="rasp" value="false">
            <button name="idinvitatie" type="submit" value=<%=s.getId()%>>Refuza</button></form></td>
    </tr>
    <%}%>
</table>
</body>
</html>
