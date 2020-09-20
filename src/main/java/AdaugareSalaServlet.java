import Clase.Sali;

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
import java.sql.Date;

public class AdaugareSalaServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String capacitate = request.getParameter("capacitate");
        String etaj = request.getParameter("etaj");
        String pret = request.getParameter("pret");

        Sali s1 = new Sali();
        int i = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proiect", "root", "rootpass");
            s1.setCapacitate(Integer.parseInt(capacitate));
            s1.setEtaj(etaj);
            s1.setPret(Double.parseDouble(pret));
            i = s1.insert(con);
        } catch (Exception e) {
            System.out.println(e);
        }

        if (i == 1)   //On success, you can display a message to user on Home page
        {
            request.getRequestDispatcher("EditareSaliServlet").forward(request, response);
        } else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", "Inregistrarea a esuat");
            request.getRequestDispatcher("EditareSaliServlet").forward(request, response);
        }
    }
}
