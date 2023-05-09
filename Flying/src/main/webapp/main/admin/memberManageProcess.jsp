<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String memberID = request.getParameter("deletename");

	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	String jdbcDriver = "jdbc:mysql://192.168.219.104:3306/flyingdb?characterEncoding=utf-8";
	String dbUser="root";
	String dbPass="flying";
		
	conn= DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	String sql="delete from membertable where memberid=?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberID);
		pstmt.executeUpdate();
	} finally {
		if (pstmt != null) try { pstmt.close();} catch(SQLException ex) {}
		if (conn != null) try { conn.close();} catch(SQLException ex) {}
	}
	
%>
<script>
	alert("<%=memberID %>회원을 탈퇴시켰습니다.");
	location.href = 'memberManage.jsp';
</script>