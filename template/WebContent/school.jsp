<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/template/header.jsp"%>

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
	
	#myModal {
		display: none;
	}
</style>

<script type="text/javascript">

// 참고 : http://demo.webslesson.info/bootstrap-crud-php/ 

$(document).ready(function(){
	
	$("tbody").click(function() {
		alert("학교정보 Click");
		$("#myModal").modal();
	});
});
</script>


<!-- 여기 내 내용 width; 872.443 height; 110.653-->
<section style="padding-top: 20px; padding-bottom: 0px;">
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
				<tr>
					<td>고등학교</td>
					<td>과학고</td>
					<td>서울과학고등학교</td>
					<td>서울특별시 종로구 명륜1가 혜화로 63</td>
					<td>1</td>
					<td></td>
				</tr>
			</tbody>

		</table>
	</div>
</section>

<!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
<%@ include file="/template/sidebar.jsp"%>
<%@ include file="/template/footer.jsp"%>