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
	
	if(fm.product_name.value==""){
		alert("상품이름을 입력해주세요");
		fm.product_name.focus();
		return;
	}else if(fm.product_amount.value==""){
		alert("상품수량을 입력해주세요");
		fm.product_amount.focus();
		return;
	}else if(fm.product_price.value==""){
		alert("가격을 입력해주세요");
		fm.product_price.focus();
		return;
	}
	
	fm.action="<%=request.getContextPath()%>/product/writeAction.do";
	fm.enctype="multipart/form-data";
	fm.method = "post";
	fm.submit();
	
}


</script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<form name="form1" method="post">

<div class="login-form" style="margin-top: 100px;width: 600px;">
     <h2 style="color: #35c5f0;text-align:center;">상품등록</h2>

			<div class="form-group ">
				<label>상품명</label> 
				<input type="text" class="form-control"placeholder="상품명 " name="product_name">
			</div>

			<div class="form-group log-status">
				<label>상품수량</label> 
				<input type="text" class="form-control"placeholder="상품수량" name="product_amount">
			</div>

			<div class="form-group log-status">
				<label>상품가격</label>
				 <input type="text" class="form-control"placeholder="상품가격" name="product_price"> 
			</div>
			
			<div class="form-group log-status">
             <label>브랜드</label>

				<div class="input-group mb-3">
					<select class="form-select bg-light form-control" name="product_brand">
						<option value="가구">가구</option>
						<option value="조명">조명</option>
						<option value="캠핑">캠핑</option>
						<option value="가전제품">가전제품</option>
						<option value="생필용품">생필용품</option>
						<option value="주방용품">주방용품</option>
						<option value="실내용품">실내용품</option>
					</select>
				</div>
				
				<div class="input-group mb-3" style="margin-top: 8px;">
				  <label>선호도</label>
					<select class="form-select bg-light form-control" name="product_best">
						<option value="normal">일반 상품</option>
						<option value="today">오늘의 상품</option>
						<option value="best">베스트 상품</option>
						
					</select>
				</div>
             
             <div class="input-group mb-3" style="margin-top: 16px;">
            	<div class="form-group">
				<label>상품이미지</label>
				 <input type="file" name="file1" > 
			</div>
			</div>
			</div>
    
      <span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
     <button type="button" class="log-btn" onclick="check();">등록하기</button>
       
    
   </div>
  </form>
</body>
</html>