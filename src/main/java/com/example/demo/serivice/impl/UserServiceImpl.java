package com.example.demo.serivice.impl;

import com.example.demo.Dao.UserDao;
import com.example.demo.Dao.impl.UserDaoImpl;
import com.example.demo.serivice.UserService;
import com.example.demo.entity.User;
import com.example.demo.util.JDBCUtil;

import java.sql.Connection;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();

    @Override
    public User login(String account, String password) {
        User user = new User();
        user.setuName(account);
        user.setuPassword(password);
        Connection conn = JDBCUtil.getConnection();
        User result = userDao.selectUserByCondition(conn, user);
        JDBCUtil.release(conn, null, null);
        return result;
    }

    @Override
    public User register(String account, String password) {
        return this.login(account, password);
    }

    @Override
    public void insert(String account, String password) {
        User user = new User();
        user.setuName(account);
        user.setuPassword(password);
        Connection conn = JDBCUtil.getConnection();
        userDao.insert(conn, account, password);
        JDBCUtil.release(conn, null, null);
    }

    @Override
    public void insertPath(String realPath,String filename) {
        Connection conn = JDBCUtil.getConnection();
        userDao.insertPath(conn, realPath,filename);
        JDBCUtil.release(conn, null, null);
    }

}