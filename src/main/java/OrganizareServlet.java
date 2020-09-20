import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Date;

public class OrganizareServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



        String descriere = request.getParameter("descriere");
        String datainc =request.getParameter("datainc");
        String datafin =request.getParameter("datafin");
        String orainc =request.getParameter("orainc");
        String orafin =request.getParameter("orafin");
        String numarpers =request.getParameter("numarpers");
        RequestDispatcher rd=request.getRequestDispatcher("SelectSalaServlet");
        rd.forward(request, response);

        /*try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proiect", "root", "rootpass");
            Clase.Evenimente e = new Clase.Evenimente();
            e.setDescriere(descriere);
            e.setData_inc(datainc);
            e.setData_fin(datafin);
            e.setOra_inc(orainc);
            e.setOra_fin(orafin);
            e.insert(con);
        } catch (Exception e2) {
            System.out.println(e2);
        }*/


    }
}
