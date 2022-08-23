//注册功能
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

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, UnsupportedEncodingException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("test/html;charset=utf-8");
        User user = new User();
        user.setuName(req.getParameter("account"));
        user.setuPassword(req.getParameter("password"));
        UserService userService = new UserServiceImpl();
        User result = userService.register(user.getuName(), user.getuPassword());
        if (result == null) {  //如果用户账号没有注册过
            userService.insert(user.getuName(), user.getuPassword());
            resp.sendRedirect("/pages/index/index.jsp");
            System.out.println("注册成功");
        } else {   //如果用户账号已经注册过，提示重新注册;
            System.out.println("账号已经注册过，请重新注册");
        }
    }
}
