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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/navstyle.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail1.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail2.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail4.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail5.css">

<style type="text/css">


._1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn:hover{

background-color: #fafafa;

}

</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
               
                
                } else {
                  
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


<script type="text/javascript">


function check(){
	
	var fm = document.form1;
	
	if(fm.va.value==""){
		alert('배송지를 입력해주세요');
		fm.va.focus();
		return;
	}else if(fm.order_name.value==""){
		alert('받는분을 입력해주세요');
		fm.order_name.focus();
		return;
	}else if(fm.order_phone.value==""){
		alert('번호를 입력해주세요');
		fm.order_phone.focus();
		return;
	}else if(fm.order_addr1.value==""){
		alert('우편번호를 입력해주세요');
		fm.order_addr1.focus();
		return;
	}else if(fm.order_addr2.value==""){
		alert('주소를 입력해주세요');
		fm.order_addr2.focus();
		return;
	}else if(fm.order_addr3.value==""){
		fm.order_addr3.focus();
		return;
	}else if(fm.name1.value==""){
		alert('이름을 입력해주세요');
		fm.name1.focus();
		return;
	}else if(fm.email.value==""){
		alert('이메일을 입력해주세요');
		fm.email.focus();
		return;
	}else if(fm.phone.value==""){
		alert('휴대폰 번호를 입력해주세요');
		fm.phone.focus();
		return;
	}
	
	
	
	fm.action ="<%=request.getContextPath()%>/order/update.do";
	fm.method="post";
	fm.submit();
	
	
}


</script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../menu/include.jsp"%>


<form action="<%=request.getContextPath()%>/order/update.do"	method="post" name="form1">

<div class="commerce-cart-wrap1">
	<div class="container">
		<div class="commerce-cart row">
			<div class="commerce-cart__content-wrap col-12 col-md-7 col-lg-8">
			
				<h4 class="fw-bold" style="margin-top: 10px;opacity: 0.8;margin-top: 20px;">주문/결제</h4>
			<hr>	
			
			<div style="width: 730px;height: 110px;background: #fafafa;margin: auto;display: flex;align-items: center;justify-content: center;">
			비회원은 쿠폰 & 포인트 혜택을 받을 수 없습니다.<br>
			 
             회원가입하고 다양한 혜택과 첫구매쿠폰을 받으세요.
             
            &nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/member/join.do" style="color: #35c5f0;">회원가입하러가기></a>	
			</div>
			
			
			
			<h4 class="fw-bold" style="margin-top: 10px;opacity: 0.8;margin-top: 20px;">주문자</h4>
			<hr>	
				
					<label style="width: 72px;height: 40px;">이름</label>
					<input type="text" name="name1" placeholder="이름을 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);">
					<br>
					
					<label style="width: 72px;height: 40px;margin-top: 8px;">이메일</label>
					<input type="email" name="email" placeholder="이메일을 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;">	
			
			         <br>
					<label style="width: 72px;height: 40px;margin-top: 8px;">휴대전화</label>
					
					
					<input type="text" name="phone" placeholder="휴대전화를 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;">	
			
			
			
			
			

 <input type="hidden" name="order_product" value="${map.product_name}">  
<input type="hidden" name="order_sum" value="${map.total}">
<input type="hidden" name="order_cart" value="${map.cart}">
<input type="hidden" name="order_id" value="${map.id}">
<input type="hidden" name="order_code" value="${map.code}">

			
			
			<!-- 배송지-->
			      <h4 class="fw-bold" style="margin-top: 10px;opacity: 0.8;margin-top: 100px;">배송지</h4>
			     <hr>	
			 
			    <label style="width: 72px;height: 40px;">배송지명</label>
					<input type="text" name="va" placeholder="배송지를 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);">
					<br>
					
					 <label style="width: 72px;height: 40px;">받는사람</label>
					<input type="text" name="order_name" placeholder="수령할분의 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;">
					<br>
			   
					<label style="width: 72px;height: 40px;margin-top: 8px;">연락처</label>
					<input type="text" name="order_phone" placeholder="휴대전화를 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;">	
			     
			     <br>
			   
					<label style="width: 72px;height: 40px;margin-top: 8px;width: 72px;height: 40px;">주소</label>
					<input type="button" value="주소찾기" class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn" style="width: 85px;height: 50px;" onclick="sample6_execDaumPostcode()" >
					<input type="text" placeholder="휴대전화를 입력해주세요" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="margin-right:8px;width: 270px;min-height:40px;background: rgb(255, 255, 255);color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;" name="order_addr1" id="sample6_postcode">	
			     <Br>
			     <input type="text"  class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="margin-left:75px;width: 570px;min-height:40px;background: #fafafa;color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;" name="order_addr2" id="sample6_address">	
				<input type="text" class="_1eWD8 _3SroY _27do8 commerce-cart__side-bar__order__btn" style="margin-left:75px;width: 570px;min-height:40px;background: #fafafa;color: black;font-size: 14px;font-weight: normal;border-color: rgb(219, 219, 219);margin-top: 8px;" name="order_addr3"	id="sample6_detailAddress">	
				
				 
				
				<!-- 배송지-->
			      <h4 class="fw-bold" style="margin-top: 10px;opacity: 0.8;margin-top: 100px;">주문상품</h4>
			     <hr>	
				
			
				
				<c:forEach var="row" items="${map.list}">


	<ul class="commerce-cart__content__group-list">
		<li class="commerce-cart__content__group-item"><article
				class="commerce-cart__group">
				<h1 class="commerce-cart__group__header">${row.product_brand }</h1>
				<ul class="commerce-cart__group__item-list">
					<li class="commerce-cart__group__item"><article
							class="commerce-cart__delivery-group">
							<ul class="commerce-cart__delivery-group__product-list">
								<li class="commerce-cart__delivery-group__product-item"><article
										class="carted-product">
										<div class="carted-product__select"></div>
										<a style="padding-top:;"
											class="product-small-item product-small-item--clickable"
											href="<%=request.getContextPath()%>/product/detail/${row.product_code}">

											<img
											src="<%=request.getContextPath()%>/resources/images/${row.filename}"
											style="width: 70px; height: 70px;">

											<div class="product-small-item__content">

												제품명 :
												<h1 class="product-small-item__title"
													style="margin-right: 80px; margin-top: 20px;">${row.product_name}</h1>

											</div>
										</a>

									

									
										<ul class="carted-product__option-list">
											<li class="carted-product__option-list__item"><article
													class="selling-option-item">



													<h2 class="selling-option-item__name">
														${row.product_name }</h2>


													<div class="selling-option-item__controls">
														<div class="selling-option-item__quantity">

															


														</div>
														<p class="selling-option-item__price">
															<span class="selling-option-item__price__number">

																<fmt:formatNumber value="${row.money}"
																	pattern="#,###" />

															</span>원
														</p>
													</div>
												</article></li>
										</ul></li>
							</ul>

						</article></li>
				</ul>
			</article></li>
	</ul>

</c:forEach>
				
				
				
				
				
				
				
				
				
				</div>
				
			
				
				
				
				<div class="commerce-cart__side-bar-wrap col-12 col-md-5 col-lg-4">
					<div class="sticky-container commerce-cart__side-bar-container"
						style="position: sticky; top: 81px; transition: top 0.1s ease 0s;">
						<div class="sticky-child commerce-cart__side-bar"
							style="position: relative;">
							<dl
								class="commerce-cart__summary commerce-cart__side-bar__summary">
								<div class="commerce-cart__summary__row">
									<dt>총 상품금액</dt>
									<dd>
										<span class="number"><fmt:formatNumber value="${map.sumMoney}" pattern="#,###" /></span>원
									</dd>
								</div>
								<div class="commerce-cart__summary__row">
									<dt>총 배송비</dt>
									<dd>
										+ <span class="number"><fmt:formatNumber value="${map.fee}" pattern="#,###" /></span>원
									</dd>
								</div>
								<div class="commerce-cart__summary__row">
									<dt>총 할인금액</dt>
									<dd>
										- <span class="number">0</span>원
									</dd>
								</div>
								<div class="commerce-cart__summary__row commerce-cart__summary__row--total">
									<dt>결제금액</dt>
									<dd>
										<span class="number"><fmt:formatNumber value="${map.total}" pattern="#,###" /></span>원
									</dd>
								</div>
                                  

							</dl>
							<div class="commerce-cart__side-bar__order">
								<button class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn" type="button" onclick="check()">${map.count}개 상품 결제하기</button>
								
							</div>
							
						
						
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
 </form>
</body>
</html>