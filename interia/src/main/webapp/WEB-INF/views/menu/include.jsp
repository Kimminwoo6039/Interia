<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/navstyle.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- navbar -->
<div class="container" style="width: 2000px;">
	<header class="section-header">

<section class="header-main border-bottom bg-white">
	<div class="container-fluid">
       <div class="row p-2 pt-3 pb-3 d-flex align-items-center">
           <div class="col-md-2">
               <a style="color: #212629;font-size: 24px;font-family: 'Noto Sans KR', sans-serif;" href="<%=request.getContextPath()%>/">오늘의 인테리어</a>
           </div>
           
           
           <div class="col-md-5">
           
   <div class="container">

            <div class="row height d-flex justify-content-center align-items-center">

              <div class="col-md-12">

              <form action="<%=request.getContextPath()%>/product/list.do">
                <div class="form">
                  <i class="fa fa-search"></i>
                  <input type="text" class="form-control form-input" placeholder="상품검색" name="keyword">
                  <span class="left-pan"><i class="fa fa-microphone"></i></span>
              </form>
                </div>
                
              </div>
              
            </div>
           
          </div>
        
           </div>

					<div class="col-md-5">
						<div class="d-flex d-none d-md-flex flex-row align-items-center">
						
						
						     <c:if test="${sessionScope.memberid==null and sessionScope.admin_userid==null}">
						  
							<div class="d-flex flex-column ms-1">                              
								<a href="<%=request.getContextPath()%>/member/login.do"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">로그인</span></a>
							</div>
							
							<div class="d-flex flex-column ms-2">

								<a href="<%=request.getContextPath()%>/member/join.do"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">회원가입</span></a>
								</div>
									<div class="d-flex flex-column ms-1">                              
								<a href="<%=request.getContextPath()%>/admin/login.do"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">관리자</span></a>
							</div>
								 </c:if>
                                 
                                 
                                   <c:if test="${sessionScope.memberid != null and sessionScope.admin_userid==null}">
                                   
							<div class="d-flex flex-column ms-1">                              
								<strong style="font-size: 14px;color: #91d3ff"> ${sessionScope.name}님 어서오세요 </strong>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="<%=request.getContextPath()%>/member/logout.do"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">로그아웃</span></a>
								
								</div>
                                	
								<a href="<%=request.getContextPath()%>/mypage/main1.do?delivery_state="  style="color: #666366;text-decoration: none;list-style: none;margin-left: 8px;"><span class="fw-bold">마이페이지</span></a>
								
							        </c:if>
							        
							          <c:if test="${sessionScope.memberid == null and sessionScope.admin_userid!=null}">
                                   
							<div class="d-flex flex-column ms-1">                              
								<strong style="font-size: 14px;color: #91d3ff"> ${sessionScope.admin_name}님 어서오세요 </strong>
							</div>
							<div class="d-flex flex-column ms-2">

								<a href="<%=request.getContextPath()%>/member/logout.do"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">로그아웃</span></a>
								
								</div>
                                	
								<a href="<%=request.getContextPath()%>/admin/main.do?delivery_state="  style="color: #666366;text-decoration: none;list-style: none;margin-left: 8px;"><span class="fw-bold">관리자페이지</span></a>
								
							        </c:if>
							<div class="d-flex flex-column ms-2">

								<a href="#"  style="color: #666366;text-decoration: none;list-style: none;"><span class="fw-bold">고객센터</span></a>
							</div>
							<div class="d-flex flex-column ms-6" style="margin-left: 30px;">

								<a href="<%=request.getContextPath()%>/cart/list.do"> <i class="fa-solid fa-cart-shopping" style="font-size: 30px;color: black;"></i></a>
							</div>
							
						
						</div>
					</div>
				</div>
	</div> 
</section>

</body>
</html>