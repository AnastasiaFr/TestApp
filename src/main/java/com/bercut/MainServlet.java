package com.bercut;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/")
public class MainServlet extends HttpServlet {


    public void init() throws ServletException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("welcome.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");

        String src = NasaClient.getPicture(date);
        String description = NasaClient.getDescription(date);
        request.setAttribute("src", src);
        request.setAttribute("description", description);

//        request.getSession().setAttribute("src", NasaClient.getPicture(date));
//        request.getSession().setAttribute("description", NasaClient.getDescription(date));
        request.getRequestDispatcher("image.jsp").forward(request, response);

    }
}
