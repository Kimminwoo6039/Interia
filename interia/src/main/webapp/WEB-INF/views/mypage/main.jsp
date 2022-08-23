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
function cancel_order(order_idx){
	var answer = confirm("주문을 취소하시겠습니까?");
	if(answer == true){
		var formObj = document.createElement("form"); //폼 요소 생성
		var i_order_id = document.createElement("input"); // input 생성
		
		i_order_id.name = "order_idx";
		i_order_id.value = order_idx;
		
		formObj.appendChild(i_order_id);
		document.body.appendChild(formObj);
		formObj.method="post";
		formObj.action="<%=request.getContextPath() %>/mypage/cancel.do";
		formObj.submit();
	}
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
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color:#91d3ff;">주문배송내역조회</a>
        </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/product/list.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">전체상품</a> 
        </li>
        <li class="nav-item">
           <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/product/best.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438;">베스트</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<%=request.getContextPath() %>/product/today.do" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">오늘의상품</a>
        </li>
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
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=cancle"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">결제취소</div>
				<div class="order-list__menu__list__value">${count2}</div>
			</div></a>
		<a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=payment"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">결제완료</div>
				<div class="order-list__menu__list__value">${count1}</div>
			</div></a>
			<a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=prepared">
			<div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">배송준비</div>
				<div class="order-list__menu__list__value">${count3}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=delivering"><div
				class="order-list__menu__list__wrap">
				<div
					class="order-list__menu__list__title order-list__menu__list__title--focus">배송중</div>
				<div class="order-list__menu__list__value">${count4}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=finished"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">배송완료</div>
				<div class="order-list__menu__list__value">${count5}</div>
			</div></a><a class="order-list__menu__list"
			href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state=sure"><div
				class="order-list__menu__list__wrap">
				<div class="order-list__menu__list__title">구매확정</div>
				<div class="order-list__menu__list__value">${count6}</div>
			</div></a>
	</div>

	<table border="1px;" class="table" style="width: 1200px;margin: auto;">
               <tr style="font-size: 21px;margin-bottom: 20px;text-align: center;background: #35c5f0;opacity: 0.8">
   <td>주문번호</td>
  <td>주문일자</td>
  <td>주문상품</td>
   <td>주문금액</td>
   <td>주문상태</td>
   <td>주문자</td>
   <td>주문취소</td>
               <Br>
             
               <tr></tr>
      
               </tr>
               
                 <c:choose>
     <c:when test="${empty list}">            
            <tr style="display: flex;justify-content: center;margin: auto;margin-left: 500px;">
               <td colspan=2 class="fixed" style="justify-content: center;">
                  <strong style="justify-content: center;font-size: 16px;">주문한 상품이 없습니다.</strong>
               </td>
             </tr>
     </c:when>
     <c:otherwise>
	

		<c:forEach var="item" items="${list}">
                

            
                
  
  <tr>

   <td style="font-size: 14px;margin-left: 20px;margin-top: 20px;text-align: center;">
    ${item.order_idx}
  </td>
  
  <td style="font-size: 14px;margin-left: 20px;text-align: center;"> 
   ${item.date}
  </td>
  
  <td style="font-size: 14px;margin-left: 20px;text-align: center;">
  <strong>
 <A href="<%=request.getContextPath()%>/product/detail/${item.order_code}">${item.order_product}</A>
 </strong>
  </td>
  
  <td style="font-size: 14px;margin-left: 20px;text-align: center;">
 <fmt:formatNumber value="${item.order_sum}" pattern="#,###" />&nbsp;원
  </td>
  
  <td style="font-size: 14px;margin-left: 20px;text-align: center;">
  <strong>
 <c:choose>
  <c:when test="${item.delivery_state=='payment'}"> <!-- 조건문을 걸어줌 -->
  결제완료
  </c:when>
  <c:when test="${item.delivery_state=='prepared'}"> <!-- 조건문을 걸어줌 -->
  배송 준비중
  </c:when>
  <c:when test="${item.delivery_state=='delivering'}"> <!-- 조건문을 걸어줌 -->
  배송중
  </c:when>
  <c:when test="${item.delivery_state=='finished'}"> <!-- 조건문을 걸어줌 -->
  배송완료
  </c:when>
  <c:when test="${item.delivery_state=='cancle'}"> <!-- 조건문을 걸어줌 -->
  주문 취소
  </c:when>
  <c:when test="${item.delivery_state=='sure'}"> <!-- 조건문을 걸어줌 -->
  구매확정

  </c:when>
 </c:choose>
 </strong>
  </td>
  
  <td style="font-size: 14px;margin-left: 20px;text-align: center;" >
  ${item.order_name}
  </td>
  
  <td style="text-align: center;">
  
  <c:choose>
  
  <c:when test="${item.delivery_state=='payment'}">
  <input type="button" onclick="cancel_order(${item.order_idx})" value="주문취소" >
  </c:when>
  <c:otherwise>
    <input type="button" onclick="cacel_order('${item.order_idx}')" value="주문취소" disabled="disabled">
  
  </c:otherwise>
  
  </c:choose>
  
  
  </td>
  <c:set var="pre_order_id" value="${item.order_id}" />
  </tr>
                
                
                </c:forEach>
               </c:otherwise>
               </c:choose>
            
               </table>
<footer style="margin-top: 500px;">
<%@ include file="../menu/footer.jsp"%>
</footer>
</body>
</html>