package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.tour;

import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.*;

import java.util.List;
import java.util.Date;

public class TourDao {
    private static Connection connection;
    ResultSet rs = null;

    public List<tour> findAll() {
        List<tour> tours = new ArrayList<>();
        try {
            String sql = "Select * from tours";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                int idCate = rs.getInt("cateId");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                Date startTime = rs.getDate("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                tour tour = new tour(id, idCate, idDis, name, image, price, startTime, duration, schedule, description);
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tours;
    }

    public tour findtourbyid(int id) {
        tour tour = null;
        PreparedStatement preparedStatement = null;
        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM tours where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                tour = new tour();
                int id1 = rs.getInt("id");
                int idCate = rs.getInt("cateId");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                Date startTime = rs.getDate("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                tour.setId(id1);
                tour.setCateId(idCate);
                tour.setDiscountId(idDis);
                tour.setName(name);
                tour.setImage(image);
                tour.setPrice(price);
                tour.setDuration(duration);
                tour.setStartTime(startTime);
                tour.setSchedule(schedule);
                tour.setDescription(description);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tour;
    }

    public List<tour> findbyid(int id) {
        List<tour> tour = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM tours where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            int id1 = rs.getInt("id");
            int idCate = rs.getInt("cateId");
            int idDis = rs.getInt("discountId");
            String name = rs.getString("name");
            String image = rs.getString("image");
            int price = rs.getInt("price");
            Date startTime = rs.getDate("startTime");
            String duration = rs.getString("duration");
            String schedule = rs.getString("schedule");
            String description = rs.getString("description");
            tour tour1 = new tour(id1, idCate, idDis, name, image, price, startTime, duration, schedule, description);
            tour.add(tour1);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tour;
    }
    public static LinkedList<tour> getListTourbySearch(String search) {
        LinkedList<tour> listSearch = new LinkedList<>();
        String sql = "select * from tours WHERE name like ? order by id desc ";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = connect.prepareStatement(sql);
            pst.setString(1,"%"+ search +"%");

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                int id1 = rs.getInt("id");
                int idCate = rs.getInt("cateId");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                Date startTime = rs.getDate("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                tour tour1 = new tour(id1, idCate, idDis, name, image, price, startTime, duration, schedule, description);
                listSearch.add(tour1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listSearch;

    }

        public static void main(String[] args) {
            // Gọi phương thức getListTourbySearch
            String searchKeyword = "Cần Thơ";
            List<tour> searchResults = TourDao.getListTourbySearch(searchKeyword);

            // Hiển thị kết quả
            if (searchResults.isEmpty()) {
                System.out.println("Không tìm thấy kết quả cho từ khóa: " + searchKeyword);
            } else {
                System.out.println("Kết quả tìm kiếm cho từ khóa: " + searchKeyword);
                for (tour tour : searchResults) {
                    System.out.println("Tour ID: " + tour.getId());
                    System.out.println("Tên tour: " + tour.getName());
                    // Hiển thị thêm các thông tin khác nếu cần
                    System.out.println("----------------------------------");
                }
            }
        }



}
