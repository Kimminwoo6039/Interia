<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

function check(){
	
	var fm = document.form1;
	
	if(fm.memberid.value==""){
		alert("아이디를 입력해주세요");
		fm.memberid.focus();
		return;
	}else if(fm.memberpw.value==""){
		alert("비밀번호를 입력해주세요");
		fm.memberpw.focus();
		return;
	}else if(fm.membername.value==""){
		alert("이름을 입력해주세요");
		fm.membername.focus();
		return;
	}else if(fm.memberemail.value==""){
		alert("이메일을 입력해주세요");
		fm.memberemail.focus();
		return;
	}
	
	fm.action="<%=request.getContextPath()%>/member/joinAction.do";
	fm.method = "post";
	fm.submit();
	
}


</script>


</head>
<body>
<form name="form1" method="post">

<div class="login-form" style="margin-top: 150px;">
     <h2 style="color: #35c5f0;text-align:center;">회원가입</h2>
     	
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="아이디 " name="memberid">
          <c:if test="${param.message == 'error'}"><div style="color: red">아이디가 중복입니다.</div></c:if>
     </div>
  
     <div class="form-group log-status">
       <input type="password" class="form-control" placeholder="비밀번호" name="memberpw">
       <i class="mdi mdi-lock"></i>
     </div>
      <div class="form-group log-status">
      <input type="text" class="form-control" placeholder="이름" name="membername">
       <i class="mdi mdi-lock"></i>
     </div>
      <div class="form-group log-status">
      <input type="text" class="form-control" placeholder="이메일" name="memberemail">
       <i class="mdi mdi-lock"></i>
     </div>
    
      <span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
     <button type="button" class="log-btn" onclick="check();"> 가입하기</button>
       
    
   </div>
  </form>
</body>
</html>