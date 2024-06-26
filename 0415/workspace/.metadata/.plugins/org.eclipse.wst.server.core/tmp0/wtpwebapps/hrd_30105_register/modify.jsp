<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>

<%

String cId = request.getParameter("cId");

String listSql = "SELECT * FROM TBL_COURSE_202301 cr, TBL_LECTURER_202301 lc WHERE cr.l_id = lc.l_id AND cr.c_id = '" + cId + "'";

PreparedStatement pstmt = conn.prepareStatement(listSql);

ResultSet rs =  pstmt.executeQuery();


%>

<%@ include file="./header.jsp"%>

<h2 id='cont-title'>
	교과목 수정
</h2>

<div id='inner-container'>
	<table border="1">
		
		<tbody>
		<form action="m_action.jsp" method="post">
		
		<%
			while(rs.next()) {
				String cName = rs.getString("c_name");
				int credit = Integer.parseInt(rs.getString("credit"));
				String lName = rs.getString("l_name");
				int week = Integer.parseInt(rs.getString("week"));
				String startHour = rs.getString("start_hour");
				String endHour = rs.getString("end_hour");	
				
				while(startHour.length() < 4) {
					startHour = "0" + startHour;										
				}
				
				while(endHour.length() < 4) {
					endHour = "0" + endHour;										
				}
				
				%> 
				
				<tr>
				<td>과목코드</td>
				<td><input type="text" readonly id='c_id' name='c_id' value='<%= cId %>'/>
				</td>
			</tr>
			<tr>
				<td>과목명</td>
				<td><input type="text" id='c_name' name='c_name' value='<%= cName %>'/></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input type="number" id='credit' name='credit' value='<%= credit %>'/></td>
			</tr>
			<tr>
				<td>담당강사</td>
				<td>
				<select id='l_name' name='l_id' required>
					<option value='담당강사' disabled><%= lName %></option>
					<option value='1' <%= lName.equals("김교수") ? "selected" : "" %>>김교수</option>
					<option value='2' <%= lName.equals("이교수") ? "selected" : "" %>>이교수</option>
					<option value='3' <%= lName.equals("박교수") ? "selected" : "" %>>박교수</option>
					<option value='4' <%= lName.equals("우교수") ? "selected" : "" %>>우교수</option>
					<option value='5' <%= lName.equals("최교수") ? "selected" : "" %>>최교수</option>
					<option value='6' <%= lName.equals("임교수") ? "selected" : "" %>>임교수</option>
				</select></td>
			</tr>
			<tr>
				<td>요일</td>
				<td>
					<input type="radio" value="1" name="week" <%= week == 1 ? "checked" : "" %> id="mon">
					<label for="mon">월</label>
					<input type="radio" value="2" name="week" <%= week == 2 ? "checked" : "" %> id="tue">
					<label for="tue">화</label>
					<input type="radio" value="3" name="week" <%= week == 3 ? "checked" : "" %> id="wed">
					<label for="wed">수</label>
					<input type="radio" value="4" name="week" <%= week == 4 ? "checked" : "" %> id="thu">
					<label for="thu">목</label>
					<input type="radio" value="5" name="week" <%= week == 5 ? "checked" : "" %> id="fri">
					<label for="fri">금</label>
				</td>
			</tr>
			<tr>
				<td>시작시간</td>
				<td><input type="number" name='start_hour' value="<%= startHour %>"></td>
			</tr>
			<tr>
				<td>종료시간</td>
				<td><input type="number" name='end_hour' value="<%= endHour %>"></td>
			</tr>
			<tr>
			<td colspan="2">
				<button onclick="alert('교과목 수정이 완료되었습니다!')" type="submit">수정</button>
				<button type="button" onclick="alert('교과목 수정이 취소되었습니다!'); window.location.reload();">취소</button>
			</td>
				
			</tr>				
				
				<%
			}
		%>
		</form>
			
		</tbody>
	
	</table>
</div>

<%@ include file="./footer.jsp"%>
