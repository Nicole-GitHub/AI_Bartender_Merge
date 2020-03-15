<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AI_Bartender</title>
		<link rel="stylesheet" href="${param.isServlet ? '.' : '../..'}/css/front/common.css"/>
		<script src="${param.isServlet ? '.' : '../..'}/js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
    	<script src="${param.isServlet ? '.' : '../..'}/js/front/common_b3.js"></script>
    </head>
    <body>
    	<!-- header -->
       <div class="header">
           <div class="logo" >
				<a href="${param.isServlet ? '.' : '../..'}/jsp/front/agegate_b2.jsp">
					<img src="${param.isServlet ? '.' : '../..'}/imgs/common/webImg-02.png" />
				</a>
           </div>
           
           <div class="ALloginInfo">
               <div class="welcome">${empty Users.name ? '' : '歡迎回來 , '}${Users.name}</div>
               <div class="functionLink"> 
                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/AiSommelier_c3.jsp"><span>AI侍酒師</span></a>&emsp;
                   <a href="${param.isServlet ? '.' : '../..'}/wineshop_b2"><span>酒窖</span></a>&emsp;
                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/about_c2.jsp"><span>關於</span></a>&emsp;
                   <c:if test="${empty Users.name }">
	                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/add_b1.jsp"><span>註冊</span></a>&emsp;
	                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/login_b1.jsp"><span>登入</span></a>&emsp;
                   </c:if>
                   <c:if test="${not empty Users.name }">
	                   <a href="${param.isServlet ? '.' : '../..'}/updateCustomer_b1"><span>會員管理</span></a>&emsp;
	                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/PO.jsp"><span>查詢問單</span></a>&emsp;
	                   <a href="${param.isServlet ? '.' : '../..'}/LogoutServlet_b1"><span>登出</span></a>&emsp;
                   </c:if>
                   <a href="${param.isServlet ? '.' : '../..'}/jsp/front/cart.jsp">
                   		<img src="${param.isServlet ? '.' : '../..'}/imgs/common/webImg-03.png" class="cart" />
                   		<c:if test="${not empty BuyCount}">
                   			<span>(${sessionScope.BuyCount})</span>
                   		</c:if>
                   </a>
               </div>
           </div>
       </div>
       <!-- /header -->
       <!-- banner -->
       <div class="banner" >
       		<img src="${param.isServlet ? '.' : '../..'}/imgs/common/webImg-13.png"/>
       </div>
       <!-- /banner -->