package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.JDBIConnector;
import vn.edu.hcmuaf.bean.User2;

import java.util.Optional;

public class UserDao2 {

    public static User2 getUserByEmail(String email) {
      Optional<User2> user = JDBIConnector.get().withHandle((handle ->
                handle.createQuery("SELECT email, password, userName FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapToBean(User2.class).stream().findFirst()

        ));
        return user.isEmpty() ? null : user.get();
    }





}
