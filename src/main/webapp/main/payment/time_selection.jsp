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
  <script>
  function selectTime(hours) {
      document.getElementById('selectedTime').value = hours;
  }
  </script>
<style>
  .container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 300px;
    margin-bottom:300px;
  }

  .time-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    margin-bottom: 50px;
  }

  .time-option {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 70px; /* 수정된 부분: 오른쪽 마진을 20px로 변경 */
    width: 100px;
    height: 80px;
    text-align: center;
    line-height: 80px;
    border-radius: 10px;
  }

  .time-option button {
    background-color: #34B680;
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    transform: scale(1.5);
    border-radius: 5px;
  }

  .time-option button:hover {
    background-color: #fff;
    color: #34B680;
    border: 1px solid #808080;
  }

  label {
    display: block;
    margin-bottom: 10px;
  }

  input[type="number"] {
    width: 100px;
  }

  form {
    margin-top: 10px;
  }

  form input[type="submit"] {
    background-color: #34B680;
    color: #fff;
    border: none;
    padding: 10px 50px;
    font-size: 16px;
    transform: scale(1.5);
    border-radius: 5px;
  }

  form input[type="submit"]:hover {
    background-color: #fff;
    color: #34B680;
    border: 1px solid #808080;
  }
</style>

</head>

<body>
  <header>
    <jsp:include page="../module/header2.jsp" flush="false" />
  </header>
  
  
   <div class="container">
      
          <h2>원하시는 예약 시간을 선택해주세요</h2>
          
<div class="time-container">
  <div class="time-option">
    <button onclick="selectTime(1)">
      1시간
      <span class="price">💲1500</span>
    </button>
  </div>
  <div class="time-option">
    <button onclick="selectTime(2)">
      2시간
      <span class="price">💲3000</span>
    </button>
  </div>
  <div class="time-option">
    <button onclick="selectTime(3)">
      3시간
      <span class="price">💲5000</span>
    </button>
  </div>
  <div class="time-option">
    <button onclick="selectTime(4)">
      4시간
      <span class="price">💲6000</span>
    </button>
  </div>
  <div class="time-option">
    <button onclick="selectTime(5)">
      5시간
      <span class="price">💲7000</span>
    </button>
  </div>
</div>
<br>
        
        
        <form action="pay.jsp" method="post">
            <input type="hidden" id="selectedTime" name="selectedTime">
            <input type="submit" value="결제하기">
        </form>
    </div>
 
 
  <footer>
    <jsp:include page="../module/footer.jsp"/>
  </footer>
</body>
</html>