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
	교과목 추가
</h2>
<div id='inner-container'>
	<table border="1">
		
		<tbody>
		<form action="i_action.jsp" method="post" id='insert_form'>
		
		
				
				<tr>
				<td>과목코드</td>
				<td><input type="text" id='c_id' name='c_id' value=''/>
				</td>
			</tr>
			<tr>
				<td>과목명</td>
				<td><input type="text" id='c_name' name='c_name' value=''/></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input type="number" id='credit' name='credit' value=''/></td>
			</tr>
			<tr>
				<td>담당강사</td>
				<td>
				<select id='l_id' name='l_id' required>
					<option value='담당강사' disabled selected>담당강사</option>
					<option value='1'>김교수</option>
					<option value='2'>이교수</option>
					<option value='3'>박교수</option>
					<option value='4'>우교수</option>
					<option value='5'>최교수</option>
					<option value='6'>임교수</option>
				</select></td>
			</tr>
			<tr>
				<td>요일</td>
				<td id="weeks">
					<input type="radio" value="1" name="week" id="mon">
					<label for="mon">월</label>
					<input type="radio" value="2" name="week" id="tue">
					<label for="tue">화</label>
					<input type="radio" value="3" name="week" id="wed">
					<label for="wed">수</label>
					<input type="radio" value="4" name="week" id="thu">
					<label for="thu">목</label>
					<input type="radio" value="5" name="week" id="fri">
					<label for="fri">금</label>
				</td>
			</tr>
			<tr>
				<td>시작시간</td>
				<td><input type="number" name='start_hour' id="start_hour" value=""></td>
			</tr>
			<tr>
				<td>종료시간</td>
				<td><input type="number" name='end_hour' id="end_hour" value=""></td>
			</tr>
			<tr>
			<td colspan="2">
				<button type="button" onclick="validate()">추가</button>
				<button type="button" onclick="window.location.href='showList.jsp'">목록</button>
			</td>
				
			</tr>
		</form>
			
		</tbody>
	
	</table>
</div>
<script>
	function validate() {
		const form = document.getElementById("insert_form");
		const cId = document.getElementById("c_id").value;
		const cName = document.getElementById("c_name").value;
		const credit = document.getElementById("credit").value;
		const lId = document.getElementById("l_id").value;
		const week = document.querySelectorAll("input[name='week']");
		
		let weekValue = 0;
		
		[...week].filter((x) => x.checked).forEach((x) => {
				weekValue = x.value;				
		})
		
		const startHour = document.getElementById("start_hour").value;
		const endHour = document.getElementById("end_hour").value;
		
		if(cId == "") {
			alert("과목 코드가 입력되지 않았습니다.");
			return;
		}
		if(cName == "") {
			alert("과목명이 입력되지 않았습니다.");
			return;
		}
		if(credit == "") {
			alert("학점이 입력되지 않았습니다.");
			return;
		}
		if(lId == "" || lId == "담당강사") {
			alert("담당강사가 선택되지 않았습니다.");
			return;
		}
		if(weekValue == 0) {
			alert("요일이 선택되지 않았습니다.");
			return;
		}
		if(startHour == "") {
			alert("시작 시간이 입력되지 않았습니다.");
			return;
		}
		if(endHour == "") {
			alert("종료 시간이 입력되지 않았습니다.");
			return;
		}
		
		alert("교과목 등록이 완료되었습니다!");
		form.submit();
		
	}
</script>
<%@ include file="./footer.jsp"%>
    