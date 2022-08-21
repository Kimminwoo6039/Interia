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
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail1.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail2.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail4.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail5.css">


<script type="text/javascript">


$(function(){
	

	
	$("#btnDelete").click(function(){
		
		if(confirm("장바구니를 비우시겠습니까?")){
			location.href="<%=request.getContextPath()%>/cart/deleteAll.do";
		}
	})
	
	

	
	
})


</script>





</head>

<body style="background: #f5f5f5">

<%@ include file="../menu/include.jsp"%>

<form action="<%=request.getContextPath()%>/cart/update.do" method="post">
<div class="commerce-cart-wrap">
	<div class="container">
		<div class="commerce-cart row">
			<div class="commerce-cart__content-wrap col-12 col-md-7 col-lg-8">
				<div class="commerce-cart__content">
					<div class="sticky-container commerce-cart__header-wrap">
						<div class="sticky-child commerce-cart__header">
							<span class="commerce-cart__header__left"><label
								class="_3xqzr _4VN_z">
							
									<span class="_1aN3J"><span
										class="commerce-cart__header__caption">
										<button type="button" id="btnDelete" class="btn btn-sm bg-dark text-dark "style="margin-right: 28px;width: 140px;margin-top: 4px;">
										<h1 class="product-small-item__title" style="color: white;padding-bottom: 14px;margin-bottom: 26px;">전체삭제</h1>
										</button>
									
										
										</span></span></label></span><span
								class="commerce-cart__header__right"></span>
						</div>
					</div>


<c:forEach var="row" items="${map.list}">


	<ul class="commerce-cart__content__group-list">
		<li class="commerce-cart__content__group-item"><article
				class="commerce-cart__group">
				<h1 class="commerce-cart__group__header">제품 상세</h1>
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

										<!-- 개별삭제 -->

										<a
											href="<%=request.getContextPath()%>/cart/delete.do?cart_id=${row.cart_id}">
											<button class="carted-product__delete" type="button"
												aria-label="삭제">
												<svg width="12" height="12" viewBox="0 0 12 12"
													fill="currentColor"
													preserveAspectRatio="xMidYMid meet">
	<path fill-rule="nonzero"
														d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
											</button>
										</a>
										<ul class="carted-product__option-list">
											<li class="carted-product__option-list__item"><article
													class="selling-option-item">



													<h2 class="selling-option-item__name">
														${row.product_name }</h2>


													<div class="selling-option-item__controls">
														<div class="selling-option-item__quantity">

															<input type="hidden" name="cart_id"
																value="${row.cart_id}" id="cart_id"> <input
																type="number" name="amount" value="${row.amount}"
																style="width: 50px; height: 30px; border: none;"
																min="1" maxlength="100" id="amount">
															<button class="button"
																style="width: 100px; height: 30px;" id="check">수량변경</button>



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

</form>

</div>
					
						
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
								<button
									class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn" onclick="location.href='<%=request.getContextPath()%>/cart/order.do'"
									type="button">${map.count}개 상품 구매하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>

</body>
</html>