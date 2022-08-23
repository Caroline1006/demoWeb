package com.example.demo.Dao.impl;

import com.example.demo.Dao.UserDao;
import com.example.demo.entity.Path;
import com.example.demo.entity.User;
import com.example.demo.util.JDBCUtil;

import java.sql.*;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public List<User> selectAllUser(Connection conn) {
        return null;
    }

    @Override
    public User selectUserByCondition(Connection conn, User user) {
        String sql = "select * from user where " + user.getQueryCondition();
        Statement statement = null;
        ResultSet rs = null;
        User result = new User();
        try {
            statement = conn.createStatement();    //数据库连接，可能获取不到链接。异常项抛出
            rs = statement.executeQuery(sql);
            if (rs.next()) {          //判断，登陆成功，将数据传过去
                result.setuId(rs.getInt("uid"));
                result.setuPassword(rs.getString("upassword"));
                result.setuName(rs.getString("uname"));

            } else {     //else没查到
                return null;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {  //实现关闭
            try {
                assert rs != null;
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return result;
    }

    @Override
    public Path selectfileByCondition(Connection conn, Path path) {
        String sql = "  select * from path where  " + path.getQueryCondition();
        Statement statement = null;
        ResultSet rs = null;
        Path result = new Path();
        try {
            statement = conn.createStatement();    //数据库连接，可能获取不到链接。异常项抛出
            rs = statement.executeQuery(sql);
            if (rs.next()) {          //判断，登陆成功，
                result.setName(rs.getString("name"));
                result.setPath(rs.getString("path"));
            } else {     //else没查到
                return null;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return result;
    }


    @Override
    public boolean insert(Connection conn, String account, String password) {
        PreparedStatement ps = null;
        String sql = "insert into user values(?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, account);
            ps.setString(3, password);
            int result = ps.executeUpdate();
            if (result == 1) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean insertPath(Connection conn, String realPath,String filename) {
        PreparedStatement ps = null;
        String sql = "insert into path values(?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, filename);
            ps.setString(2, realPath);
            int result = ps.executeUpdate();
            if (result == 1) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}

