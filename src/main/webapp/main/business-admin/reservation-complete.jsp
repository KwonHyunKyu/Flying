<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flying</title>
<style>
  .seat-layout-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  
  .seat-layout {
    position: relative;
    width: 500px;
    height: 300px;
    border: 1px solid #ccc;
    margin: 0 auto;
  }
  
  .seat {
    position: absolute;
    width: 40px;
    height: 40px;
    background-color: #eee;
    border: 1px solid #ccc;
    display: flex;
    justify-content: center;
    align-items: center;
  }
</style>


</head>
<body>
  <%@ include file="../module/header2.jsp" %>

  <div class="container">
    <div id="seat-layout"></div>
  </div>

  <%@ include file="../module/footer.jsp" %>

  <script>
    // 세션 스토리지에서 저장한 좌석 배치 데이터를 가져옴
    var seatLayoutData = JSON.parse(sessionStorage.getItem('seatLayoutData'));

    // 좌석 배치를 표시하는 부분
    var seatLayout = document.getElementById('seat-layout');

    for (var i = 0; i < seatLayoutData.length; i++) {
      var seat = document.createElement('div');
      seat.className = 'seat';
      seat.style.left = seatLayoutData[i].left + 'px';
      seat.style.top = seatLayoutData[i].top + 'px';

      var seatNumberSpan = document.createElement('span');
      seatNumberSpan.textContent = (i + 1).toString(); // 좌석 번호 설정

      seat.appendChild(seatNumberSpan);
      seatLayout.appendChild(seat);
    }
  </script>
</body>
</html>
