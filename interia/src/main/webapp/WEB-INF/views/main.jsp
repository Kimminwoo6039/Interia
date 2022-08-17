<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.button{
    height: 45px;
    width: 150px;
    letter-spacing: 2px;
    background-color: transparent;
    cursor: pointer;
    border: 2px solid #91d3ff;
    border-radius: 3px;
    color: #91d3ff;
    transition: all 0.5s;
    position: relative;
}

.button:hover{
     background-color: #fff; 
    color: black;
}

.button::after{
    content:attr(data-text);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,50%) scale(5);
    width: 100%;
    color: #91d3ff;
    transition:tranform 1s;
    opacity: 0;
}

.button:hover::after{
    transform: translate(-50%,-50%) scale(1);
    opacity: 1;
}


</style>



</head>
<body style="background: #fff">


<!-- navbar -->
<div class="container">
	<header class="section-header">

<section class="header-main border-bottom bg-white">
	<div class="container-fluid">
       <div class="row p-2 pt-3 pb-3 d-flex align-items-center">
           <div class="col-md-2">
               <a style="color: #212629;font-size: 28px;font-family: 'Noto Sans KR', sans-serif;">오늘의 인테리어</a>
           </div>
           
           
           <div class="col-md-6">
           
   <div class="container">

            <div class="row height d-flex justify-content-center align-items-center">

              <div class="col-md-12">

                <div class="form">
                  <i class="fa fa-search"></i>
                  <input type="text" class="form-control form-input" placeholder="상품검색">
                  <span class="left-pan"><i class="fa fa-microphone"></i></span>
              
                </div>
                
              </div>
              
            </div>
           
          </div>
        
           </div>

					<div class="col-md-4">
						<div class="d-flex d-none d-md-flex flex-row align-items-center">
							<div class="d-flex flex-column ms-1">

								<a href="#"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">로그인</span></a>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="#"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">회원가입</span></a>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="#"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">고객센터</span></a>
							</div>
							<div class="d-flex flex-column ms-6" style="margin-left: 60px;">

								<a href="#"> <i class="fa-solid fa-cart-shopping" style="font-size: 30px;color: black;"></i></a>
							</div>
						</div>
					</div>
				</div>
	</div> 
</section>

<nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
  <div class="container-fluid">
    <a class="navbar-brand d-md-none d-md-flex" href="#">스토어홈</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color:#91d3ff; ">스토어홈</a>
        </li>
        <li class="nav-item">
           <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">베스트</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">오늘의상품</a>
        </li>
        <li class="nav-item">
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
        </li>
         <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" style="font-family: 'Noto Sans KR', sans-serif;font-size: 18px;color: #2F3438; ">지난이벤트</a> 
        </li>
      </ul>
    </div>
  </div>
</nav>

</header>

</div>


<!-- 슬라이드 -->

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  

  
  
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

<div class="container" style="display: flex;justify-content: center;align-items: center;height: 160px;">

<div class="social-buttons">
    
    
	       <button class="neo-button"><i class="fa fa-facebook fa-2x"></i> </button>
           <button class="neo-button"><i class="fa fa-linkedin fa-2x"></i> </button>
           <button class="neo-button"><i class="fa fa-google fa-2x"></i> </button>
           <button class="neo-button"><i class="fa fa-dribbble fa-2x"></i> </button>
             <button class="neo-button"><i class="fa fa-twitter fa-2x"></i> </button>
             </div>


</div>


</body>
</html>