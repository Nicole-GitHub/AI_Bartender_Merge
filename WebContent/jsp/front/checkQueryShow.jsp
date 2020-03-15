<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="blocks" border="0">
		<tr>
			<c:forEach var="li" items="${qlist}" varStatus="vs">
				<td class="trw"><a href="wineshop_b2?id=${li.id}"><img
						src="${li.imgPath }" width=150px><br>
						<p>${li.enName}</p> <br>
						<p>${li.chName}</p>
						<hr> <!--EL語法,市價取整數--> <fmt:formatNumber var="na"
							type="number" value="${li.price/0.8}" maxFractionDigits="0" /> <p1>市價:${na}</p1>
						<p>
							會員價:
							<p2>${li.price }</p2>
						</p></a> <input type="hidden" id="id" value="${li.id}"> 數量: <input
					type="number" name="quantity" min="1" max="10" value="1"><br>
					<input type="button" id="addcart"
					style="background-color: #A11E4A; color: white;" value="加入詢問單">
				</td>
				<c:if test="${vs.count%4==0}">
		</tr>
		<tr>
			</c:if>
			</c:forEach>
		</tr>
	</table>
</body>
</html>