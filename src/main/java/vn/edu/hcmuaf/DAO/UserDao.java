package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.JDBIConnector;
import vn.edu.hcmuaf.bean.User;

import java.util.Optional;

public class UserDao {

    public static User checkLogin1(String email, String password) {
        Optional<User> user1 = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM users WHERE emailUser = :email AND password = :password")
                        .bind("email", email)
                        .bind("password", password)
                        .mapToBean(User.class)
                        .findFirst()
        );
        return user1.orElse(null);

    }

    public static void main(String[] args) {
        String email = "admin@gmail.com";
          String pass = "1234567";
        System.out.println(checkLogin1(email,pass));
    }




}
