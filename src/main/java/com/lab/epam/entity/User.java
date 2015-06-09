package com.lab.epam.entity;

import com.lab.epam.transformer.Column;
import com.lab.epam.transformer.Table;

@Table("users")
public class User {
    @Column("id")
    private int id;
    @Column("name")
    private String name;
    @Column("surename")
    private String surname;
    @Column("password")
    private String password;
    @Column("login")
    private String login;
    @Column("phoneNumber")
    private Integer phoneNumber;
    @Column("role")
    private String role;
    @Column("email")
    private String email;
    @Column("confirm")
    private String confirm;

    public User(String name, String surname, String password,
                String login, Integer phoneNumber, String role, String email, String confirm) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.login = login;
        this.phoneNumber = phoneNumber;
        this.role = role;
        this.email = email;
        this.confirm = confirm;
    }

    public User(int id, String name, String surname, String password,
                String login, Integer phoneNumber, String role) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.login = login;
        this.phoneNumber = phoneNumber;
        this.role = role;
    }

    public User(String name, String surename, String password, String login,
                Integer phoneNumber, String email, String confirm) {
        this.name = name;
        this.surname = surename;
        this.password = password;
        this.login = login;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.confirm = confirm;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", name=" + name + ", surname=" + surname
                + ", password=" + password + ", login=" + login
                + ", phoneNumber=" + phoneNumber + ", role=" + role + "]";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public Integer getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Integer phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public User() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }
}
