package vn.edu.hcmuaf.DAO;



import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class userDAO implements objectDAO {

    public static Map<Integer, user> mapuser = loaduserbyID();
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    public userDAO() {
    }

    //Dung lam gi ko biet @@
    public static Map<Integer, user> loaduserbyID() {
        Map<Integer, user> mapTemp = new HashMap<>();
        try {
            String sql = "select * from users";
            ResultSet rs = new ConnectToDatabase().executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                int phoneNumber = rs.getInt(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                user user = new user(id, userName, email, password, phoneNumber, address, roleId);
                mapTemp.put(user.getId(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    // Kiem tra xem email nay co ton tai chua hoac bị trung lap khong
    // Neu da bi trung se chuyen thanh 1 tai khoan
    public static Map<String, user> checkMail() {
        Map<String, user> maptempMail = new HashMap<>();
        try {
            String sql = "Select * from users";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int idforEmail = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                int phoneNumber = rs.getInt(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                user user = new user(idforEmail, userName, email, password, phoneNumber, address, roleId);
                maptempMail.put(user.getEmail(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return maptempMail;

    }

    @Override
    public boolean add(Object obj) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public boolean edit(String id, Object obj) {
        return false;
    }

    @Override
    public void read() {

    }

    public static void main(String[] args) {
        userDAO user = new userDAO();
        Map<String, user> maptest = user.checkMail();

        for (user u : maptest.values()) {
            System.out.println(u.toString());
        }
    }
}
