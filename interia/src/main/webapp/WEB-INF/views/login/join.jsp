<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
  -webkit-box-sizing:border-box;
  font-family:arial;
} 
body{background:#fff;}
  
h1{
  color:#ccc;
  text-align:center;
  font-family: 'Vibur', cursive;
  font-size: 50px;
}

.login-form{
  width:350px;
  padding:40px 30px;
  background:#eee;
  margin:auto;
  border:1px solid #fff;
  position: absolute;
  left: 0;
  right: 0;
  top:10%;
}
.form-group{
  position: relative;
  margin-bottom:15px;
}
.form-control{
  width:100%;
  height:50px;
  border:none;
  padding:5px 7px 5px 15px;
  background:#fff;
  color:#666;
  border:2px solid #ddd;

}
.form-group .mdi{
  position: absolute;
  right:15px;
  top:17px;
  color:#999;
}

.mdi{
    top:13px !important;
    color:#0AC986 !important;
}

.form-control:focus {
    color: #fff !important;
    background-color: #fff;
    border-color: #fff !important;
    outline: none;
    box-shadow: none;
}


.log-status.wrong-entry .form-control, .wrong-entry .form-control + .mdi {
  border-color: #ed1c24;
  color: #ed1c24;
}
.log-btn{
  background:#35c5f0;
  dispaly:inline-block;
  width:100%;
  font-size:16px;
  height:50px;
  color:#fff;
  text-decoration:none;
  border:none;
}

.link{
  text-decoration:none; 
  color:#C6C6C6;
  float:right;
  font-size:12px;
  margin-bottom:15px;
  
}



.alert{
  display:none;
  font-size:12px;
  color:#f00;
  float:left;
}

a{
    text-decoration:none !important;
}





</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="login-form" style="margin-top: 150px;">
     <h2 style="color: #35c5f0;text-align: center;">회원가입</h2>
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="아이디 " id="UserName">
       <i class="mdi mdi-account"></i>
     </div>
     <div class="form-group log-status">
       <input type="password" class="form-control" placeholder="비밀번호" id="Passwod">
       <i class="mdi mdi-lock"></i>
     </div>
      <span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
     <button type="button" class="log-btn" ><i class="mdi mdi-account"></i> Log in</button>
     
    
   </div>
</body>
</html>