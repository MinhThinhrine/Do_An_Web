package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.*;

import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class indexDao {
    static Connection connection;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;
    public List<news> getAllNews() {
        List<news> newsList = new ArrayList<>();
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM news";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery(sql);
            while (rs.next()) {
                String title = rs.getString("title");
                Date date = rs.getDate("date");
                String content = rs.getString("content");
                String image = rs.getString("image");
                String newsLink = rs.getString("newsLink");

                news news = new news(title, date, content, image, newsLink);
                newsList.add(news);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return newsList;
    }
    public List<feedback> getFeedbacks() {
        List<feedback> feedbackList = new ArrayList<>();
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM feedbacks";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("userId");
                String text = rs.getString("text");
                Date date = rs.getDate("date");
                feedback feedback = new feedback(id, userId, text, date);
                feedbackList.add(feedback);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return feedbackList;
    }
    public String getUserNameById(int id) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT name FROM users WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return rs.getString("name");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return "User Null";
    }
    public List<service_tours> service(){
        List<service_tours> sv_list = new ArrayList<>();
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM service_tours";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                float price = rs.getFloat("price");
                String description = rs.getString("description");
                service_tours sevic = new service_tours(id,name,price,description);
                sv_list.add(sevic);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return sv_list;
    }
    public options option(int svId,int vlId){
        options op = null;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM options";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                op = new options();
                op.setId(rs.getInt("id"));
                op.setDepartDate(rs.getDate("departDate"));
                op.setValiId(svId);
                op.setValiId(vlId);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return op;
    }

}
