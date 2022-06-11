<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<script>
	$(function(){	
		
		// submit 전 이벤트
		$('form').submit(function(){	
			var idLength = $('#userId').val().length;
			var pwLength = $('#userPw').val().length;
			if(idLength == 0) {
				alert('아이디를 입력하세요.');
				return false;
			}
			if(pwLength == 0) {
				alert('비밀번호를 입력하세요.');
				return false;
			}
		});
	});
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/y.css">
<form class="col" action="" method="POST">
	<section>
	  <div class="row">
	    <div class="col d-flex flex-column align-items-center justify-content-center">
	      <h2 class="mb-5">로그인</h2>
	     	 <input type="text" id="userId" name="userId" placeholder="아이디" class=" p-2" style="width: 300px;"><br>
	    	 <input type="password" id="userPw" name="userPw" placeholder="비밀번호" class="p-2" style="width: 300px;">
	  
	   	   	 <div class="mt-4">아이디 또는 비밀번호를 잊으셨나요?</div>
	    	   <div>
	        	<a class="underline" href="findId">아이디 찾기</a> / 
	        	<a class="underline" href="findPw">비밀번호 찾기</a>
	     	   </div>
	  
		      <div class="btn-group-vertical mt-3">
		        <button type="submit" class="btn btn-third w-100">로그인</button><br>
		      </div>
	    </div>    
	  </div>
	</section>
</form>
<script>
 $(function(){
	 let error = '${error}';
		if(error!=''){
		alert(error);
		}
 })
</script>