package com.lab.epam.entity;

import com.lab.epam.transformer.Column;

import java.text.DecimalFormat;
import java.util.DoubleSummaryStatistics;

/**
 * Created by Dima on 27-May-15.
 */
public class OrderShowTable {
    private Integer id;
    private Integer count;
    private Double sum;
    private String status;
    private String name;
    private Double price;
    private String userLogin;

    public OrderShowTable(Integer count, String name, String userLogin, String status) {
        this.count = count;
        this.name = name;
        this.userLogin = userLogin;
        this.status = status;
    }

    public OrderShowTable(Integer id, Integer count, Double sum, String name, String status) {
        this.id = id;
        this.count = count;
        this.sum = sum;
        this.name = name;
        this.status = status;

        DecimalFormat df = new DecimalFormat("#.##");
        price = Double.valueOf(df.format(sum / count));
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
