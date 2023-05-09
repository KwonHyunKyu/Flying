<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="../css/memberManage.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> flying </title>
</head>
<body>
<header>
    <jsp:include page="../module/header2.jsp" flush="false" />
</header>

<h2>Flying 회원목록</h2>
<div id="membertable" align="center">
	<table width="80%" border="1" >
		<thead>
			<tr>
				<td>회원아이디</td><td>비밀번호</td><td>회원이름</td><td>회원타입</td><td>회원연락처</td><td>회원이메일</td>
			</tr>
		</thead>
		<%
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection conn = null;
			Statement stmt= null;
			ResultSet rs = null;
			
			try {
				String jdbcDriver = "jdbc:mysql://192.168.219.104:3306/flyingdb?useUnicode=true&CharacterEncoding=utf-8";
				String dbUser = "root";
				String dbPass = "flying";
						
				String query ="select * from membertable order by memberid";
				
				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				
				stmt=conn.createStatement();
				rs = stmt.executeQuery(query);
				while(rs.next()) {
		%>		<tbody>
					<tr>
						<td><%= rs.getString("memberid") %></td>
						<td><%= rs.getString("password") %></td>
						<td><%= rs.getString("membername") %></td>
						<td><%= rs.getString("membertype") %></td>
						<td><%= rs.getString("phonenumber") %></td>
						<td><%= rs.getString("email") %></td>
					</tr>
				</tbody>
				<% } %>
			
			<form action="memberManageProcess.jsp">
				<input type="text" placeholder="삭제할 회원아이디" id="delete" name="deletename">
				<div id="DeleteButton">
					<input type="submit" value="회원삭제" id="button">
				</div>
			</form>		
		<%	
			} catch(SQLException ex) {
				out.println(ex.getMessage());
				ex.printStackTrace();
			} finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
				if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
				if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			}
		%>
	</table>
</div>
</body>
</html>