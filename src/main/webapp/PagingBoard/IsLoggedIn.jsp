<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    //로그인 하지 않았다면 로그인 폼으로 이동
    if (session.getAttribute("UserId") == null) {
        JSFunction.alertLocation("로그인 후 이용해주십시오.",
                "../06Session/LoginForm.jsp", out);
        return;
    }
%>