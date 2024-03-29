﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>登陆界面</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--图标样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<!--布局框架-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/util.css">

<!--主要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">

</head>

<body>

    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/img-01.jpg');">
            <div class="wrap-login100 p-t-190 p-b-30">
                <form class="login100-form validate-form" 
                action="${pageContext.request.contextPath }/login.action"
                method="post"
                >
                    <div class="login100-form-avatar">
                        <img src="${pageContext.request.contextPath }/images/123.png" alt="AVATAR">
                    </div>
						<span class="login100-form-title p-t-20 p-b-45">${msg}</span>

                    <div class="wrap-input100 validate-input m-b-10" data-validate="请输入用户名">
                        <input class="input100" type="text" name="usercode" id="usercode" placeholder="用户名" autocomplete="off">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate="请输入密码">
                        <input class="input100" type="password" name="password" id="password" placeholder="密码">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn p-t-10" onclick="login()">
                        <button class="login100-form-btn" id="login_btns">登 录</button>
                    </div>

                    <div class="text-center w-full p-t-25 p-b-230">
                        <a href="#" class="txt1">忘记密码？</a>
                    </div>

                    <div class="text-center w-full">
                        <a class="txt1" href="#">
                            立即注册
                            <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
   	    <script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>
</html>
