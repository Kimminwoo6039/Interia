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
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/navstyle.css">


<style type="text/css">



</style>





</head>
<body style="background: #fff">


<%@ include file="menu/include.jsp"%>

<nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
  <div class="container-fluid">
    <a class="navbar-brand d-md-none d-md-flex" href="#">스토어홈</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color:#91d3ff;">스토어홈</a>
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

</header>

</div>


<!-- 슬라이드 -->

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width: 1900px;height: 400px;">
  

  
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<%=request.getContextPath()%>/resources/image1/1z.webp" class="d-block w-100">
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
      <img src="<%=request.getContextPath()%>/resources/image/6.png" class="d-block w-100" >
    </div>
  </div>
  
    <div class="carousel" style="display: flex;justify-content: center;">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1" class="button">오늘의인테리어</button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" class="button">여름이벤트</button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" class="button">반짝특가</button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4" class="button">빅세일</button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5" class="button">신학기</button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6" class="button">자취템</button>
 
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

<div class="container" style="display: flex;align-items: center;height: 160px;width: 1100px;justify-content: center;margin-top: 30px;">

<div class="social-buttons">


			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#f05650 ">
				<img src="<%=request.getContextPath()%>/resources/image1/11.png"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">시즌세일</p>
				</div>
			</button>

			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#6df6ea">
				<img src="<%=request.getContextPath()%>/resources/image1/44.png"
					style="width: 65px; height: 65px; border: none; border-radius: 16px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">빠른배송</p>
				</div>
			</button>
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#99ccff">
				<img src="<%=request.getContextPath()%>/resources/image1/33.png"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">자취필수</p>
				</div>
			</button>
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#d0936d">
				<img src="<%=request.getContextPath()%>/resources/image1/55.png"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">캠핑용품</p>
				</div>
			</button>
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#ffc0cb">
				<img src="<%=request.getContextPath()%>/resources/image1/66.png"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">전자제품</p>
				</div>
			</button>
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#BFC9AB">
				<img src="<%=request.getContextPath()%>/resources/image1/77.png"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">수리센터</p>
				</div>
			</button>
		</div>


</div>

<br>
<Br>
<!-- ddd -->
<A style="font-family: 'Noto Sans KR', sans-serif;margin-left: 400px;margin-top: 120px;font-size: 24px;">오늘의상품</A><a style="font-family: 'Noto Sans KR', sans-serif;margin-left: 1050px;margin-top: 120px;color: #ff7777" href="#" >더보기</a>
<div class="container" style="display: flex;align-items: center;height:3000px;width: 1200px;height: 400px;padding-bottom: 120px;margin-top: px;">


	<c:forEach var="row" items="${list}">


			<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
			
				<div class="product" style="margin-top: 100px;">
			
					<a href="<%=request.getContextPath()%>/product/detail/${row.product_code}"><img
						src="<%=request.getContextPath()%>/resources/images/${row.filename}"
						alt="" style="width: 250px;height: 250px;margin-top: 12px;"></a>
					<ul style="justify-content: center;">
					<span class="title" style="margin-right: 40px;display: block;font-size: 11px;color: #828c94;">${row.product_brand}</span>
					<span class="price" style="padding-bottom: 10px;font-size: 13px;color: #424242;">${row.product_name}</span><br>
					<span style="font-size: 17px;font-family: 'Noto Sans KR', sans-serif;margin-left: 60px;">
					<fmt:formatNumber value="${row.product_price}" pattern="#,###" />&nbsp;원 
					</span>
					</ul>		
				</div>
	
			</div>
			
				

	 </c:forEach>
			
			

<!-- 카테고리 -->
		

</div>



<!-- ddd -->
<A style="font-family: 'Noto Sans KR', sans-serif;margin-left: 400px;margin-top: 140px;font-size: 24px;">카테고리</A>
<div class="container" style="display: flex;align-items: center;height:3000px;width: 1200px;height: 400px;padding-bottom: 120px;margin-top: px;padding-top: 50px;">



<div class="social-buttons">

<a href="<%=request.getContextPath()%>/product/list.do?brand=가구">
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none; ">
				<img src="<%=request.getContextPath()%>/resources/image1/1a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">가구</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=가전제품">
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none;">
				<img src="<%=request.getContextPath()%>/resources/image1/2a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 16px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">가전제품</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=조명">
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none;">
				<img src="<%=request.getContextPath()%>/resources/image1/3a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">조명</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=캠핌용품">			
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none;">
				<img src="<%=request.getContextPath()%>/resources/image1/4a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">캠핑용품</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=생필용품">
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none;">
				<img src="<%=request.getContextPath()%>/resources/image1/5a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">생필용품</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=주방용품">			
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:none;">
				<img src="<%=request.getContextPath()%>/resources/image1/6a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">주방용품</p>
				</div>
			</button>
</a>
<a href="<%=request.getContextPath()%>/product/list.do?brand=실내용품">
			<button class="button1"
				style="width: 80px; height: 80px; border: none; border-radius: 8px;margin: 4px 40px;background:#BFC9AB">
				<img src="<%=request.getContextPath()%>/resources/image1/7a.webp"
					style="width: 65px; height: 65px; border: none; border-radius: 8px;align-items: center;padding-top: 12px;">
				<div style="margin-top: 12px;">
				<p style="font-size: 16px;color: #2F3438;font-family: 'Noto Sans KR', sans-serif;margin-top: 8px;">실내용품</p>
				</div>
			</button>
</a>			
		</div>



</div>
<!-- ㅇㅇㅇ -->

<A  style="font-family: 'Noto Sans KR', sans-serif;margin-left: 400px;margin-top: 140px;font-size: 24px;">인기상품</A><a href="<%=request.getContextPath() %>/product/best.do" style="font-family: 'Noto Sans KR', sans-serif;margin-left: 1050px;margin-top: 140px;color: #ff7777" >더보기</a>
<div class="container" style="display: flex;align-items: center;height:200px;width: 1200px;height: 400px;padding-bottom: 120px;margin-top: px;margin-bottom: 60px;">

<Div class="row" style="margin-top: 500px;">


<c:forEach var="row" items="${list1}">

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
			
				<div class="product">
			
					<a href="<%=request.getContextPath()%>/product/detail/${row.product_code}"><img
						src="<%=request.getContextPath()%>/resources/images/${row.filename}"
						alt="" style="width: 250px;height: 250px;margin-top: 12px;"></a> 
					<ul style="justify-content: center;">
					<span class="title" style="margin-right: 40px;display: block;font-size: 11px;color: #828c94;">${row.product_brand}</span>
					<span class="price" style="padding-bottom: 10px;font-size: 13px;color: #424242;">${row.product_name}</span><br>
					<span style="font-size: 17px;font-family: 'Noto Sans KR', sans-serif;margin-left: 60px;">
					<fmt:formatNumber value="${row.product_price}" pattern="#,###" />&nbsp;원 
					</span>
					</ul>		
				</div>
	
			</div>
			
				

	
			
</c:forEach>				




</div>


	


	</div>




</body>
</html>