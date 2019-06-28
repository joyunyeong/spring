<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/template/own/header.jsp"%>

<section>
		<form id="memberform" method="post" action="">
			<input type="hidden" name="act" value="register">
			<div class="form-group" align="left">
				<label for="name">학교코드</label>
				<input type="text" class="form-control" id="name" name="name" value="2345" readonly="readonly">
				<br>
				<label for="name">학교이름</label>
				<input type="text" class="form-control" id="name" name="name" value="University of Harvard">
				<br>
				<label for="name">학교유형I</label>
				<input type="text" class="form-control" id="name" name="name" value="대학교">
				<br>
				<label for="name">학교유형II</label>
				<input type="text" class="form-control" id="name" name="name" value="일반대학">
				<br>
				<label for="email">이메일</label><br>
				<div id="email" class="custom-control-inline">
				<input type="text" class="form-control" id="emailid" name="emailid" placeholder="" size="25"> @
				<select class="form-control" id="emaildomain" name="emaildomain">
					<option value="naver.com">naver.com</option>
					<option value="google.com">google.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmail.net">hanmail.net</option>
				</select>
				<label for="tel">전화번호</label>
				<div style="display: inline-block;">
					<select class="form-control" id="tel1" name="tel1">
						<option value="010">010</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="041">041</option>
						<option value="051">051</option>
						<option value="061">061</option>
					</select> _
				</div>
				<div style="display: inline-block;">
					<input type="text" class="form-control" id="tel2" name="tel2" placeholder="1234"> _
				</div>
				<div style="display: inline-block;">
					<input type="text" class="form-control" id="tel3" name="tel3" placeholder="5678">
				</div>
				<br>
				<label for="">주소</label><br>
				<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" size="7" maxlength="5" readonly="readonly">
				<br>
				<input type="text" class="form-control" id="address" name="address" placeholder="도로명주소">
				<br>
				<input type="text" class="form-control" id="address_detail" name="address_detail" placeholder="상세주소">
	
				<button type="button" class="btn btn-primary" id="registerBtn" onclick="javascript:register();">정보수정</button>
				<button type="button" class="btn btn-primary" id="registerBtn" onclick="javascript:register();">삭제</button>
		</form>
</section>	