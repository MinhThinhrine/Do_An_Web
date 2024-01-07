package vn.edu.hcmuaf.DAO;



import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDAO implements objectDAO {

    public static Map<Integer, User> mapuser = loaduserbyID();
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    public UserDAO() {
    }
    private static Connection connection;

    // Constructor để nhận kết nối từ bên ngoài
    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    //Dung lam gi ko biet @@
    public static Map<Integer, User> loaduserbyID() {
        Map<Integer, User> mapTemp = new HashMap<>();
        try {
            String sql = "select * from users";
            ResultSet rs = new ConnectToDatabase().executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String phoneNumber = rs.getString(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                User user = new User(id, userName, email, password, phoneNumber, address, roleId);
                mapTemp.put(user.getId(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    // Kiem tra xem email nay co ton tai chua hoac bị trung lap khong
    // Neu da bi trung se chuyen thanh 1 tai khoan
    public static Map<String, User> checkMail() {
        Map<String, User> maptempMail = new HashMap<>();
        try {
            String sql = "Select * from users";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int idforEmail = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String phoneNumber = rs.getString(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                User user = new User(idforEmail, userName, email, password, phoneNumber, address, roleId);
                maptempMail.put(user.getEmail(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return maptempMail;

    }
    public static User getUserByEmail(String email) {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Chuẩn bị truy vấn SQL với tham số
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM users where email =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);

            // Thực hiện truy vấn
            resultSet = preparedStatement.executeQuery();

            // Xử lý kết quả trả về từ ResultSet
            if (resultSet.next()) {
                // Lấy thông tin người dùng từ ResultSet và tạo đối tượng User
                int userId = resultSet.getInt(1);
                String userName = resultSet.getString(2);
                String userEmail = resultSet.getString(3);
                String userPassword = resultSet.getString(4);
                String phoneNumber = resultSet.getString(5);
                String address = resultSet.getString(6);
                int roleId = resultSet.getInt(7);

                User user = new User(userId, userName, userEmail, userPassword, phoneNumber, address, roleId);
                return user;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tất cả các resource
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null; // Trả về null nếu không tìm thấy người dùng
    }

    public static User checkLogin(String email, String pass) {
        User userbyEmail;
        userbyEmail = getUserByEmail(email);
        if(userbyEmail !=null && userbyEmail.getEmail().equals(email) && userbyEmail.getPassword().equals(pass))
            return userbyEmail;

        return null;
    }
    public List<User> getAllUser() {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        List<User> list = new ArrayList<>();

        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM users";
            preparedStatement = connection.prepareStatement(sql);


            // Thực hiện truy vấn
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt(1);
                String userName = resultSet.getString(2);
                String userEmail = resultSet.getString(3);
                String userPassword = resultSet.getString(4);
                String phoneNumber = resultSet.getString(5);
                String address = resultSet.getString(6);
                int roleId = resultSet.getInt(7);
                User user = new User(userId, userName, userEmail, userPassword, phoneNumber, address, roleId);
                list.add(user);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void addUser(User user) {
        PreparedStatement preparedStatement = null;




        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);


            // Thực hiện truy vấn

            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            preparedStatement.executeUpdate();
        } catch (Exception e) {
        }

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


//    public static void main(String[] args) {
//        userDAO user = new userDAO();
//        Map<String, User> maptest = user.checkMail();
//
//        for (User u : maptest.values()) {
//            System.out.println(u.toString());
//        }
//    }
    public static void main(String[] args) {



 /// check all user
//        UserDAO userDao = new UserDAO();
//
//            List<User> u = userDao.getAllUser();
//            for(User us : u) {
//                System.out.println(us.getUserName());
//            }


            /// add User
        String name = "maithuc1";
        String pass = "1223112";
        String email="maithuc1@gmail.com";
                UserDAO userDao = new UserDAO();
                userDao.addUser(new User(name,email,pass));



    }
}
