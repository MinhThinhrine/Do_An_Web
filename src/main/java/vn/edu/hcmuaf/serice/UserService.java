package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.DAO.UserDao2;
import vn.edu.hcmuaf.bean.User2;

public class UserService {
    private static UserService instance;
    public static UserService getInstance() {
        if (instance ==null) instance = new UserService();
        return instance;
    }
    public User2 checkLogin(String email, String pass) {
        User2 userbyEmail = UserDao2.getUserByEmail(email);
        if(userbyEmail !=null && userbyEmail.getEmail().equals(email) && userbyEmail.getPassword().equals(pass))
            return userbyEmail;

        return null;
    }

    public static void main(String[] args) {
        String email = "admin@gmail.com";
        String pass ="1234567";

        UserService us = new UserService();
        User2 user = us.checkLogin(email, pass);
        System.out.println(user);
    }
}
