package vn.edu.hcmuaf.bean;

public class bills {
    private int id;
    private int valiId;
    private String paymentMethod;
    private double toltalPrice;
    private String status;

    public bills() {
    }

    public bills(int id, int valiId, String paymentMethod, double toltalPrice, String status) {
        this.id = id;
        this.valiId = valiId;
        this.paymentMethod = paymentMethod;
        this.toltalPrice = toltalPrice;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getValiId() {
        return valiId;
    }

    public void setValiId(int valiId) {
        this.valiId = valiId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getToltalPrice() {
        return toltalPrice;
    }

    public void setToltalPrice(double toltalPrice) {
        this.toltalPrice = toltalPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "bills{" +
                "valiId=" + valiId +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", toltalPrice=" + toltalPrice +
                ", status='" + status + '\'' +
                '}';
    }
}
