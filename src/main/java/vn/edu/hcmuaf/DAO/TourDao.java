package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.http.HttpSession;
import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.LinkedList;
import java.util.List;

public class TourDao {
    Connection connection;
    ResultSet rs = null;
    PreparedStatement preparedStatement = null;

    public List<Tour> findAll() {
        List<Tour> tours = new ArrayList<>();
        try {
            String sql = "Select * from tours";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                Tour tour = new Tour(id, region, idDis, name, image, price, startTime, duration, schedule, description);
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tours;
    }
    public List<Tour> getAllTourForIndex() {
        List<Tour> tours = new ArrayList<>();
        try {
            String sql = "Select id,name,image,price,duration from tours";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");

                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");

                String duration = rs.getString("duration");


                Tour tour = new Tour(id,  name, image, price,  duration);
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tours;
    }
    public Tour findtourbyid(int id) {
        Tour tour = null;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM tours where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                tour = new Tour();
                int id1 = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                tour.setId(id1);
                tour.setRegion(region);
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

    public List<valies> getValiTour(ArrayList<valies> valiList) {
        List<valies> product = new ArrayList<>();
        try {
            if(valiList.size()>0){
                for(valies vl :valiList){
                    connection = ConnectToDatabase.getConnect();
                    String sql = "SELECT * FROM tours where id =?";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setInt(1, vl.getId());
                    rs = preparedStatement.executeQuery();
                    while (rs.next()){
                        valies  row = new valies();
                        row.setTourId(rs.getInt("id"));
                        row.setNumAdult(1);
                        row.setNumChildren(1);
                        row.setImage(rs.getString("image"));
                        row.setDuration(rs.getString("duration"));
                        row.setSchedule(rs.getString("schedule"));
                        row.setPrice(rs.getInt("price"));
                        row.setName(rs.getString("name"));
                        product.add(row);
//                        insertVali(valiList);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return product;
    }
    public void insertVali(ArrayList<valies> valiList) {
        try {
            connection = ConnectToDatabase.getConnect();
            for (valies vl : valiList) {
                connection = ConnectToDatabase.getConnect();
                String sql = "INSERT INTO vali (userId, tourId, numChildren, numAdult) VALUES (?, ?, ?, ?)";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setInt(1, vl.getUserId());
                preparedStatement.setInt(2, vl.getTourId());
                preparedStatement.setInt(3, vl.getNumAdult());
                preparedStatement.setInt(4, vl.getNumChildren());
                preparedStatement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
        public static LinkedList<Tour> getListTourbySearch(String search) {
        LinkedList<Tour> listSearch = new LinkedList<>();
        String sql = "select * from tours WHERE name like ? order by id desc ";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = connect.prepareStatement(sql);
            pst.setString(1,"%"+ search +"%");

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                int id1 = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                Tour tour1 = new Tour(id1, region, idDis, name, image, price, startTime, duration, schedule, description);
                listSearch.add(tour1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listSearch;

    }

        public static void main(String[] args) {
//            // Gọi phương thức getListTourbySearch
//            String searchKeyword = "Cần Thơ";
//            List<tour> searchResults = TourDao.getListTourbySearch(searchKeyword);
//
//            // Hiển thị kết quả
//            if (searchResults.isEmpty()) {
//                System.out.println("Không tìm thấy kết quả cho từ khóa: " + searchKeyword);
//            } else {
//                System.out.println("Kết quả tìm kiếm cho từ khóa: " + searchKeyword);
//                for (tour tour : searchResults) {
//                    System.out.println("Tour ID: " + tour.getId());
//                    System.out.println("Tên tour: " + tour.getName());
//                    // Hiển thị thêm các thông tin khác nếu cần
//                    System.out.println("----------------------------------");
//                }
//            }

                TourDao tourDao = new TourDao();
               ArrayList<Tour> tours = (ArrayList<Tour>) tourDao.getAllTourForIndex();
            for (Tour tour : tours) {
                // Thực hiện các thao tác với mỗi đối tượng tour ở đây
                System.out.println(tour.getName()); // Ví dụ in thông tin của mỗi tour
            }
        }

}
