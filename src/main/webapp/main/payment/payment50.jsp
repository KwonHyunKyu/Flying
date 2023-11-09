<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="../css/payment.css">
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <script src="https://js.tosspayments.com/v1/payment"></script>




  </head>
  <body>
<header>
    <jsp:include page="../module/header2.jsp" flush="false" />
</header>


<div id ="title1">
<h1>당일 이용권 구매</h1>

    <section>
     
      <img src="../img/coupon.png" alt="Coupon Icon" style="width:130px; height: 80px;"> <!-- Adjust width and height as needed -->
  <span style="font-size: 15px; font-weight: bold;">당일권 3시간</span>
      <span>5,000원 </span>
      <button id="payment-button">5,000원 결제하기</span></button>
    </section>
