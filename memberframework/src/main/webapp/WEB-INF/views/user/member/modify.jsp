<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<<script type="text/javascript">
$(document).ready(function() {
	$('#modifyBtn').focusin(function() {
		$("#memberform").attr("action", "${root}/user/modifyInfo.kitri").submit();
	});
});
</script>

<div class="container" align="center">
	<div class="col-lg-6" align="center">
		<h2>회원정보 수정</h2>
		<form id="memberform" method="post" action="">
			<!--input type="hidden" name="act" value="register"-->
			<div class="form-group" align="left">
				<label for="name">이름</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="이름입력" value="${userInfo.name}" >
			</div>
			<div class="form-group" align="left">
				<label for="">아이디</label>
				<input type="text" class="form-control" id="id" name="id" placeholder="5자이상 16자 이하" value="${userInfo.id}" >
				<div id="idresult"></div>
			</div>
			<div class="form-group" align="left">
				<label for="">비밀번호</label>
				<input type="password" class="form-control" id="pass" name="pass" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="">비밀번호재입력</label>
				<input type="password" class="form-control" id="passcheck" name=으"passcheck" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="email">이메일</label><br>
				<div id="email" class="custom-control-inline" >
				<input type="text" class="form-control" id="emailid" name="emailid" placeholder="" size="25" value="${userInfo.emailid}">
				<select class="form-control" id="emaildomain" name="emaildomain">
					<option value="naver.com">naver.com</option>
					<option value="google.com">google.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmail.net">hanmail.net</option>
				</select>
				</div>
			</div>
			<div class="form-group" align="left">
				<label for="tel">전화번호</label>
				<div id="tel" class="custom-control-inline">
				<select class="form-control" id="tel1" name="tel1">
					<option value="010">010</option>
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="041">041</option>
					<option value="051">051</option>
					<option value="061">061</option>
				</select> _
				<input type="text" class="form-control" id="tel2" name="tel2" > _
				<input type="text" class="form-control" id="tel3" name="tel3" >
				</div>
			</div>
			<div class="form-group" align="left">
				<label for="">주소</label><br>
				<div id="addressdiv" class="custom-control-inline">
					<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" size="7" maxlength="5" readonly="readonly">
					<!--<button type="button" class="btn btn-primary" onclick="javascript:">우편번호</button>-->
				</div>
				<input type="text" class="form-control" id="address" name="address" placeholder="" readonly="readonly">
				<input type="text" class="form-control" id="address_detail" name="addressDetail" >
			</div>
			<div class="form-group" align="center">
				<button type="button" class="btn btn-primary" id="modifyBtn">정보수정</button>
				<button type="reset" class="btn btn-warning">초기화</button>
			</div>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/user/member/zipsearch.jsp" %>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>