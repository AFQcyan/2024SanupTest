<%@page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("utf-8");

	String paramCId = request.getParameter("c_id");
	String paramCName = request.getParameter("c_name");
	int paramCredit = Integer.parseInt(request.getParameter("credit"));
	String paramLId = request.getParameter("l_id");
	String paramWeek = request.getParameter("week");
	String paramStartHour = request.getParameter("start_hour");
	String paramEndHour = request.getParameter("end_hour");
	

	String modfSql = 
			"UPDATE TBL_COURSE_202301 SET"
			+ " c_name = '"
			+ paramCName
			+ "', credit = "
			+ paramCredit
			+ ", l_id = "
			+ paramLId
			+ ", week = "
			+ paramWeek
			+ ", start_hour = "
			+ paramStartHour
			+ ", end_hour = "
			+ paramEndHour
			+ " WHERE c_id = "
			+ paramCId
			;
	Statement pstmt = conn.prepareStatement(modfSql);
	
	pstmt.executeQuery(modfSql);
	
	response.sendRedirect("showList.jsp");
%>