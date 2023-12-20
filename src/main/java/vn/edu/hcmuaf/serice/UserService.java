package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.DAO.UserDao;
import vn.edu.hcmuaf.bean.User;

public class UserService {
    private static UserService instance;
    public static UserService getInstance() {
        if (instance ==null) instance = new UserService();
        return instance;
    }
    public User checkLogin(String email,String pass) {
        User userbyEmail = UserDao.getUserByEmail(email);
        if(userbyEmail !=null && userbyEmail.getEmail().equals(email) && userbyEmail.getPassword().equals(pass))
            return userbyEmail;

        return null;
    }

    public static void main(String[] args) {
        String email = "admin@gmail.com";
        String pass ="1234567";

        UserService us = new UserService();
        User user = us.checkLogin(email, pass);
        System.out.println(user);
    }
}
