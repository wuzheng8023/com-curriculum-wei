//package com;
//
//import com.entity.News;
//import com.service.ServiceFactory;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//import java.util.Date;
//import java.util.List;
//
//public class Test {
//
//    static List<News> serviceFactory = ServiceFactory.getNewsService().listUsers();
//
//    public static void main(String[] args) {
//        //addTest();
//        for (News n : serviceFactory){
//            System.out.println(n.getId());
//        }
//    }
//
//    public static void addTest(){
//        Connection conn = null;
//        Date date = new Date();
//        String sql = "insert into news(name ,content,inserttime) values (?,?,?)";
//        try {
//            conn = Utils.getConn();
//            PreparedStatement ps = conn.prepareStatement(sql);
//
//            ps.setString(1, "test1");
//            ps.setString(2, "test2");
//            ps.setString(3, String.valueOf(new java.sql.Date(date.getTime())));
//            ps.execute();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//}
