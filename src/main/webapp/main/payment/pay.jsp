<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../css/pay.css">
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <!-- 결제위젯 SDK 추가 -->
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<body>
  <header>
    <jsp:include page="../module/header2.jsp" flush="false" />
  </header>
  <h1>Flying 결제 시스템</h1>
  <!-- 결제위젯, 이용약관 영역 -->
  <div id="payment-method"></div>
  <div id="agreement"></div>
  <!-- 결제하기 버튼 -->
  <span>2시간 당일권 3000원</span>
  <button id="payment-button">결제하기</button>
  <script>
    const clientKey = "test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq"
    const customerKey = "EeWmjSuCdXMR-5to2eQJB" // 내 상점의 고객을 식별하는 고유한 키
    const button = document.getElementById("payment-button")
    
    const paymentWidget = PaymentWidget(clientKey, customerKey) // 회원 결제
    
    paymentWidget.renderPaymentMethods("#payment-method", 3000)
    
    paymentWidget.renderAgreement('#agreement')
    button.addEventListener("click", function () {
      paymentWidget.requestPayment({
        orderId: "Flying12",            // 주문 ID(직접 만들어주세요)
        orderName: "당일 이용권 3천원",                 // 주문명
        successUrl: "https://payment_complete.jsp/success",  // 결제에 성공하면 이동하는 페이지
        failUrl: "https://complete.jsp/fail",        // 결제에 실패하면 이동하는 페이지
        customerEmail: "kh011119@naver.com",
        customerName: "Flying study"
      })
    })
  </script>
    <footer>
    <jsp:include page="../module/footer.jsp"/>
  </footer>
</body>
</html>