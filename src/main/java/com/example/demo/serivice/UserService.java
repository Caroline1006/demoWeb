package com.example.demo.serivice;

import com.example.demo.entity.User;

public interface UserService {
    User login(String account, String password);
    User register(String account, String password);
    void insert(String account, String password);
    //将文件路径插入数据库中
    void insertPath(String realPath,String filename);

}
