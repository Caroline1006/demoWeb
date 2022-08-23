package com.example.demo.entity;

import java.util.Date;

public class User {
    private int uId;
    private String uName=null;
    private String uPassword=null;

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", uName='" + uName + ',' +
                ", uPassword='" + uPassword + ',' +
                '}';
    }

    public String getQueryCondition() {
        StringBuilder stringBuilder = new StringBuilder("1=1");
        if (uId != 0) {
            stringBuilder.append(" and uid=" + uId);
        }
        if (uName != null) {
            stringBuilder.append(" and uname= '" + uName + "'");
        }

        if (uPassword != null) {
            stringBuilder.append(" and uPassword= '" + uPassword + "'");
        }

        return stringBuilder.toString();
    }
}