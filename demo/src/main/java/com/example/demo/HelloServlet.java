package com.example.demo;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void init() {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Leer los parametros del formulario html
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        System.out.println("usuario: " + usuario);
        System.out.println("password: " + password);
        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<body>");
        out.print("El parametro usuario es: " + usuario);
        out.print("<br/>");
        out.print("El parametro password es: " + password);
        out.print("</body>");
        out.print("</html>");
        out.close();
    }

    public void destroy() {
    }
}