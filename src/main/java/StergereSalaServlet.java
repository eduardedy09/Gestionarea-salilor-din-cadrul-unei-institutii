import Clase.Sali;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

public class StergereSalaServlet  extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idsala = request.getParameter("idsala");

        Sali s = new Sali();
        int i = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proiect", "root", "rootpass");
            s.setId_sala(Integer.parseInt(idsala));
            i = s.delete(con);
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

