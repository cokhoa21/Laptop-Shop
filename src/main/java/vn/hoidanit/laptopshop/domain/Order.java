package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private double totalPrice;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany( mappedBy = "order")
    List<OrderDetail> orderDetails;
    // user id

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Order [id=" + id + ", totalPrice=" + totalPrice + "]";
    }

}