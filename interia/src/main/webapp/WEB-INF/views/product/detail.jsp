<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/navstyle.css">
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail1.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail2.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/detail3.css">



<!-- 장바구니 -->

<script type="text/javascript">


function check(){  

var fm = document.form;

let result = $("#result").text();
console.log('result='+result) 

$("#amount").val(result);
		  console.log("amount ="+$("#amount").val());

		  let amount =  $("#amount").val();
	console.log("##### ="+amount);

if (amount==0){
		alert("수량을 선택해주세요");

		
		return;
}  

	
	//가상경로 사용
	   fm.action = "<%=request.getContextPath()%>/cart/insert.do";
		fm.method = "post";
		fm.submit();

		return;
	}
</script>





</head>
<body>

	<%@ include file="../menu/include.jsp"%>

			<nav
				class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
				<div class="container-fluid">
					<a class="navbar-brand d-md-none d-md-flex" href="#">스토어홈</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
						aria-controls="navbarNavDropdown" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavDropdown">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="<%=request.getContextPath()%>/"
								style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">스토어홈</a>
							</li>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page"
								href="<%=request.getContextPath()%>/product/list.do"
								style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #91d3ff;">전체상품</a>
							</li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#"
								style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">베스트</a>
							</li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#"
								style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">오늘의상품</a>
							</li>
							<!-- 	<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">시즌세일</a>
						</li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">빠른배송</a>
						</li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">이벤트존</a>
						</li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">리퍼마켓</a>
						</li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">기획존</a>
						</li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">신상품</a>
						</li> -->

						</ul>
					</div>
				</div>
			</nav>

		</header>

	</div>
	<!-- navbar 끝 -->
	
	<form name="form">
<input type="hidden" name="product_code" value="${vo.product_code}">

	<div class="production-selling-overview__container row" style="width: 1200px;margin: auto;margin-top: 40px;">
		<div
			class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
			<div class="production-selling-cover-image-container">
				<div
					class="carousel production-selling-cover-image production-selling-overview__cover-image"
					role="region" aria-roledescription="carousel">
					
					
					
					<!-- 이미지 -->
					
			<div class="carousel__list-wrap production-selling-cover-image__carousel-wrap">
				
				
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width: 584px;height: 584px;">
			
			
			<div class="carousel-inner">
			  <div class="carousel-item active">
			    <img src="<%=request.getContextPath()%>/resources/images/${vo.filename}" class="d-block w-100" style="width: 584px;height: 584px;">
			</div>
			
			  </div>
			
			</div>
						
					</div>
					
					<!-- 이미지끝 -->
					
					
					
					<ul class="production-selling-cover-image__list">
						<li class="production-selling-cover-image__list__item"><button
								class="production-selling-cover-image__list__btn" type="button"
								aria-label="5개 중 1번째 항목">
								<img class="image" alt="상품의 대표 이미지"
									src="<%=request.getContextPath()%>/resources/images/${vo.filename}"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/166056612851363023.gif?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/166056612851363023.gif?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/166056612851363023.gif?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 3x">
							</button></li>
						
					</ul>
					<div class="production-selling-cover-image__paginator">
						<ul class="carousel-paginator">
							<li><span class="carousel-paginator__page" data-key="1"></span></li>
							<li><span class="carousel-paginator__page" data-key="2"></span></li>
							<li><span class="carousel-paginator__page" data-key="3"></span></li>
							<li><span class="carousel-paginator__page selected"
								data-key="4"></span></li>
							<li><span class="carousel-paginator__page" data-key="5"></span></li>
						</ul>
					</div>
				</div>
				<div class="production-selling-cover-image__timer--mobile">
					<a class="production-selling__timer"
						href="https://store.ohou.se/today_deals"><span
						class="production-selling__timer__title"><svg
								class="production-selling__timer__title__time-icon" width="15"
								height="15" preserveAspectRatio="xMidYMid meet">
								<path fill="#FFC5C5"
									d="M13.125 7.5a5.625 5.625 0 10-11.25 0 5.625 5.625 0 0011.25 0zM7.5 0a7.5 7.5 0 110 15 7.5 7.5 0 010-15zm.759 3.75H6.562v4.589l3.326 2.035.805-1.45-2.434-1.5V3.75z"></path></svg>오늘의딜</span>
						<div class="production-selling__timer__time">3일 남음</div> <svg
							class="production-selling__timer__arrow-icon" width="14"
							height="14" preserveAspectRatio="xMidYMid meet">
							<path fill="#FFF"
								d="M3.5 11.487l1.313 1.346L10.5 7 4.812 1.167 3.5 2.513 7.875 7z"></path></svg></a>
				</div>
			</div>
		</div>
		<div
			class="production-selling-overview__content col-12 col-md-6 col-lg-5">
			<div class="production-selling-header">
				<h1 class="production-selling-header__title">
					<p class="production-selling-header__title__brand-wrap">
					
					
					  <!-- 브랜드 -->
					
						<a class="production-selling-header__title__brand" style="margin-right: 420px;">
						
						${vo.product_brand}
						
						</a>
						
						
						
					</p>
					<div class="production-selling-header__title__name-wrap">
					
					<!-- 상품명 -->
					 
						<span class="production-selling-header__title__name">
					${vo.product_name}
							
							
							
						<div class="production-selling-header__action">
							<button
								class="production-selling-header__action__button production-selling-header__action__button-scrap"
								type="button">
								<svg class="icon--stroke" aria-label="스크랩" width="24"
									height="24" fill="currentColor" stroke="currentColor"
									stroke-width="0.5" viewBox="0 0 24 24"
									preserveAspectRatio="xMidYMid meet">
									<path
										d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
								<span class="count">30</span>
							</button>
							<div class="drop-down">
								<button class="production-selling-header__action__button"
									type="button">
									<svg class="icon" aria-label="공유하기" width="24" height="24"
										viewBox="0 0 24 24" fill="currentColor"
										preserveAspectRatio="xMidYMid meet">
										<path
											d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg>
								</button>
							</div>
						</div>
					</div>
				</h1>
				<div
					class="production-selling-header__content production-selling-header__content--deal">
					<div class="production-selling-header__price">
						<span class="production-selling-header__price__price-wrap"><span
							class="production-selling-header__price__price"><span
								class="number">
								<fmt:formatNumber
											value="${vo.product_price}" pattern="#,###" />
											
											</span><span class="won">원</span>
								<span lass="production-selling-header__price__badge" style="margin-top: 1px;">
								<svg class="icon" width="30" height="20" viewBox="0 0 30 20"
										preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="5"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span></span></span>
					</div>
				</div>
				
				
				
				
				
				<a class="css-1jw8uh0 e3xbt9p7">
				
				
				<div class="production-selling-header__info-wrap">
					<div class="production-selling-header__delivery">
						<div class="production-selling-header__delivery__title-wrap">
							<span>배송</span>
						</div>
						<div class="production-selling-header__delivery__content-wrap">
							<span class="production-selling-header__delivery__type">
								100.000원 이상구매시 무료</span>
						</div>
					</div>
				</div>
				
					
					<div class="production-selling-header__info-wrap">
					<div class="production-selling-header__delivery">
						<div class="production-selling-header__delivery__title-wrap">
							<span>브랜드</span>
						</div>
						<div class="production-selling-header__delivery__content-wrap">
							<span class="production-selling-header__delivery__type">배송
								상품정보 참고</span>
						</div>
					</div>
				</div>
					
					
					<div class="production-selling-header__info-wrap">
					<div class="production-selling-header__delivery">
						<div class="production-selling-header__delivery__title-wrap">
							<span>원산지</span>
						</div>
						<div class="production-selling-header__delivery__content-wrap">
							<span class="production-selling-header__delivery__type">
								국내산</span>
						</div>
					</div>
				</div>	
					
					
					
					
					
					
					</a>
			</div>
			<div
				class="production-selling-option-form production-selling-overview__option-form">
				<div
					class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">
					
					
					<!-- 수량 -->
					
					<div class="selling-option-form-content__form">

						<div style="display: flex;margin: auto;">
							<input type='button' onclick='count("minus")' value='-'
								class="btn btn-outline-dark  " style="width: 40px;">
							<div value="result" id='result' style="margin: 10px;">0</div>
							<input name="amount" id="amount" value="" type="hidden">
							<input type='button' onclick='count("plus")' value='+'
								class="btn btn-dark" / style="width: 40px;background: #91d3ff;opacity: 0.8">
						</div>


					</div>

					<script>
						function count(type) {
							// 결과를 표시할 element
							const resultElement = document
									.getElementById('result');

							// 현재 화면에 표시된 값
							let number = resultElement.innerText;

							// 더하기/빼기
							if (type === 'plus') {
								number = parseInt(number) + 1;
							} else if (type === 'minus') {
								number = parseInt(number) - 1;
								if (number < 0) {
									number = 0;
								}
							}

							// 결과 출력
							resultElement.innerText = number;

							number = amount;
						}
					</script>




					<!-- 수량끝 -->
				   
					<p class="selling-option-form-content__price">
						<span class="selling-option-form-content__price__left">주문금액</span><span
							class="selling-option-form-content__price__right"><span
							class="selling-option-form-content__price__number"><fmt:formatNumber value="${vo.product_price}" pattern="#,###" /></span>원</span>
					</p>
				</div>
				<div class="production-selling-option-form__footer">
					<button
						class="button button--color-blue-inverted button--size-55 button--shape-4"
						type="button" onclick="location.href='<%=request.getContextPath()%>/product/list.do'">목록으로</button>
					<button
						class="button button--color-blue button--size-55 button--shape-4"
						type="button" onclick="check()">구매하기</button>
				</div>
			</div>
			<div class="production-selling-overview__promotion-banner">
				<a class="production-selling-promotion-banner" href="/events/promotions/o-season-week-22-fall?outbound=false&amp;click_action_type=webview">
					<img src="<%=request.getContextPath()%>/resources/image/1.webp" style="width: 480px;height: 150px;">
					
			</div>
		</div>
	</div>
	</form>
<br>
<br>
<br>
<hr width="1200px;" style="margin: auto;">


</body>
</html>