<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.qst.itofferbacker.dao.UserDAO" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="com.qst.itofferbacker.javabean.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
UserDAO dao = new UserDAO();
dao.update(user);
response.sendRedirect("userList.jsp");
%>