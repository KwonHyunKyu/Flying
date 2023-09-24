<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="../css/seatReservation.css">
<jsp:useBean class="flyingMember.SearchBean" id="memSearch" scope="session"/>
<jsp:useBean class="flyingMember.ReserveInfo" id="reserveInfo" scope="session"/>
<%
	String memLogin = (String)session.getAttribute("memLogin");
	if(memLogin == null){ %>
	<script>
	alert("로그인 후 이용해 주십시오.");
	location.href = '../index.jsp';
	</script>		
<% 
	}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flying</title>
  <script>
    var selectedSeat = null;
    function selectSeat(seat) {
      if (selectedSeat !== null) {
        selectedSeat.classList.remove("selected");
       
      }

      selectedSeat = seat;
      selectedSeat.classList.add("selected");

      document.getElementById("selectedSeat").innerText = selectedSeat.innerText;
      document.getElementById("useSeat").value = selectedSeat.innerText;
    }
    </script>
    <script>
    let selectedlocker = null;

    function selectlocker(locker) {
      if (selectedlocker !== null) {
        selectedlocker.classList.remove("selected");
      }

      selectedlocker = locker;
      selectedlocker.classList.add("selected");

      document.getElementById("selectedlocker").innerText = selectedlocker.innerText;
      document.getElementById("uselocker").value = selectedlocker.innerText;
    }
    function completeReservation() {
      if (selectedlocker === null) {
        alert("사물함을 선택해주세요.");
      } else {
        // 사물함 예약 처리 및 예약 완료 페이지로 이동
        window.location.href = "reservation-complete.jsp";
        window.sessionStorage.setItem('lockNum','selectedlocker');
      }
    }

    </script>
    <script>
    let selectedTime = null;

    function selectTime(time) {
      if (selectedTime !== null) {
        selectedTime.classList.remove("selected");
      }

      selectedTime = time;
      selectedTime.classList.add("selected");

      document.getElementById("selectedTime").innerText = selectedTime.innerText;
      document.getElementById("useTime").value = selectedTime.innerText;
    }
    /*
    function completeReservation() {
      if (selectedTime === null) {
        alert("이용권을 선택해주세요.");
      } else {
        window.location.href = "reservation-complete.jsp";
        window.sessionStorage.setItem('timeNum','selectedTime');
      }

    }
    */
  </script>

<body>
  <header>
    <jsp:include page="../module/header2.jsp" flush="false" />
  </header>

  <h1 style="margin-top:150px;">원하는 좌석과 사물함을 선택해주세요.</h1>

<div class="selected-seat-container" style=" justify-content: right; align-items: center; margin-top:0px;">
  <p class="selected-seat" style="font-size: 30px; background-color: #34B680; padding: 15px; border-radius: 15px; width: fit-content;">
    선택된 좌석: <span id="selectedSeat"></span>
  </p>
  
  <p class="selected-locker" style="font-size: 30px; background-color: #34B680; padding: 15px; border-radius: 15px; width: fit-content;">
    선택된 사물함: <span id="selectedlocker"></span>
  </p>
    <p class="selected-locker" style="font-size: 30px; background-color: #34B680; padding: 15px; border-radius: 15px; width: fit-content;">
    선택된 이용권: <span id="selectedTime"></span>
  </p>
</div>
<div class="table-container">
  <table>
      <tr>
        <td colspan="3"  style="background-color: Skyblue;">스터디 룸</td>
        <td colspan="3" style="background-color: Skyblue;">스터디 룸</td>
        <td colspan="4" style="background-color: blue;">화장실</td>
        </tr>
        <tr>
        </tr>
        <td onclick="selectSeat(this)">1</td>
        <td onclick="selectSeat(this)">2</td>
        <td onclick="selectSeat(this)">3</td>
        <td onclick="selectSeat(this)">4</td>
        <td onclick="selectSeat(this)">5</td>
        <td onclick="selectSeat(this)">6</td>
        <td colspan="5" style="background-color: #FF8C0A;">카운터</td>
        </tr>
        <tr>
        <td onclick="selectSeat(this)">7</td>
        <td onclick="selectSeat(this)">8</td>
        <td onclick="selectSeat(this)">9</td>
        <td onclick="selectSeat(this)">10</td>
        <td onclick="selectSeat(this)">11</td>
        <td onclick="selectSeat(this)">12</td> 
        <td onclick="selectSeat(this)">13</td>
        <td onclick="selectSeat(this)">14</td>
        <td onclick="selectSeat(this)">15</td>
        <td rowspan="3" style="background-color: #9F814F;">사물함</td>
        </tr>
        <tr>
        <td onclick="selectSeat(this)">16</td>
        <td onclick="selectSeat(this)">17</td>
        <td onclick="selectSeat(this)">18</td>
        <td onclick="selectSeat(this)">19</td>
        <td onclick="selectSeat(this)">20</td>
        <td onclick="selectSeat(this)">21</td>
        <td onclick="selectSeat(this)">22</td>
        <td onclick="selectSeat(this)">23</td>
        <td onclick="selectSeat(this)">24</td>
        </tr>
        <tr>
        <td onclick="selectSeat(this)">25</td>
        <td onclick="selectSeat(this)">26</td>
        <td onclick="selectSeat(this)">27</td>
        <td onclick="selectSeat(this)">28</td>
        <td onclick="selectSeat(this)">29</td>
        <td onclick="selectSeat(this)">30</td>
        <td onclick="selectSeat(this)">31</td>
        <td onclick="selectSeat(this)">32</td>
        <td onclick="selectSeat(this)">33</td>
        </tr>
        <tr>
        <td colspan="3"  style="background-color: #FF6A89;">현관</td>
        <td colspan="7"  style="background-color: transparent;"></td>
        </tr>
          </table>
</div>
<div class="table-locker">
<table>
      <tr>
        <td onclick="selectlocker(this)">1</td>
        <td onclick="selectlocker(this)">2</td>
        <td onclick="selectlocker(this)">3</td>
        <td onclick="selectlocker(this)">4</td>
        <td onclick="selectlocker(this)">5</td>
        <td onclick="selectlocker(this)">6</td>
        <td onclick="selectlocker(this)">7</td>
        <td onclick="selectlocker(this)">8</td>
        <td onclick="selectlocker(this)">9</td>
        <td onclick="selectlocker(this)">10</td>
      </tr>
      <tr>
        <td onclick="selectlocker(this)">11</td>
        <td onclick="selectlocker(this)">12</td>
        <td onclick="selectlocker(this)">13</td>
        <td onclick="selectlocker(this)">14</td>
        <td onclick="selectlocker(this)">15</td>
        <td onclick="selectlocker(this)">16</td>
        <td onclick="selectlocker(this)">17</td>
        <td onclick="selectlocker(this)">18</td>
        <td onclick="selectlocker(this)">19</td>
        <td onclick="selectlocker(this)">20</td>
        </tr>
</table>
</div>
<div class="table-time">
<table>
      <tr>
        <td colspan="3" onclick="selectTime(this)">2시간이용권</td>
        <td colspan="3" onclick="selectTime(this)">4시간이용권</td>
		<td colspan="3" onclick="selectTime(this)">6시간이용권</td>
		<td colspan="3" onclick="selectTime(this)">8시간이용권</td>
      </tr>

</table>
</div>
<form action="reservation-complete.jsp" method="get" id="myForm">
	<input type="hidden" id="useSeat" name="selectedSeat">
	<input type="hidden" id="useTime" name="selectedTime">
	<input type="hidden" id="uselocker" name="selectedlocker">
	<input type="submit" style="background-color: #34B680; font-size: 24px; padding: 15px 30px; border-radius: 10px; display: block; margin: 20px auto; text-align: center; color: white;" value="예약 완료">
</form>

<footer>
    <jsp:include page="../module/footer.jsp"/>
 </footer>
</body>
</html>