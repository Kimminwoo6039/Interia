<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js"crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;900&display=swap" rel="stylesheet">


<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/230-0436adc3.chunk.css">
	
	

<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/158-5f9eeb03.chunk.css">


<script>
function modify_order_state(order_idx,select_id){
	var delivery_state = document.getElementById(select_id);
	var index = delivery_state.selectedIndex;
	var value = delivery_state[index].value;
	
	
	$.ajax({
		type:"post",
		async:false,
		url:"<%=request.getContextPath() %>/admin/modify.do",
		data:{
			"order_idx" : order_idx,
			delivery_state:value
		},
		success : function(data,textStatus){
			if(data.trim()=='mod_success'){
				alert("주문 정보를 수정했습니다.");
				location.href="<%=request.getContextPath() %>/admin/main.do?delivery_state="
			}else if(data.trim()=='failed'){
				alert("다시 시도해 주세요");
			}
		},
		error : function(data,textStatus){
			alert("에러가 발생했습니다 ." +data)
		},
		complete : function(data,textStatus){
			
		}
	});
}
</script>



<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>
<%@ include file="../menu/include.jsp"%>

<nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
  <div class="container-fluid">
    <a class="navbar-brand d-md-none d-md-flex" href="#">스토어홈</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav" style="margin-left: 600px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/admin/main.do?delivery_state=" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color:#91d3ff;">주문배송내역조회</a>
        </li>
   <%--        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/product/list.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">전체상품</a> 
        </li>
        <li class="nav-item">
           <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/product/best.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438;">베스트</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<%=request.getContextPath() %>/product/today.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">오늘의상품</a>
        </li> --%>
   <!--      <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">시즌세일</a> 
        </li>
         <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">빠른배송</a> 
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">이벤트존</a> 
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">리퍼마켓</a> 
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">기획존</a> 
        </li>
         <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">신상품</a> 
        </li> -->
       
      </ul>
    </div>
  </div>
</nav>


	<div class="order-list__menu" style="width: 1200px; margin: auto;">
	<a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=cancle"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">결제취소</div>
				<div class="order-list__menu__list__value">${count2}</div>
			</div></a>
		<a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=payment"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">결제완료</div>
				<div class="order-list__menu__list__value">${count1}</div>
			</div></a>
			<a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=prepared">
			<div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">배송준비</div>
				<div class="order-list__menu__list__value">${count3}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=delivering"><div
				class="order-list__menu__list__wrap">
				<div
					class="order-list__menu__list__title order-list__menu__list__title--focus">배송중</div>
				<div class="order-list__menu__list__value">${count4}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=finished"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">배송완료</div>
				<div class="order-list__menu__list__value">${count5}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/admin/main.do?delivery_state=sure"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">구매확정</div>
				<div class="order-list__menu__list__value">${count6}</div>
			</div></a>
	</div>
    
    
     <table class="table" style="margin-top: 60px;width: 1200px;margin: auto;" border="1">
  <tbody style="font-size: 15px;">
<tr>
<td>주문번호</td>
<td>주문일자</td>
<td>주문내역</td>
<td>배송상태</td>
<td>배송수정</td>
</tr>
<!-- 여기까지 -->
<c:forEach var="item" items="${list}" varStatus="i">
<c:choose>
<c:when test="${item.delivery_state=='prepared'}">
<tr bgcolor="lightgreen";>
</c:when>
<c:when test="${item.delivery_state=='finished'}">
<tr bgcolor="lightgray";>
</c:when>
<c:otherwise>
<tr bgcolor="orange">
</c:otherwise>
</c:choose>
<td width="10%">
<strong>${item.order_idx}</strong>
</td>
<td width="20%">
<strong>${item.date}</strong>
</td>
<td width="40%">
<strong>주문자 : ${item.order_name } </strong><br>
<strong>주문자번호 : ${item.order_phone}</strong><br>
<strong>수령자 : ${item.order_name} </strong><br>
<strong>
주문상품 :
 <a href="<%=request.getContextPath()%>/shop/product/detail/${item.order_code}">${item.order_product}</a><br>
 
 </strong>
</td>
<td width="20%">
<select name="delivery_state${i.index}" id="delivery_state${i.index}"  class="form-select form-select-sm">
<c:choose>
<c:when test="${item.delivery_state=='payment'}">
<option value="payment" selected>결제완료</option>
<option value="prepared" >배송준비중</option>
<option value="delivering">배송중</option>
<option value="finished">배송완료</option>
<option value="cancle">주문취소</option>
<option value="sure">구매확정</option>
</c:when>
<c:when test="${item.delivery_state=='prepared' }">
<option value="payment">결제완료</option>
<option value="prepared" selected >배송준비중</option>
<option value="delivering" >배송중</option>
<option value="finished">배송완료</option>
<option value="cancle">주문취소</option>
<option value="sure">구매확정</option>
</c:when>
<c:when test="${item.delivery_state=='delivering' }">
<option value="payment">결제완료</option>
<option value="prepared" >배송준비중</option>
<option value="delivering" selected>배송중</option>
<option value="finished">배송완료</option>
<option value="cancle">주문취소</option>
<option value="sure">구매확정</option>
</c:when>
<c:when test="${item.delivery_state=='finished' }">
<option value="payment">결제완료</option>
<option value="prepared" >배송준비중</option>
<option value="delivering">배송중</option>
<option value="finished" selected>배송완료</option>
<option value="cancle">주문취소</option>
<option value="sure">구매확정</option>
</c:when>
<c:when test="${item.delivery_state=='cancle' }">
<option value="payment">결제완료</option>
<option value="prepared" >배송준비중</option>
<option value="delivering">배송중</option>
<option value="finished">배송완료</option>
<option value="cancle"  selected>주문취소</option>
<option value="sure">구매확정</option>
</c:when>
<c:when test="${item.delivery_state=='sure'}">
<option value="payment">결제완료</option>
<option value="prepared" >배송준비중</option>
<option value="delivering">배송중</option>
<option value="finished">배송완료</option>
<option value="cancle">주문취소</option>
<option value="sure"  selected>구매확정</option>
</c:when>
</c:choose>
</select>
</td>
<td width="10%">
<input type="button" value="배송수정" onclick="modify_order_state('${item.order_idx}','delivery_state${i.index}')"> 
</td>
 
<c:set value="${item.order_idx}" var="pre_order_idx"></c:set>
</c:forEach>
</tbody>
</table>
<footer style="margin-top: 500px;">
<%@ include file="../menu/footer.jsp"%>
</footer>
</body>
</html>