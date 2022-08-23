package com.example.demo.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtil {
    private static final String driver;
    private static final String url;
    private static final String userName;
    private static final String password;

    static {
        InputStream is = JDBCUtil.class.getClassLoader().getResourceAsStream("db.properties");
        Properties properties = new Properties();
        try {

            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = properties.getProperty("driver");
        url = properties.getProperty("url");
        userName = properties.getProperty("username");
        password = properties.getProperty("password");
    }

    // 获取数据库连接
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, userName, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

        }
        return con;
    }

    // 数据库查询，返回结果集
    public static ResultSet query(Connection con, PreparedStatement st, ResultSet rs, String sql
            , Object[] params) throws SQLException {
        st = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        if (params != null) {
            for (int i = 0; i < params.length; i++) {
                st.setObject(i + 1, params[i]);
            }
        }
        rs = st.executeQuery();
        return rs;
    }

    // 数据库增删改
    public static int update(Connection con, String sql
            , Object[] params, ResultSet rs, PreparedStatement st) throws SQLException {
        st = con.prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            st.setObject(i + 1, params[i]);
        }
        return st.executeUpdate();
    }

    // 关闭数据库连接
    public static void release(Connection con, Statement st, ResultSet rs) {
        boolean flag = true;

        if (rs != null) {
            try {
                rs.close();
                rs = null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }

        if (st != null) {
            try {
                st.close();
                st = null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }

        if (con != null) {
            try {
                con.close();
                con = null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }
    }
}
