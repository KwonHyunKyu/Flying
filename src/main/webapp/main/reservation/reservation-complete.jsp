<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%
	String memId = (String)session.getAttribute("memID");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flying</title>
 <style>
  
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
      text-align: center;
    }
    
    .reservation-info {
      background-color: #34B680;
      color: white;
      padding: 20px;
      border-radius: 10px;
    }
    
    h1 {
      color: #fff;
      margin-top: 0;
    }
    
    hr {
      width: 40%;
      background-color: #fff;
    }
    
  </style>
</head>

<body>
  <header>
    <jsp:include page="../module/header2.jsp" flush="false" />
  </header>
  <div class="container">
    <div class="reservation-info">
      <h1>당일 예약이 완료되었습니다</h1>
      <p>지정 좌석에 정상적으로 예약되었습니다.</p>
      <hr>
      <p>스터디카페 이름: 아자아자 24시 스터디카페</p>
       <p>신청인: <%out.print(memId);%>님</p>
      <p>좌석번호:5번 <strong><span id="selectedSeat"></span></strong></p>
      <p>예약 시간: 16:00~21:00</p>
    </div>
  </div>

  <script>
    document.getElementById("selectedSeat").textContent = sessionStorage.getItem("selectedSeat");
  </script>
 
  <footer>
    <jsp:include page="../module/footer.jsp"/>
  </footer>
</body>
</html>