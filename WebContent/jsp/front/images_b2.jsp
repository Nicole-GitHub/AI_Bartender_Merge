<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
	
<jsp:include page="header.jsp">
	<jsp:param value="false" name="isServlet" />
</jsp:include>
<link rel="stylesheet" href="../../css/front/wine_b2.css" />
<style>
body {
	background-image: url(../../imgs/common/WebPhoto/index.jpg);
	background-size: cover;
    background-attachment: fixed;
}

table {
	font-family: Arial, Microsoft JhengHei;
	color: #F9E7AA;
	margin: auto;
	margin-top: 13vw;
}

#ai {
	font-family: Arial, Microsoft JhengHei;
	color: white;
}

#shop {
	font-family: Arial, Microsoft JhengHei;
	color: white;
}
a{
	text-decoration: none;
    color: #fff;
}
</style>
<script>

$(function(){
	$(".button").hover(function(){
		$(this).css({"color":"#E79550"});
	},function(){ 
		$(this).css({"color":"#FFF"});
	});
})
</script>
<div class="body content">
	<table width="700" height="100" border=0 align="center" valign="center">
		<tr>
			<td colspan="6" align="center">"���̫�����s���Ѿl�}���X�G���s�A�W�߷P���C������s���ѳ��ΫC����Ө�<br>&ensp;�Ӧb�ո���s�Ө����o��������c��(Grapefruit)�ΪG���(Stemmy)"
			</td>
		</tr>
		<tr>
			<td width="70">
			<td id=ai colspan="2" align="center"><a class="button" href="AiSommelier_c3.jsp">�i�JAI�Ͱs�v</a></td>
			<td id=shop colspan="2" align="center"><a class="button" href="../../wineshop_b2">�����}�s��</a></td>
			<td width="70">
		</tr>
	</table>

</div>
<jsp:include page="footer.jsp" />