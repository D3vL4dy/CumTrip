<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://kit.fontawesome.com/0661566fd2.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/button.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/js/join.js"></script> 
<!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script>

</head>

<body>

<header id="header"><!-- 상단 헤더 불러오기 --></header>

	<div class="container join_con">
	  <h2 class="f1">회원가입</h2>
	  
	  
	   <form class="needs-validation needs-validation_wrap" novalidate>
	  
	    <div class="form-group">
	      <label for="uid" class="f4">아이디</label>
	      <!--  required => 필수항목
	      placeholder="Enter username" => default text  -->
	      <input type="text" class="form-control control-label col-sm-3" id="umail" placeholder="Enter userEmail" name="mem_email" required>
	  	      <button type="button" class="btn btn-info mb-2 mr-sm-2 custom-btn btn-6" id="chk" style="background-color: #288C28; border-color: white; border-radius: 10px;">중복검사</button>
	  	      <button type="button" class="btn btn-info mb-2 mr-sm-2" id="chk_mail2" disabled style="background-color: #288C28; border-color: white; border-radius: 10px;">인증메일 보내기</button>
	      
	      <span id="idspan"></span>
	      <div class="valid-feedback">Valid.</div>
	      <div class="invalid-feedback">Please fill out this field.</div>
	    </div>
	    <div class="form-group">
	      <label for="uid" class="f4">인증번호</label>
	      <!--  required => 필수항목
	      placeholder="Enter username" => default text  -->
	      <input type="text" class="form-control control-label col-sm-3" id="mail_number" placeholder="인증번호입력" name="mail_number" required>
	      
	      <span id="idspan"></span>
	      <div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	    </div>
	    
	    
	  
	    <div class="form-group">
	      <label for="uname" class="f4">이름</label>
	      <!--  required => 필수항목
	      placeholder="Enter username" => default text  -->
	      <input type="text" class="form-control control-label col-sm-3" id="uname" placeholder="Enter username" name="mem_name" required>
	      <div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	    </div>
	    
	    
	    <div class="form-group">
	      <label for="pwd" class="f4">비밀번호</label>
	      <input type="password" class="form-control control-label col-sm-3" id="pwd" placeholder="Enter password" name="mem_pass" required>
	      <div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	    </div>
	    <div class="form-group">
	      <label for="pwd" class="f4">비밀번호 확인</label>
	      <input type="password" class="form-control control-label col-sm-3" id="pwd2" placeholder="Enter password" required>
	      <div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	   	  <div class="passMiss"></div>
	    </div>

	    <!-- 휴대폰  -->
	    <div class="form-group">
	      <label for="phon" class="f4"> 휴대폰번호 </label>
	      <!--  required => 필수항목
	      placeholder="Enter username" => default text  -->
	      <input type="text" class="form-control control-label col-sm-3" id="phon" placeholder="010-1234-5678" name="mem_tel" required>
	      <div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	    </div>
	    <!--우편번호 -->
	 	<div class="form-group">
	 		<label for="uzip" class="f4">우편번호</label>
	 		
	 	 	<input id="member_post"  type="text" class="form-control control-label col-sm-3" placeholder="Zip Code" readonly onclick="findAddr()">
			<button type="button" id="zipserach" class="btn btn-info mb-2 mr-sm-2" data-toggle="modal" data-target="#myModal" onclick="findAddr()"  style="background-color: #288C28; border-color: white; border-radius: 10px;"> 번호검색 </button>
	 	 </div>
	 	 <div class="form-group">
	 	 	<label for="uadd1" class="f4">주소</label>
	  		<input id="member_addr" type="text" class="form-control control-label col-sm-3" placeholder="Address" readonly>
	  	 </div>
	  	<div class="form-group">
	    <label for="add3" class="f4">상세주소</label>
	  		<input type="text" class="form-control control-label col-sm-3" placeholder="Detailed Address" id="member_addr2" required>
	  		<div class="valid-feedback f4">Valid.</div>
	      <div class="invalid-feedback f4">Please fill out this field.</div>
	  	</div>
	    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	    	
	    
	    <button type="submit" class="btn btn-primary btn-sm btn-block joincheck" id="joincheck"  style="background-color: #FF9614; border-color: white; border-radius: 10px; font-size: 1.2em;">가입완료!</button>
	    <span id="joinspan"></span>
	    
	  </form>
	</div>
	
	
	

	
	
	<script>
	// Disable form submissions if there are invalid fields
	$(function() {
	  'use strict';
	  window.addEventListener('load', function() {
	    // Get the forms we want to add validation styles to
	    var forms = document.getElementsByClassName('needs-validation');
	    // Loop over them and prevent submission
	    var validation = Array.prototype.filter.call(forms, function(form) {
	      form.addEventListener('submit', function(event) {
	    	//데이터검사
	        if (form.checkValidity() === false) {
	          event.preventDefault();
	          event.stopPropagation();
	        }
	        form.classList.add('was-validated');
	      }, false);
	    });
	  }, false);
	});
	</script>
	
	<footer id="footer"><!-- 하단불러오기 --></footer>
	
<!-- 로딩 -->
 <div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
	
	
</body>
</html>