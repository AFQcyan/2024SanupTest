<%@page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>

<%
	
	request.setCharacterEncoding("UTF-8");

	String listSql = "SELECT * FROM TBL_COURSE_202301 cr, TBL_LECTURER_202301 lc WHERE cr.l_id = lc.l_id";
	PreparedStatement pstmt = conn.prepareStatement(listSql);
	
	ResultSet rs = pstmt.executeQuery();


	
%>

<h2 id='cont-title'>
	교과목 목록
</h2>
<div id='inner-container'>
<form action='d_action.jsp'>
<table border="1">
	<thead>
		<tr>
			<th>과목코드</th>
			<th>과목명</th>
			<th>학점</th>
			<th>담당강사</th>
			<th>요일</th>
			<th>시작시간</th>
			<th>종료시간</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<%
			while(rs.next()) {
				
				String[] day = {"월", "화", "수", "목", "금"};
				
				String cId = rs.getString("c_id");
				String cName = rs.getString("c_name");
				String credit = rs.getString("credit");
				String lId = rs.getString("l_id");
				int week = Integer.parseInt(rs.getString("week"));
				int startHour = Integer.parseInt(rs.getString("start_hour"));
				int endHour = Integer.parseInt(rs.getString("end_hour"));
				String lName = rs.getString("l_name");
				String major = rs.getString("major");
				
				
				%>
				
				<tr>
					<td><a href='modify.jsp?cId=<%= cId %>'><%= cId %></a></td>
					<td><%= cName %></td>
					<td><%= credit %></td>
					<td><%= lName %></td>
					<td><%= day[week - 1] %>요일</td>
					<td><%= startHour / 100 > 9 ? startHour / 100 : "0" + startHour / 100%>시 <%= startHour % 100 > 9 ? startHour % 100 : "0" + startHour % 100 %>분</td>
					<td><%= endHour / 100 > 9 ? endHour / 100 : "0" + endHour / 100%>시 <%= endHour % 100 > 9 ? endHour % 100 : "0" + endHour % 100 %>분</td>
					<td><a href="d_action.jsp?cId=<%= cId %>">삭제</a></td>
					
				</tr>
				
				<%
				
				
			}
		%>			
	</tbody>
</table>
</form>
</div>

<%@ include file="./footer.jsp"%>
    