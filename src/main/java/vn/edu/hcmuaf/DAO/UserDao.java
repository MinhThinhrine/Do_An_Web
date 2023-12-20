package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.JDBIConnector;
import vn.edu.hcmuaf.bean.User;

import java.util.Optional;

public class UserDao {

    public static User getUserByEmail(String email) {
      Optional<User> user = JDBIConnector.get().withHandle((handle ->
                handle.createQuery("SELECT email, password, userName FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapToBean(User.class).stream().findFirst()

        ));
        return user.isEmpty() ? null : user.get();
    }





}
