<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/19/20
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Clase.Sali"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="Clase.Sali" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.Time" %>
<%@ page import="Clase.Evenimente" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student List</title>
</head>
<body>
<h1>Sali libere</h1>
<form name="form" action="CreareEvenimentServlet" method="post" >
<table border ="1" width="500" align="center">
    <tr bgcolor="00FF7F">
        <th><b>Capacitate</b></th>
        <th><b>Etaj</b></th>
        <th><b>Pret</b></th>
    </tr>
    <%-- Fetching the attributes of the request object
         which was previously set by the servlet
          "StudentServlet.java"
    --%>
    <%
        //String descriere = (String) request.getParameter("descriere");
        //String datainc = (String) request.getParameter("datainc");
        //String datafin = (String) request.getParameter("datafin");
        //String orainc = (String) request.getParameter("orainc");
       // String orafin = (String) request.getParameter("orafin");
        //request.setAttribute("descriere",descriere);
        //request.setAttribute("datainc",datainc);
        //request.setAttribute("datafin",datafin);
        //request.setAttribute("orainc",orainc);
        //request.setAttribute("orafin",orafin);
        ArrayList<Sali> std = (ArrayList<Sali>)request.getAttribute("data");
        for(Sali s:std){%>
    <%-- Arranging data in tabular form
    --%>
    <tr>
        <td><%=s.getCapacitate()%></td>
        <td><%=s.getEtaj()%></td>
        <td><%=s.getPret()%></td>
        <td><input type="radio" value="<%=s.getId_sala()%>" name="idsala"></input></td>

    </tr>
    <%}%>
    <tr>
        <td></td>
        <td><input type="submit" value="Finalizare"></input></td>
    </tr>
</table>
</form>
<hr/>
</body>
</html>
