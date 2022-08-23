package com.example.demo.entity;

public class Path {
    private String name;

    private String path;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getQueryCondition() {
        StringBuilder stringBuilder = new StringBuilder("1=1");
        if (name != null) {
            stringBuilder.append(" and name= '" + name + "'");
        }

        return stringBuilder.toString();
    }
}
