<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	/*
	.modal-content {
		background-color: fuchsia;
}
	*/
	.body {
	background-image: url('diary/img/footprint.png');
	}
	
	.button {
		color : white;
		font-size : large;
	    background-color: lightcoral;
	    border-color: #ccc;
	}
	.modal-dialog {
	    max-width: 800px;
	    margin: 1.75rem auto;
	}
	.form-group {
		font-size: medium;
	}
	
</style>

</head>
<body>
<!-- 
	Calendar 날짜 클릭했을시에 모달창 FE 
	original : <form method = "get" action = "/plzdaengs/diary/mparam.jsp">
-->

<div id="enroll" class="modal fade">
	<div id = "realmodal" class="modal-dialog" width = "800">
		<div class="modal-content">
			<form id = "form" enctype="multipart/form-data">
				<input type="hidden" name="date" value="">
				<div class="modal-header">다이어리 추가</div>
				<div class="modal-body">
					<!--div id="ipAlertTitle" class="alert alert-danger" role="alert">다이어리를 입력해주세요. </div-->
					<div id="ipTitle-group" class="form-group" align="left">
						<label for="ipTitle" >Title : </label>
						<input type="text" class="form-control" id="title" placeholder="Title" name="title">
					</div>
					<div id="ipDesc-group" class="form-group" align="left">
						<label for="ipDesc">Description : </label>
						<textarea class="form-control" rows="3" id="description" placeholder="Description" name="description"></textarea><br>
					</div>		
					<div>			
						<input type="file" id = "imgdata" name="imgdata" accept=".jpg,.jpeg,.png,.gif,.bmp">
						<img alt="" class="realimage" src="/plzdaengs/template/img/profile.jpg" width="200px" height="200px">
					</div>	
				</div>
				<div class="modal-footer">
					<button type="button" class="button" data-dismiss="modal">Close</button>
					<button type=button class="button" id="submit">Submit</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>