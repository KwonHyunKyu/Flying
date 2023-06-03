<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memLogin = (String)session.getAttribute("memLogin");
	String memId = (String)session.getAttribute("memID");
%>
<!DOCTYPE html>
<html>

<style>
	header {
  margin-bottom: 20px;
}
	
	
	
	header {
	    height:150px;
	}
	
	header #top {
	    width:1170px;
	    margin:0 auto;
	}
	
	header #logo {
	    float:left;
	    margin:50px 0 0 0;
	}
	header #logomessage{
		float:left;
		margin:70px 0 0 10px;
		position: static;
		font-family: "Raleway", sans-serif;
	}
	header #loginButton{
		float:right;
		margin:90px 0 0 0;
	}
	HR {
	background-color:#00FF80; width:100%; border: 0px; height: 3px;
	
	

}

nav ul {
  width: 100%;
  background-color: #34B680;
  list-style-type: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
}

nav headerul li {
  display: inline-block;
  position: relative;
}

nav ul li a {
  display: block;
  color: white;
  text-align: center;
  padding: 20px 25px;
  text-decoration: none;
}

nav ul li:hover {
  background-color: #2A8F57;
}

.dropdown:hover .dropdown-menu {
  background-color: black;
}

.dropdown {
  position: relative;
}

.dropdown-menu {
  background-color: #34B680;
  color: white;
  padding: 16px;
  font-size: 16px;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #34B680;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropdown-menu {
  background-color: #2A8F57;
}

.home {
  background-color: #2A8F57;
  width: 100px;
  text-align: center;
  font-weight: bold;
  float: right;
}

.home a {
  display: block;
  text-decoration: none;
  color: white;
  padding: 20px 25px;
}

.dropdown-content a:hover {
  background-color: #fff;
  color: #2A8F57;
  font-weight: bold;
  border: 1px solid #2A8F57;
}

nav ul li:hover{
  background-color: #fff;
  border: 1px solid #2A8F57;
}

.dropdown:hover .dropdown-menu {
  background-color: #fff;
  color: #2A8F57;
}
.home a {
  color: #fff;
}
.home a:hover {
  background-color: #2A8F57;
}

}

</style>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<title> Flying </title>

</head>
<body>
<div id="headcolor">
    <header>
        <section id="top">
            <a id="logo" href="../index.jsp"><img src="../img/mainlogo.png" width="200" height="70" alt="로고"></a>
			<span id="logomessage">당신의 시간은 소중하니까요.<br>비교는 플라잉에 맡겨주세요.</span>
        </section>
    </header>

  <nav>
  <ul id="headerul">
    <li class="home">
      <a href="#">메인</a>
    </li>
    <li class="dropdown">
      <a href="seatReservation.jsp">
        <div class="dropdown-menu">예약하기</div>
      </a>
      <div class="dropdown-content">
        <a href="#">예약하기</a>
        <a href="#">내 예약 확인하기</a>
      </div>
    </li>
    <li class="dropdown">
      <div class="dropdown-menu">예약 및 이용 방법</div>
      <div class="dropdown-content">
        <a href="#">예약하는법</a>
        <a href="#">사업자 신청하기</a>
      </div>
    </li>
  </ul>
</nav>

    
</div>
</body>
</html>
