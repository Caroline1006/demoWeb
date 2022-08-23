package com.example.demo.Dao;

import com.example.demo.entity.Path;
import com.example.demo.entity.User;

import java.sql.Connection;
import java.util.List;

public interface UserDao {
    List<User> selectAllUser(Connection conn);
    User selectUserByCondition(Connection conn,User user);

    Path selectfileByCondition(Connection conn, Path path);
    boolean insert(Connection conn,String account, String password);

    boolean insertPath(Connection conn,String realPath,String filename);

}
