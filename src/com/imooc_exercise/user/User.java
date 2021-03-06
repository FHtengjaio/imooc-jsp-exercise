package com.imooc_exercise.user;

public class User {
    private String account;
    private String name;
    private String password;

    public User(String account, String name, String password) {
        this.account = account;
        this.name = name;
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
