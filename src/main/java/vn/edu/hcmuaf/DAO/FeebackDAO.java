package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FeebackDAO {
    public static boolean addFeedback(int idUser, String text){
        String sql = "insert into feedbacks(userId,text,date) values (?,?,CURDATE())";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, idUser);
            pst.setString(2, text);
            pst.executeUpdate();
            kq = true;
        } catch (Exception e) {
            System.out.println("Lỗi khi thêm feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
        return kq;
    }

    public static void deleteFeedback(int id){
        String sql = "delete from feedbacks where id = ?";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, id);
            pst.executeUpdate();
            kq = true;
        } catch (Exception e) {
            System.out.println("Lỗi khi xóa feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
    }

    public static void updateFeedback(String text,int id){
        String sql = "UPDATE feedbacks set text =? where id = ?";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, text);
            pst.setInt(2, id);
           int row = pst.executeUpdate();
           if (row>0) {
               kq = true;
           }
        } catch (Exception e) {
            System.out.println("Lỗi khi sửa feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
    }


    public static void main(String[] args) {
        new FeebackDAO().deleteFeedback(10);
    }
    }

