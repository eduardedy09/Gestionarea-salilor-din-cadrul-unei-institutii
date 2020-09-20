<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/24/20
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clase.Evenimente"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Adaugare Sali</title>

</head>
<body>
<table border ="1" width="1000" align="center">
    <tr bgcolor="00FF7F">
        <th><b>Sala</b></th>
        <th><b>Descriere</b></th>
        <th><b>Data inceperii</b></th>
        <th><b>Ora inceperii</b></th>
        <th><b>Data incheierii</b></th>
        <th><b>Ora incheierii</b></th>
    </tr>
    <center><h2>Evenimente</h2></center>
    <%
        ArrayList<Evenimente> std = (ArrayList<Evenimente>)request.getAttribute("date");
        for(Evenimente s:std){%>
    <tr>
        <td><%=s.getId_sala()%></td>
        <td><%=s.getDescriere()%></td>
        <td><%=s.getData_inc()%></td>
        <td><%=s.getOra_inc()%></td>
        <td><%=s.getData_fin()%></td>
        <td><%=s.getOra_fin()%></td>
        <td><form action="StergereEvenimentServlet" method="post">
            <button name="ideveniment" type="submit" value=<%=s.getId_eveniment()%>>Stergere</button></form></td>
        <td><form action="UpdateEvenServlet" method="post">
                <button name="ideveniment2" type="submit" value=<%=s.getId_eveniment()%>>Modificare</button></form></td>
        <td><form action="InvitaServlet" method="post">
            <button name="ideveniment3" type="submit" value=<%=s.getId_eveniment()%>>Invita client</button></form></td>
    </tr>
    <%}%>
</table>
</body>
</html>