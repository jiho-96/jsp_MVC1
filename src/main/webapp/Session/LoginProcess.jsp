<%@ page import="membership.MemberDAO" %>
<%@ page import="membership.MemberDTO" %><%--
  Created by IntelliJ IDEA.
  User: COM
  Date: 2023-11-13
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String userID = request.getParameter("user_id");
    String userPwd = request.getParameter("user_pw");

    String MariaDriver = application.getInitParameter("MariaDriver");
    String MariaURL = application.getInitParameter("MariaURL");
    String MariaId = application.getInitParameter("MariaId");
    String MariaPwd = application.getInitParameter("MariaPwd");

    MemberDAO dao = new MemberDAO(MariaDriver, MariaURL, MariaId, MariaPwd);
    MemberDTO memberDTO = dao.getMemberDTO(userID, userPwd);
    dao.close();

    if (memberDTO.getId() != null) {
        session.setAttribute("UserId", memberDTO.getId());
        session.setAttribute("UserName", memberDTO.getName());
        response.sendRedirect("LoginForm.jsp");
    }
    else{
        request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
        request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
