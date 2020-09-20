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
            var descriere = document.form.descriere.value;
            var datainc = document.form.datainc.value;
            var orainc = document.form.orainc.value;
            var datafin = document.form.datafin.value;
            var orafin = document.form.orafin.value;
            var numarpers = document.form.numarpers.value;

            if (descriere==null || descriere=="")
            {
                alert("Descrierea trebuie completata");
                return false;
            }
            if (datainc==null || datainc=="")
            {
                alert("Data de inceput trebuie completata");
                return false;
            }
            if (datafin==null || datafin=="")
            {
                alert("Data de sfarsfit trebuie completata");
                return false;
            }
            if (numarpers==null || numarpers=="")
            {
                alert("Numarul de persoane trebuie completat");
                return false;
            }
        }
    </script>
</head>
<body>
<center><h2>Inregistrare client</h2></center>
<form name="form" action="SelectSalaServlet" method="post" onsubmit="return validate() ">
    <table align="center">
        <tr>
            <td>Descriere Eveniment</td>
            <td><input type="text" name="descriere" /></td>
        </tr>
        <tr>
            <td>Data de inceput</td>
            <td><input type="date" name="datainc" /></td>
        </tr>
        <tr>
            <td>Data de sfarsit</td>
            <td><input type="date" name="datafin" /></td>
        </tr>
        <tr>
            <td>Ora de inceput</td>
            <td><input type="time" name="orainc" /></td>
        </tr>
        <tr>
            <td>Ora de sfarsit</td>
            <td><input type="time" name="orafin" /></td>
        </tr>
        <tr>
            <td>Numar de persoane</td>
            <td><input type="number" name="numarpers" /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Continua"></input>
                <input type="reset" value="Reset"></input></td>
        </tr>
    </table>
</form>
</body>
</html>