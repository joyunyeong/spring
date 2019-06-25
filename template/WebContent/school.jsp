<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Generic - Editorial by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>

<style>
#memberlist {
	cursor: pointer;
}

#searchText {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

#searchText {
  width: 100%;
}
</style>

<script type="text/javascript">
	// memberlist.jsp 참고
$("#searchBtn").click(function() {
	 	alert('여기까지 온다오');
	 });
</script>

<body class="is-preload">
<!-- Wrapper -->
<div id="wrapper">

<!-- Main -->
	<div id="main">
			<div class="inner">

<!-- Header -->
				<header id="header">
						<a href="index.html" class="logo"><strong>Admin page : SCHOOL</strong></a>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
						</ul>
				</header>

<!-- 여기 내 내용 width; 872.443 height; 110.653-->
			<section style=" padding-top: 20px; padding-bottom: 0px;">
			<form>
				<input type="text" name="search" placeholder="학교이름을 입력해주세요" id="searchText">
			</form>
			</section>
			
				<section>
					<div class="table-responsive-lg">
					  	
					  <table class="table" id="memberlistTop">
					    <thead>
					      <tr>
					        <th>학교유형</th>
					        <th>학교유형2</th>
					        <th>학교명</th>
					        <th>학교주소</th>
					        <th>현재 멘토수</th>
					        <th>비고</th>
					      </tr>
					    </thead>
					    
					  <!-- 잠시 임시! -->
					  <tbody id="memberlist">
					  <tr>
					  	<td>대학교</td>
					  	<td>일반대학</td>
					  	<td>University of Harvard</td>
					  	<td>Holyoke Center, 1350 Massachusetts Avenue, Boston</td>
					  	<td>35</td>
					  	<td></td>
					  </tr>
					  </tbody>
					  
					  </table>
					</div>
				</section>

			</div>
		</div>
<%@ include file="/template/sidebar.jsp" %>