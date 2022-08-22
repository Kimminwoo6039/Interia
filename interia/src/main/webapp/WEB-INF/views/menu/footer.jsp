<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">


#container{
        width: 100%;
        height: 330px;
    }
    #part1{
        width: 100%;
        height: 280px;
        background-color: #F7F9FA;
    }
    #part2{
        width: 100%;
        height: 70px;
        background-color: #F7F9FA;
        position: relative;
        top: -15px;
    }
    #companyinfo{
        width: 14%;
        height: 280px;
        position: relative;
        left: 8%;
        top: 30px;
    }
    #sitelink{
        font-size: 35px;
        color: #f44336;
    }
    #sitelink:hover{
        color: #e65100;
    }
    #title{
        color: gray;
        position: relative;
        top: 0px;
        font-size: 14.1px;
    }
    #detail{
        color: #aaa7a7;
        font-size: 16px;
    }
    #explore{
        width: 14%;
        height: 280px;
        position: relative;
        top: -235px;
        left: 29%;
    }
    #txt1, #txt2, #txt3, #txt4, #txt5{
        color: white;
        font-size: 20px;
    }
    .link{
        display: flex;
        width: 90px;
        height: 40px;
        color: #aaa7a7;
        background-color: transparent;
        border-top: 2px solid white;
        position: relative;
        top: -10px;
    }
    .link:hover, .link1:hover{
        color: #e65100;
    }
    #visit{
        width: 14%;
        height: 280px;
        position: relative;
        top: -515px;
        left: 42%;
    }
    .text{
        color: #aaa7a7;
        font-size: 14px;
        margin-top: -10px;
    }
    #legal{
        width: 14%;
        height: 280px;
        position: relative;
        top: -800px;
        left: 59.5%;
    }
    .link1{
        display: flex;
        width: 150px;
        height: 40px;
        color: #aaa7a7;
        background-color: transparent;
        border-top: 2px solid white;
        position: relative;
        top: -10px;
        margin-top: 7px;
    }
    #subscribe{
        position: relative;
        top: -1080px;
        left: 78%;
        width: 14%;
        height: 280px;
    }
    #email{
        color: white;
        position: relative;
        top: -20px;
    }
    .btn{
        position: relative;
        top: -10px;
    }
    #txt5{
        position: relative;
        top: 0px;
    }
    .social{
        position: relative;
        top: -5px;
        margin-right: 10px;
        color: white;
        cursor: pointer;
    }
    .fa-facebook-square:hover{
        color: #3B579D;
    }
    .fa-linkedin:hover{
        color: #007BB6;
    }
    .fa-twitter-square:hover{
        color: #2CAAE1;
    }
    #txt6{
        color: white;
        position: relative;
        top: 13px;
        left: 8%;
        width: 80%;
        color: #aaa7a7;
    }
    .material-icons{
        position: relative;
        top: 3px;
    }
    @media only screen and (max-width:1000px){
        #companyinfo{
            width: 20%;
        }
        #sitelink{
            font-size: 30px;
        }
        #txt5, #txt4{
            font-size: 17px;
        }
        #txt5, .social{
            position: relative;
            top: -5px;
        }
    }
    @media only screen and (max-width:850px){
        #companyinfo{
            position: relative;
            left: 3%;
        }
        #txt6{
            position: relative;
            left: 3%;
        }
        #txt1, #txt2, #txt3, #txt4, #txt5{
            font-size: 15px;
        }
        #explore{
            position: relative;
            top: -240px;
            left: 26%;
        }
        #sitelink{
            font-size: 25px;
        }
        #detail{
            font-size: 13px;
        }
        .link{
            width: 60px;
        }
        #visit{
            position: relative;
            top: -520px;
            left: 37%;
        }
        .text{
            font-size: 13px;
        }
        #legal{
            position: relative;
            top: -800px;
            left: 54%;
        }
        #subscribe{
            position: relative;
            top: -1080px;
            left: 76%;
            width: 20%;
        }
        #txt5, .social{
            position: relative;
            left: -110%;
            top: px;
        }
        #email, .btn{
            position: relative;
            top: 0px;
        }
        #part1{
            height: 250px;
        }
    }

</style>

</head>
<body>
<div>
 <div id="container" style="align-items: center;">
        <div id="part1" style="margin-top: 120px;align-items: center;">
            <div class="container" style="margin-left: 300px;margin-top: 120px;">
                <a id="sitelink" href="#" style="font-size: 12px;color: #2f3448;font-weight: 700;margin-top: 120px;">고객센터 ></a>
                <p id="title" style="font-size: 24px;color: #2F3438;font-weight: 1000">1577-1577</p>
                <p id="detail" style="color: #2F3438">09:00~18:00 (주말, 공휴일은 오늘의인테리어 배송 문의에 한해 전화 상담 가능)</p>
               
                <p style="font-size: 11px;font-weight: 400;color: #828C94">상호명 :(주)오늘의인테리어 :(고객문의) test@test (제휴문의) test@test 대표이사 :김마누 사업자등록번호 :000-00-00000 통신판매업신고번호 :2022-08-22</p>
                <p style="font-size: 11px;font-weight: 400;color: #828C94">주소 :전주 덕진구 이젠, 27층우리은행 채무지급보증안내 :오늘의 엔티리어 고객님이 현금결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다. 서비스가입사실확인</p>
                <p style="font-size: 11px;font-weight: 400;color: #828C94">오늘의인테리어는 개별 판매자가 상품을 판매하는 오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 일체 책임을 지지 않습니다.</p>
                <p style="font-size: 11px;font-weight: 400;color: #828C94">단 테스트는 판매자로 등록 판매한 상품의 경우는 판매자로서 책임을 부담합니다.</p>
                <p style="font-size: 11px;font-weight: 400;color: #828C94">Copyright 2014. bucketplace, Co., Ltd. All rights reserved</p>
            </div>
          
        </div>
        <div id="part2" >
           <p style="font-size: 11px;font-weight: 400;color: #828C94;margin-left: 310px;margin-top: 10px;">ISMS 정보보호 관리체계 인증</p>
               <p style="font-size: 11px;font-weight: 400;color: #828C94;margin-left: 310px;">2021. 09. 08 ~ 2024. 09. 07</p>
        </div>
    </div>
</div>

</body>
</html>