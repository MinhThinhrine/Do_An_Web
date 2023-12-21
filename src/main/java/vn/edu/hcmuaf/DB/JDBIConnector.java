package vn.edu.hcmuaf.DB;
import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.bean.User2;


import java.sql.SQLException;
import java.util.List;


public class JDBIConnector {
    private static Jdbi jdbi;
    static   String url = "jdbc:mysql://localhost:3306/db";
    static String username = "root";
    static  String password = "";
    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL(url);
        dataSource.setUser(username);
        dataSource.setPassword(password);
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        jdbi = Jdbi.create(dataSource);
    }


    private JDBIConnector() {
    }

    public static Jdbi get() {
        if(jdbi==null) makeConnect();
        return jdbi;
    }

    public static void main(String[] args) {
        List<User2> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT email, password, userName FROM users")
                        .mapToBean(User2.class)
                        .list()
        );

        System.out.println(users);
    }

}
