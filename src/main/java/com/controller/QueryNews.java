package com.controller;

import com.entity.News;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/QueryNews")
public class QueryNews extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("id");
        int id = Integer.parseInt(name);

        List<News> serviceFactory = ServiceFactory.getNewsService().listUsers();


        for (News n : serviceFactory){

            if (n.getId() == id){
                News news = new News(n.getId(),n.getName(),n.getContent(),n.getInsertTime());
                req.setAttribute("NewsDetail", news);
                break;
            }
        }

        req.getRequestDispatcher("/WEB-INF/jsp/newsdetail.jsp")
                .forward(req, resp);

    }
}
