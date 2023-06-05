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
    background-color: #ffffff; /* 배경색을 흰색으로 설정 */
    color: #000000; /* 글자색을 검은색으로 설정 */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* 그림자 추가 */
  }
  
  .check-icon {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #34B680; /* 배경색을 34B680 색으로 설정 */
    color: #ffffff; /* 글자색을 흰색으로 설정 */
    width: 50px;
    height: 50px;
    border-radius: 50%;
    margin: 0 auto;
    margin-bottom: 20px;
  }
  
  .check-icon::before {
    content: '\2713'; /* 체크 표시 아이콘 추가 */
    font-size: 30px;
    line-height: 1;
  }
  
  h1 {
    color: #000000; /* 글자색을 검은색으로 설정 */
    margin-top: 0;
  }
hr {
  width: 40%;
  background-color: #00FF80; /* 선의 색상을 #00FF80으로 설정 */
}
</style>


</head>
<script>
  const getseat = sessionStorage.getItem('seatNum');
  const getlock = sessionStorage.getItem('lockNum');
  const gettime = sessionStorage.getItem('timeNum');
  
  // completeReservation 함수에서 사용할 선택된 좌석 정보
  const selectedSeat = sessionStorage.getItem('selectedSeat');
</script>

<body>
  <header>
    <jsp:include page="../module/header2.jsp" flush="false" />
  </header>
  <div class="container">
  <div class="reservation-info">
    <div class="check-icon"></div> <!-- 체크 아이콘 추가 -->
    <h1>당일 예약이 완료되었습니다</h1>
    <p>지정 좌석에 정상적으로 예약되었습니다.</p>
    <hr>
    <p>스터디카페 이름: 아자아자 24시 스터디카페</p>
    <p>신청인: <%out.print(memId);%>님</p>
    <p>좌석번호: <script>document.write(getseat);</script>번 <strong><span id="selectedSeat"></span></strong></p>
    <p>예약 시간: 16:00~21:00</p>
  </div>
</div>


  <footer>
    <jsp:include page="../module/footer.jsp"/>
  </footer>

  <script>
    // 선택된 좌석 정보 업데이트
    document.getElementById("selectedSeat").innerText = selectedSeat;
  </script>
</body>
</html>
