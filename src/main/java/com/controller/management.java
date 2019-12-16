package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/management")
public class management extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> serviceFactory = ServiceFactory.getNewsService().listUsers();
        req.setAttribute("newsList", serviceFactory);
        req.getRequestDispatcher("/WEB-INF/jsp/management.jsp")
                .forward(req, resp);
    }

}
