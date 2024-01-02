package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.tour;
import vn.edu.hcmuaf.bean.valies;

import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.List;
import java.util.Date;

public class TourDao {
    Connection connection;
    ResultSet rs = null;
    PreparedStatement preparedStatement = null;

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
        try {
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

    public List<valies> getValiTour(ArrayList<valies> valiList) {
        List<valies> product = new ArrayList<>();
        try {
            if(valiList.size()>0){
                for(valies vl :valiList){
                    connection = ConnectToDatabase.getConnect();
                    String sql = "SELECT * FROM da_web.tours INNER JOIN da_web.valies on tours.id = valies.tourId where id =?";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setInt(1, vl.getId());
                    rs = preparedStatement.executeQuery();
                    while (rs.next()){
                        valies  row = new valies();
                        row.setId(rs.getInt("id"));
                        row.setNumAdult(vl.getNumChildren());
                        row.setNumAdult(vl.getNumAdult());
                        row.setTourId(rs.getInt("tourId"));
                        row.setUserId(rs.getInt("userId"));
                        product.add(row);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return product;
    }
}
