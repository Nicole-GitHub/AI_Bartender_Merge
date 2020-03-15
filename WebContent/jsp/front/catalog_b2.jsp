<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<jsp:include page="header.jsp">
	<jsp:param value="true" name="isServlet" />
</jsp:include>
<link rel="stylesheet" href="./css/front/wine_b2.css"/>
<script src="./js/front/wine_b2.js"></script>
<div class="content">
<!--	<div id="div3">show</div> -->
<div class="showCheckBoxRS"></div>
	<div class="filter">
		<div class="select" id="selType">
			<p>酒種</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" class="check" name="wine[]" value="紅酒" />紅酒</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="白酒" />白酒</li></label>
				</ul>
			</div>
		</div>
		<p style="width: 10%; float: left"></p>
		<div class="select" id="selPlace">
			<p>產地</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" class="check" name="wine[]" value="France" />法國</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="USA" />美國</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="Chlie" />智利</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="Australia" />澳洲</li></label>
				</ul>
			</div>
		</div>
		<p style="width: 10%; float: left"></p>
		<div class="select" id="seltPrice">
			<p>價格</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" class="check" name="wine[]" value="1000down" />1000以下</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="between1000and2000" />1000 ~ 2000</li></label>
					<label><li><input type="checkbox" class="check" name="wine[]" value="2000up" />2000以上</li></label>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="winelist" class="showWine">
		<table border="0">
			<tr>
				<c:forEach var="li" items="${list}" varStatus="vs">
					<td width="25%">
						<a href="wineshop_b2?id=${li.id}" style="text-decoration: none;">
							<img src="${li.imgPath }" width=150px><br>
							<p>${li.enName}</p>
							<p>${li.chName}</p> 
						</a>
						<hr>
						<!--EL語法,市價取整數-->
						<fmt:formatNumber var="na" type="number" value="${li.price/0.8}" maxFractionDigits="0"/>						
						市價:<p1>${na}</p1>
						<p>會員價:<p2>${li.price }</p2></p>
						
						<input type="hidden" id="id" value="${li.id}">
						數量: <input type="number" name="quantity" min="1" max="999" value="1">
						<input type="button" id="addcart" style="background-color:#A11E4A;color:white;" value="加入詢問單">
					</td>
					${vs.count%4==0 ? '</tr><tr>' : ''}
				</c:forEach>
			</tr>
		</table>
	</div>
</div>
<script>
	$(document).on("click", "#addcart", function() {
		var pid = $(this).parents("td").find("input").val();
		var q = $(this).parents("td").find("input").next().val();
		//alert(pid);
		//alert(q);	
		$.post("jsp/front/TranSession_b2.jsp", {
			"id" : pid,
			"quantity" : q
		}, function(data) {
			window.location.reload();
			alert("成功加入購物車");
		});
	});
	$(document).on("click", ".delCheckBoxRS", function() {
		var thisVal = $(this).attr("val");
		$(this).parent().remove();
		$("[name='wine[]']:checkbox:checked").each(function(){
			if(thisVal == $(this).val()){
			    $(this).prop('checked',false);
			}
   		});
		checkboxQuery();
	});
	$(".check").change(function() {
		checkboxQuery();
	});

	function checkboxQuery(){
		var selected=[];
		var t="Hello";
		var checkboxRS = '';
		$("[name='wine[]']:checkbox:checked").each(function(){
			checkboxRS += "<span>"+$(this).parent().text()+"&nbsp;<img src='./imgs/common/x.png' width='10px' val='"+$(this).val()+"' class='delCheckBoxRS'>&emsp;</span>";
			selected.push($(this).val());
   		});
 		$(".showCheckBoxRS").html(checkboxRS);
 		var str = JSON.stringify(selected);
 		//alert(str);
 		$.ajax({
				url : "checkboxQuery",
				type : "post",
				dataType : "text",
				data : {"checkboxList" : str },
				cache : false,
				async : false,
				success : function(response){
					$("#winelist").html(response);
				},
				error : function(data){
					alert("POST ERROR!");
				}
 	 		})


		var bodyh = $(".content").height();
		var vh = $(window).height();
		var headerh = $(".header").height();
		var banner = $(".banner").height();
		var banner2 = $(".banner2").height();
		var footerh = $(".footer").height();
		var otherh = vh - headerh - footerh - banner - banner2;
		if (bodyh < otherh) {
			$(".footer").addClass("positionFix");
		}else{
			$(".footer").removeClass("positionFix");
		}
 	}
</script>
<jsp:include page="footer.jsp" />