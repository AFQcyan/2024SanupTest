<%@page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");

	String cId = request.getParameter("c_id");
	String cName = request.getParameter("c_name");
	String credit = request.getParameter("credit");
	String lId = request.getParameter("l_id");
	String week = request.getParameter("week");
	String startHour = request.getParameter("start_hour");
	String endHour = request.getParameter("end_hour");

	String insSql = "INSERT INTO TBL_COURSE_202301 VALUES(?,?,?,?,?,?,?)";

	PreparedStatement pstmt = conn.prepareStatement(insSql);
	
	pstmt.setString(1, cId);
	pstmt.setString(2, cName);
	pstmt.setString(3, credit);
	pstmt.setString(4, lId);
	pstmt.setString(5, week);
	pstmt.setString(6, startHour);
	pstmt.setString(7, endHour);
	
	pstmt.executeQuery();
	
	response.sendRedirect("showList.jsp");
%>
    