<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <script src="https://js.tosspayments.com/v1/payment"></script>
<style>
#main{
	margin-top:300px;
}
</style>
  </head>
  <body>
<header>
    <jsp:include page="../module/header2.jsp" flush="false" />
</header>
<div id ="main">
<p>Flying 카페 당일 이용권 입니다</b></p>
<hr>
    <section>
      <!-- ... -->
      <span>당일권 5시간</span>
      <span>7,000 원</span>
      <button id="payment-button"><span style="color : blue; font-size : 15px;">7,000원 결제하기</span></button>
    </section>
    <script>
      var clientKey = 'test_ck_jExPeJWYVQlyX2DkY1n349R5gvNL'
      var tossPayments = TossPayments(clientKey)
      var button = document.getElementById('payment-button') // 결제하기 버튼
      button.addEventListener('click', function () {
        tossPayments.requestPayment('카드', {
          amount: 7000,
          orderId: 'flying12',
          orderName: '5시간 이용권',
          customerName: 'Flying',
          successUrl: 'http://localhost:8085/Flying/main/payment/payment_complete.jsp',
          failUrl: 'http://localhost:8080/fail',	
        })
      })
    </script>
</div>
<footer>
    <jsp:include page="../module/footer.jsp"/>
</footer>
</body>
</html>