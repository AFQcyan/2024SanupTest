<%@page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 

	String paramCId = request.getParameter("cId");

	String delSql = "DELETE FROM TBL_COURSE_202301 WHERE c_id = " + paramCId;
	Statement pstmt = conn.prepareStatement(delSql);
	
	pstmt.executeQuery(delSql);
	
	response.sendRedirect("showList.jsp");
%>