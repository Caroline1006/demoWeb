<%--退出登录--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    session.invalidate();
    response.setHeader("Refresh", "2,URL=/index.jsp");   //重定向到登陆界面
%>