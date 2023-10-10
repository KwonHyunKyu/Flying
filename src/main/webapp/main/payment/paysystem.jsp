<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
button{
width: 350px;
    height: 350px;
    text-align: center;
    border: 1px solid black;
    cursor: pointer;
    }
span{
	color : blue; font-size : 50px;
}
p{
	text-align: center;
	color : gold;
	font-size : 30px;
}
ul {
  list-style: none;
  text-align: center;
  border-top: 1px solid red;
  border-bottom: 1px solid red;
  padding: 10px 0;
}

ul li {
  display: inline;
  text-transform: uppercase;
  padding: 0 11px;
  letter-spacing: 10px;
}
ul li a {
  text-decoration: none;
  color: rgb(86, 106, 22);
}
ul li a:hover {
  text-decoration: underline;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Flying 이용권</h1>
<ul>
    <li><a href="#"><b>#공부</a></li>
    <li><a href="#">#한번</a></li>
    <li><a href="#">#해볼까?</a></li>
    <li><a href="#">#어디서?</a></li>
    <li><a href="#">#집중이</a></li>
    <li><a href="#">#잘되는</a></li>
    <li><a href="#">#Flying 카페!!</a></li>
  </ul>
<p>Flying 카페 당일 이용권 입니다</b></p>
<hr>
<button type="button" onclick="location.href='Pay.html'" /><span>2시간(3천원)</span>
<button type="button" onclick="location.href='Pay_B_1.html'" /><span>4시간(4천원)</span>
<button type="button" onclick="location.href='Pay_C.html'" /><span>6시간(5천원)</span>
</body>
</html>