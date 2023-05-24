<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flying</title>
  
  
 <style>
    body {
      height: 100vh;
      margin: 0;
      background-color: #f5f5f5;
    }


    .seat-container {
  	display: grid;
  	grid-template-columns: repeat(5, 1fr);
  	grid-gap: 10px;
  	max-width: 500px;
  	padding: 20px;
  	background-color: #fff;
  	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  	margin: 10 auto; /* 가운데 정렬을 위한 수정 */
	}
    .seat {
      width: 100%;
      height: 50px;
      background-color: #ccc;
      display: flex;
      justify-content: center;
      cursor: pointer;
      font-weight: bold;
    }
    
    .selected {
      background-color: #34B680;
      color: #fff;
    }
    
    .lounge {
      grid-column: span 2;
      height: 110px;
      background-color: #ffa500;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 16px;
    }
    
    .water-cooler {
      grid-column: span 1;
      height: 60px;
      background-color: #00aaff;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 14px;
    }
    
    .button-container {
      margin-top: 20px;
      text-align: center;
    }
    
    .button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #34B680;
      color: #fff;
      border: none;
      cursor: pointer;
    }
    
    .button:hover {
    color: #fff;
      background-color: #342F2D;
      margin: 0 auto;
    }
  </style>
  
  
<script>
  // 선택된 좌석 정보를 저장할 변수
  var selectedSeats = [];

  function selectSeat(seat) {
    seat.classList.toggle("selected"); // 좌석 선택 토글

    // 좌석 선택 시 정보를 변수에 저장
    var seatId = seat.id;
    var seatNumber = seat.innerText;

    // 좌석이 선택된 상태인지 확인하여 변수에 추가 또는 제거
    if (seat.classList.contains("selected")) {
      selectedSeats.push({ id: seatId, number: seatNumber });
    } else {
      selectedSeats = selectedSeats.filter(function (seat) {
        return seat.id !== seatId;
      });
    }
  }

  function saveSeats() {
    // 선택한 좌석 정보를 출력
    console.log(selectedSeats);

    // 선택한 좌석 정보를 현재 페이지에 나타내기
    var seatInfoContainer = document.createElement("div");
    seatInfoContainer.className = "selected-seats";
    seatInfoContainer.style.display = "flex";
    seatInfoContainer.style.flexWrap = "wrap";
    seatInfoContainer.style.marginTop = "20px";

    var seatInfoText = document.createElement("p");
    seatInfoText.style.margin = "0";
    seatInfoText.style.padding = "10px";
    seatInfoText.style.backgroundColor = "#008000";
    seatInfoText.style.color = "#fff";
    seatInfoText.style.fontWeight = "bold";
    seatInfoText.innerHTML = "Selected Seats: ";

    seatInfoContainer.appendChild(seatInfoText);

    for (var i = 0; i < selectedSeats.length; i++) {
      var seatNumber = selectedSeats[i].number;

      var seatNumberText = document.createElement("span");
      seatNumberText.style.display = "inline-block";
      seatNumberText.style.margin = "0 5px";
      seatNumberText.innerHTML = seatNumber;

      seatInfoContainer.appendChild(seatNumberText);
    }

    document.body.appendChild(seatInfoContainer);
  }
</script>
<body>
  <%@ include file="../module/header2.jsp" %>

    <div class="seat-container">
    <% for (int i = 1; i <= 30; i++) { %>
      <div class="seat" id="seat-<%= i %>" onclick="selectSeat(this)"><%= i %></div>
    <% } %>
    
    <!-- 지리적인 요소 추가 -->
    <div class="seat lounge" id="lounge" onclick="selectSeat(this)">라운지</div>
    <div class="seat water-cooler" id="water-cooler" onclick="selectSeat(this)">정수기</div>
    <!-- 추가적인 지리적인 요소들을 여기에 추가 -->
  </div>
  
  <div class="button-container">
  <button onclick="saveSeats()" class="button">좌석 저장</button>
</div>
  
  
  <%@ include file="../module/footer.jsp" %>

</body>
</html>