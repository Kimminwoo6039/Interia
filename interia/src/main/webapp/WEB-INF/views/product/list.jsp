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
</head>
<body>

<!-- navbar -->
<div class="container">
	<header class="section-header">

		<section class="header-main border-bottom bg-white">
			<div class="container-fluid">
				<div class="row p-2 pt-3 pb-3 d-flex align-items-center">
					<div class="col-md-2">
						<a
							style="color: #212629; font-size: 28px; font-family: 'Noto Sans KR', sans-serif;" href="<%=request.getContextPath()%>/">오늘의
							인테리어</a>
					</div>


					<div class="col-md-6">

						<div class="container">

							<div
								class="row height d-flex justify-content-center align-items-center">

								<div class="col-md-12">

									<div class="form">
										<i class="fa fa-search"></i> <input type="text"
											class="form-control form-input" placeholder="상품검색"> <span
											class="left-pan"><i class="fa fa-microphone"></i></span>

									</div>

								</div>

							</div>

						</div>

					</div>

					<div class="col-md-4">
						<div class="d-flex d-none d-md-flex flex-row align-items-center">
							<div class="d-flex flex-column ms-1">

								<a href="#"
									style="color: #666366; text-decoration: none; list-style: none;"><span
									class="fw-bold">로그인</span></a>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="#"
									style="color: #666366; text-decoration: none; list-style: none;"><span
									class="fw-bold">회원가입</span></a>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="#"
									style="color: #666366; text-decoration: none; list-style: none;"><span
									class="fw-bold">고객센터</span></a>
							</div>
							<div class="d-flex flex-column ms-6" style="margin-left: 60px;">

								<a href="#"> <i class="fa-solid fa-cart-shopping"
									style="font-size: 30px; color: black;"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

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
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="<%=request.getContextPath()%>/"
							style="font-family: 'Noto Sans KR', sans-serif; font-size: 18px; color: #2F3438;">스토어홈</a>
						</li>
						<li class="nav-item"><a class="nav-link active" aria-current="page"
							href="#"
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
<!-- 네비게이션끝 -->


<!-- 리스트 -->

<section id="sidebar">
<h1 style="float: left;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;margin-left: 80px;color: #ff7777">판매상품</h1><br><br>
		<div style="display: flex;text-decoration: none;">
		
			<ul style="padding-left: 100px;text-decoration: none;">
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;color: black;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=GUCCI" style="color: #000;">가구</a></li>
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=BOTTEGA VENETA" style="color: #000;">가전제품
						</a></li>
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"> <a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=BURBERRY" style="color: #000;">조명</a></li>
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=MAISON MARGIELA" style="color: #000;">
						캠핌용품</a></li>
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=THOM BROWN" style="color: #000;">
						생필용품</a></li>
				<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=VALETINO" style="color: #000;">주방용품</a></li>
					<li style="margin-top: 10px;font-family: 'Noto Sans KR', sans-serif;font-size: 20px;"><a
					href="<%=request.getContextPath()%>/shop/product/list.do?brand=GUCCI" style="color: #000;">실내용품</a></li>
			</ul>
			
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width: 1150px;height: 100px;margin-left: 190px;">
  
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<%=request.getContextPath()%>/resources/image/6.png" class="d-block w-100">
    </div>
     <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/1.webp" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/2.webp" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/3.webp" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/4.webp" class="d-block w-100" >
    </div>
     <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/5.png" class="d-block w-100" >
    </div>
  </div>
  
   
  
  
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>

  
</div>


		</div>
		
<c:if test="${sessionScope.memberid != null }">

<a href="<%=request.getContextPath()%>/product/write.do" style="float:inherit;margin-left: 350px;">
<button type="button" class="btn btn-sm bg-dark text-white">
상품등록
</button>
</a>

</c:if>
	</section>
	
	
	<!-- 아이템 -->
	
	<div class="row" style="width: 1400px;margin: auto;margin-bottom: 200px;">
	
	
	<c:forEach var="row" items="${list}">
	
		<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
			
				<div class="product">
				
					
					<img src="<%=request.getContextPath()%>/resources/images/${row.filename}"
						alt="" style="width: 250px;height: 250px;margin-top: 12px;">
					<ul style="justify-content: center;">
					<span class="title" style="margin-right: 40px;display: block;font-size: 11px;color: #828c94;">${row.product_brand}</span>
					<span class="price" style="padding-bottom: 10px;font-size: 13px;color: #424242;">${row.product_name}</span><br>
					<span style="font-size: 17px;font-family: 'Noto Sans KR', sans-serif;margin-left: 60px;">	
					<fmt:formatNumber value="${row.product_price}" pattern="#,###" />&nbsp;원 
					</span>
					
					<!-- 상품수정하는 페이지 -->
					<c:if test="${session.Scope.memberid !=null}">
					
					<a href="<%=request.getContextPath()%>/product/edit/${row.product_code}">
					
					<button type="button" class="btn btn-sm bg-dark text-white" >
					수정
					</button>
					
					</a>
					
					</c:if>
					
					
					</ul>		
				</div>
	
			</div>
			
	</c:forEach>		
			
			
</div>


</body>
</html>