package com.example.demo.serivice.impl;

import com.example.demo.Dao.UserDao;
import com.example.demo.Dao.impl.UserDaoImpl;
import com.example.demo.entity.Path;
import com.example.demo.serivice.DisplayService;
import com.example.demo.util.JDBCUtil;

import java.sql.Connection;


public class DisplayServiceImpl implements DisplayService {
    UserDao userDao = new UserDaoImpl();
    @Override
    public void select(String name) {
        Path path = new Path();
        path.setName(name);
        Connection conn = JDBCUtil.getConnection();
        Path result = userDao.selectfileByCondition(conn, path);
        JDBCUtil.release(conn, null, null);
    }
}
