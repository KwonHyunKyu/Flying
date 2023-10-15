<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료</title>
<style>
h1{
  text-align: center;
  font-family: arial;
  font-size: 50px;
  font-family : "arial black";
  animation-name: textColorAnimation;
  animation-duration: 5s;
  animation-iteration-count: infinite;
}
@keyframes textColorAnimation {
0% {  color : blue;}
30% {  color : green;}
100% { color : red;}
}
p[type="read"]{
padding: 10px;
  font-size: 35px;
  text-align: center;
color: #B38415;
}
p[type="remember"]{
padding: 15px;
font-size: 30px;
color: yellowgreen;
cursor: help;
}
ul{
padding: 20px;
font-size: 20px;
color: red;
cursor: help;
}
button[type="btn"]{
border-top-left-radius:7px;
border-bottom-left-radius:7px;
border-top-right-radius:7px;
border-bottom-right-radius:7px;
font-size: 20px;
padding: 10px 30px;

}
div[type="btn_group"]{
padding:5px;
background-color:skyblue;
}
p[type="final"]{
color:skyblue;
color:#F1E02C;
font-size: 18px;
}



</style>
</head>
<body>
<h1>결제가 완료 되었습니다.</h1>
<hr>
<p type="read">Flying 카페 결제가 완료 되었습니다. 집중해서 공부해요!</p>
<p type="remember">들어가기전에 숙지해요!</p>
<div>
	<ul>
		<li>다같이 사용하는 공간이 입니다. 공부는 조용히^^</li>
		<li>* 금연 *</li>
		<li>핸드폰은 매너모드</li>
		<li>빡세게 공부!!</li>
	</ul>
</div>
<div type="btn_group">
<p type="final">&#8595;숙지 하셨다면 스터디카페를 선택해 주세요!&#8595;</p>
<button type="btn" onclick="location.href='payment_complete.jsp' ">스터디카페 선택</button>
</div>
</body>
</html>