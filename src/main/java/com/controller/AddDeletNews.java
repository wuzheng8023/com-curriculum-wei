package com.controller;

import com.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

@WebServlet("/AddDeleteNews")
public class AddDeletNews extends HttpServlet {
    private static Connection conn;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String id = req.getParameter("button");
        conn = Utils.getConn();

        if (id.equalsIgnoreCase("1")){
            String name = req.getParameter("NewsName");
            String content = req.getParameter("NewsContent");
            Date date = new Date();
            String sql = "insert into news(name ,content,inserttime) values (?,?,?)";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, content);
                ps.setString(3, String.valueOf(new java.sql.Date(date.getTime())));
                ps.execute();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        else{
//            String name = req.getParameter("NewsName");

            String name = req.getParameter("NewsName");

            System.out.println(name);
            String sql = "delete from news where id = ?";
            try {
                int bianhao = Integer.parseInt(name);
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, bianhao);
                ps.execute();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.sendRedirect("/management");
    }

}
