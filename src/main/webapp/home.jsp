<%--
  Created by IntelliJ IDEA.
  User: Georgi
  Date: 05/19/20
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div style="max-width: 200px; horiz-align: left; vertical-align: top">
    <form action="AfisareCont" method="post" target="frame" >
        <input type="submit" value="Detalii cont"
               name="Submit" id="frm1_submit" />
    </form>
    <form action="AfisareEvenServlet" method="post" target="frame" >
        <input type="submit" value="Evenimente"
               name="Submit" id="frm2_submit" />
    </form>
    <form action="/organizare.jsp" method="get" target="frame">
        <input type="submit" value="Organizare eveniment"
               name="Submit" id="frm3_submit" />
    </form>
    <form action="AfisareInvitatii" method="post" target="frame" >
        <input type="submit" value="Invitatii"
               name="Submit" id="frm5_submit" />
    </form>
    <form action="/index.jsp" method="get" >
        <input type="submit" value="Logout"
               name="Submit" id="frm4_submit" />
    </form>

</div>
<iframe name="frame" width="1200" height="800" frameborder="1" style="horiz-align: center; vertical-align: top"></iframe>
</body>
</html>

