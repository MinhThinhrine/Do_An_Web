package vn.edu.hcmuaf.bean;

import java.util.Date;

public class feedback {
    private int id;
    private int userEmail;
    private String text;
    private Date date;

    public feedback() {
    }

    public feedback(int id, int userEmail, String text, Date date) {
        this.id = id;
        this.userEmail = userEmail;
        this.text = text;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(int userEmail) {
        this.userEmail = userEmail;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "feedback{" +
                "id=" + id +
                ", userEmail=" + userEmail +
                ", text='" + text + '\'' +
                ", date=" + date +
                '}';
    }
}
