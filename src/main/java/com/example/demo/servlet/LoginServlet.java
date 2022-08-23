//登录功能

package com.example.demo.servlet;

import com.example.demo.entity.User;
import com.example.demo.serivice.UserService;
import com.example.demo.serivice.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, UnsupportedEncodingException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("test/html;charset=utf-8");
        User user = new User();
        user.setuName(req.getParameter("account"));
        user.setuPassword(req.getParameter("password"));
        UserService userService = new UserServiceImpl();
        User result = userService.login(user.getuName(), user.getuPassword());
        if (result != null) {
            req.getSession().setAttribute("user", result);
            resp.sendRedirect("/pages/index/index.jsp");
        } else {
            resp.sendRedirect("index.jsp");
        }
    }
}
