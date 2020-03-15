<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AI_Bartender</title>
		<link rel="stylesheet" href="${param.isServlet ? '.' : '../..'}/css/back/common.css"/>
		<script src="${param.isServlet ? '.' : '../..'}/js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
    </head>
    <body>
    	<!-- header -->
       <div class="header">
           <div class="logo">
               <img src="${param.isServlet ? '.' : '../..'}/imgs/common/webImg-30.png" />
           </div>
           <div class="loginInfo">
               <div> 管理員 admin
               		<a href="${param.isServlet ? '.' : '../..'}/LogoutServlet_b1"><span>登出</span></a>&emsp;
               </div>
           </div>
           <div class="banner"></div>
       </div>
       <!-- /header -->
       <!-- body -->
       <div class="body">
			<div class="nav">
				<p><a href="${param.isServlet ? '.' : '../..'}/jsp/back/PO.jsp">訂單管理</a></p>
				<p><a href="${param.isServlet ? '.' : '../..'}/jsp/back/Wine.jsp">商品管理</a></p>
				<p><a href="${param.isServlet ? '.' : '../..'}/showMembers_c1">會員管理</a></p>
			</div>
			<div class="bodyRight">