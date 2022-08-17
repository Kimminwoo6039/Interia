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

<style type="text/css">



.form-inputs{
    position:relative;
}
.form-inputs .form-control{
    height:45px; 
}

.form-inputs .form-control:focus{
    box-shadow:none;
    border:1px solid #000;
}

.form-inputs i{
    position:absolute;
    right:10px;
    top:15px;
}

.shop-bag{
    background-color:#000;
    color:#fff;
    height:50px;
    width:50px;
    font-size:25px;
    display:flex;
    border-radius:50%;
    align-items:center;
    justify-content:center;
}

.qty{
    font-size:12px;
}



.form{

    position: relative;
}

.form .fa-search{

    position: absolute;
    top:20px;
    left: 20px;
    color: #9ca3af;

}

.form span{

        position: absolute;
    right: 17px;
    top: 13px;
    padding: 2px;
    border-left: 1px solid #d1d5db;

}

.left-pan{
    padding-left: 7px;
}

.left-pan i{
   
   padding-left: 10px;
}

.form-input{

    height: 55px;
    text-indent: 33px;
    border-radius: 10px;
}

.form-input:focus{

    box-shadow: none;
    border:none;
}

.form-input:hover{
background: #91d3ff;
}

</style>

</head>
<body style="background: #fff">

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


</body>
</html>