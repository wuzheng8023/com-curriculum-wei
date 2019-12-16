package com.controller;

import com.Utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteNews extends HttpServlet {

    private static Connection conn;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String name = req.getParameter("NewsName");
            String content = req.getParameter("NewsContent");
            conn = Utils.getConn();
            String sql = "delete from news where name = ?";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, "1");
                ps.execute();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
