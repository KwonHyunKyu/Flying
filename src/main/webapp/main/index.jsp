<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/index.css">

<%
	String memLogin = (String)session.getAttribute("memLogin");
	String memId = (String)session.getAttribute("memID");
	String adminTrue= (String)session.getAttribute("UserAdmin");
	String memType= "";
	String memCheck = "기업회원";
	
	if(memLogin != null)
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = null;	
		Statement stmt= null;
		ResultSet rs = null;
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/flyingdb?useUnicode=true&CharacterEncoding=utf-8";
			String dbUser = "root";
			String dbPass = "flying";
				
			String sql ="select * from membertable where memberid = '" + memId + "'";
			conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				rs.getString("membertype");
				memType = rs.getString("membertype");
				//session.setAttribute("memType", rs.getString("membertype"));
			}
			
		}
		catch(SQLException e) {
			out.println(e.getMessage());
			e.printStackTrace();
		} 
		finally {
			if (rs != null) try { rs.close();} catch(SQLException ex) {}
			if (stmt != null) try { stmt.close();} catch(SQLException ex) {}
			if (conn != null) try { conn.close();} catch(SQLException ex) {}
  		}
	}
%>
<!DOCTYPE html>
<html>

<head>
<header>
    <jsp:include page="module/header.jsp" flush="false" />
</header>
<meta charset="UTF-8">
<title>Flying</title>
<br>
<br>
<main>
<% if(memType.equals(memCheck)) {%>
    <div class="image-container-company">
      <img src="img/StudyCafeListTum1.jpg" alt="이미지 1">
    </div>
<div class="companyindex">
<h1>점장님! 카페정보를 등록해주세요!</h1>
<button type=submit class="companybtn" onclick="location.href='business-admin/seat-registration.jsp'">카페등록하기</button>
</div>

<% } else{ %>
<div class="search-container">
  <form action="search.jsp" method="GET"> <!-- 검색 결과를 보여줄 페이지로의 액션 추가 -->
    <input type="text" name="keyword" placeholder="원하는 스터디카페를 검색해보세요...">
    <button type="submit" class="search-btn">검색<i class="fa fa-search"></i></button>
  </form>
</div>

	
  </div>
   <div class="gallery-container" onclick="location.href='reservation/seatReservation.jsp'">
     <!-- 갤러리 예약 영역 -->
   <div class="image-container" onclick="location.href='reservation/seatReservation.jsp'">
    
      <img src="img/StudyCafeListTum1.jpg" alt="이미지 1">
      <div class="image-title">철썩 스터디카페 홍대점</div>
      <div class="image-description"></div>
      <div class="rating-container">
	  	<span class="star">&#9733;</span>
	    <span class="star">&#9733;</span>
	    <span class="star">&#9733;</span>
	    <span class="star">&#9733;</span>
	    <span class="star">&#9734;</span>
	    <span class="rating-text">4.0 (109)</span>
       </div>

      <div class="image-tags">
        <div class="image-tag">#조용해요</div>
        <div class="image-tag">#커피무료</div>
        <div class="image-tag">#오픈행사중</div>
      </div>

    </div>
    
    <div class="image-container">
      <img src="img/StudyCafeListTum2.jpg" alt="이미지 2">
      <div class="image-title">블루 스터디카페 영등포점</div>
      <div class="image-description"></div>
    <div class="rating-container">
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9734;</span>
	  <span class="rating-text">4.0 (109)</span>
    </div>

      <div class="image-tags">
        <div class="image-tag">#미성년자가능</div>
        <div class="image-tag">#커피무료</div>
        <div class="image-tag">#시간무료연장</div>
      </div>
     
    </div>
    <div class="image-container">
      <img src="img/StudyCafeListTum3.jpg" alt="이미지 3">
      <div class="image-title">시크릿 스터디카페 광명점</div>
      <div class="image-description"></div>
    <div class="rating-container">
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9733;</span>
	  <span class="star">&#9734;</span>
	  <span class="rating-text">4.0 (109)</span>
    </div>



      <div class="image-tags">
        <div class="image-tag">#주차가능</div>
        <div class="image-tag">#할인중</div>
        <div class="image-tag">#무소음</div>
      </div>
 
    </div>
</div>
  
    <div class="gallery-container" onclick="location.href='reservation/seatReservation.jsp'">
    <!-- 갤러리 예약 영역 -->
    <div class="image-container">
      <img src="img/StudyCafeListTum1.jpg" alt="이미지 1">
      <div class="image-title">호그와트 스터디카페 구로점</div>
      <div class="image-description"></div>
     <div class="rating-container">
  	<span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9734;</span>
  <span class="rating-text">4.0 (109)</span>
</div>

      <div class="image-tags">
        <div class="image-tag">#조용해요</div>
        <div class="image-tag">#커피무료</div>
        <div class="image-tag">#오픈행사중</div>
      </div>

    </div>
    <div class="image-container">
      <img src="img/StudyCafeListTum2.jpg" alt="이미지 2">
      <div class="image-title">스프링 스터디카페 강남점</div>
      <div class="image-description"></div>
    <div class="rating-container">
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9734;</span>
  <span class="rating-text">4.0 (109)</span>
</div>

      <div class="image-tags">
        <div class="image-tag">#미성년자가능</div>
        <div class="image-tag">#커피무료</div>
        <div class="image-tag">#시간무료연장</div>
      </div>
     
    </div>
    <div class="image-container">
      <img src="img/StudyCafeListTum3.jpg" alt="이미지 3">
      <div class="image-title">커비 스터디카페 코엑스점</div>
      <div class="image-description"></div>
    <div class="rating-container">
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9733;</span>
  <span class="star">&#9734;</span>
  <span class="rating-text">4.0 (109)</span>
</div>
      <div class="image-tags">
        <div class="image-tag">#주차가능</div>
        <div class="image-tag">#할인중</div>
        <div class="image-tag">#무소음</div>
      </div>
 
    </div>
    
  </div>
</main>
<% } %>
<footer>
	<jsp:include page="module/footer.jsp"/>
</footer>
</body>
</html>
