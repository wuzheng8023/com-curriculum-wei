//package com.filter;
//
//import com.entity.News;
//import com.service.ServiceFactory;
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//
//@WebFilter("/index")
//public class IndexFilter implements Filter {
//
//    @Override
//    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
//
//        List<News> serviceFactory = ServiceFactory.getNewsService().listUsers();
//        req.setAttribute("newsList", serviceFactory);
//        req.getRequestDispatcher("index.jsp")
//                .forward(req, resp);req
//
//        chain.doFilter(req, resp);
//    }
//
//}
//
