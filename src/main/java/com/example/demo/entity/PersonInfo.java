package com.example.demo.entity;

public class PersonInfo {
    private String unickname;

    private String ugender;

    private String ubirthday;

    private String udesc;

    public String getUnickname() {
        return unickname;
    }

    public void setUnickname(String unickname) {
        this.unickname = unickname;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }

    public String getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(String ubirthday) {
        this.ubirthday = ubirthday;
    }

    public String getUdesc() {
        return udesc;
    }

    public void setUdesc(String udesc) {
        this.udesc = udesc;
    }
    public String getQueryCondition() {
        StringBuilder stringBuilder = new StringBuilder("1=1");
        if (ubirthday != null) {
            stringBuilder.append(" and uname= '" + ubirthday + "'");
        }
        if (ugender != null) {
            stringBuilder.append(" and uPassword= '" + ugender + "'");
        }
        if (unickname != null) {
            stringBuilder.append(" and uPassword= '" + unickname + "'");
        }

        if (udesc != null) {
            stringBuilder.append(" and uPassword= '" + udesc + "'");
        }

        return stringBuilder.toString();
    }
}
