package com.controller;

import com.Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class dataSQL {

    private static Connection conn;

    public static void addnews() {
        conn = Utils.getConn();
        String sql = "insert into news(name ,content) values (?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, "zhang");
//            ps.setString(2, "dsadasdas");
//            System.out.println(ps.execute());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void deleteNews() {
        conn = Utils.getConn();
        String sql = "delete from news where id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "1");
            ps.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
