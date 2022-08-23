package com.example.demo.filter;

import com.example.demo.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if (url.equals("/login") ||url.equals("/") ||url.equals("/register") || url.equals("index.jsp")||url.equals("/pages/register/register.jsp")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            httpResponse.sendRedirect("/");
            return;
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
