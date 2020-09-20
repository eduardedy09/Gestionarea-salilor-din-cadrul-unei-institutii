<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/19/20
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="left">
    <form action="AfisareCont" method="post">
        <input type="submit" value="Detalii cont"
               name="Submit" id="frm1_submit" />
    </form>
    <form action="AfisareEvenServlet" method="post">
        <input type="submit" value="Evenimente"
               name="Submit" id="frm2_submit" />
    </form>
    <form action="/organizare.jsp" method="get">
        <input type="submit" value="Organizare eveniment"
               name="Submit" id="frm3_submit" />
    </form>
    </form>
    <form action="EditareSaliServlet" method="post">
        <input type="submit" value="Editare sali"
               name="Submit" id="frm5_submit" />
    </form>
    <form action="AfisareStatistici" method="post">
        <input type="submit" value="Statistici"
               name="Submit" id="frm6_submit" />
    </form>
    <form action="/index.jsp" method="get">
        <input type="submit" value="Logout"
               name="Submit" id="frm4_submit" />
</div>
</body>
</html>
