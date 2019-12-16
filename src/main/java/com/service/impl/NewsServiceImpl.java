package com.service.impl;

import com.Utils;
import com.entity.News;

import com.service.NewsService;

import com.util.DataSourceUtils;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());
//    @Override
//    public void addUser(String newName) {
//        String sql = "INSERT INTO user(name) VALUES(?)";
//        try(Connection conn = DataSourceUtils.getConnection();
//            PreparedStatement st = conn.prepareStatement(sql)) {
//            st.setString(1, newName);
//            st.executeUpdate();
//        }catch (SQLException e) {
//            logger.warning(e.getMessage());
//        }
//    }

    @Override
    public List<News> listUsers() {
        List<News> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news";
        try (Connection conn = Utils.getConn();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
               // System.out.println(rs.getString("id"));
                News news = new News(Integer.parseInt(rs.getString("id")), rs.getString("name"), rs.getString("content"), rs.getTimestamp("inserttime"));
                newsList.add(news);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return newsList;
    }



//    @Override
//    public User getUser(int id) {
//        User user = null;
//        String sql = "SELECT * FROM user WHERE id=?";
//        try(Connection conn = DataSourceUtils.getConnection();
//            PreparedStatement st = conn.prepareStatement(sql)) {
//            st.setInt(1, id);
//            try(ResultSet rs = st.executeQuery()) {
//                while (rs.next()) {
//                    user = new User(rs.getInt("id"), rs.getString("name"), rs.getTimestamp("inserttime"));
//                }
//            }
//        } catch (SQLException e) {
//            logger.warning(e.getMessage());
//        }
//        return user;
//    }
//
//    @Override
//    public void updateUser(User user) {
//        String sql = "UPDATE user SET name=? WHERE id=?";
//        try(Connection conn = DataSourceUtils.getConnection();
//            PreparedStatement st = conn.prepareStatement(sql)) {
//            st.setString(1, user.getName());
//            st.setInt(2,user.getId());
//            st.executeUpdate();
//        }catch (SQLException e) {
//            logger.warning(e.getMessage());
//        }
//    }
}
