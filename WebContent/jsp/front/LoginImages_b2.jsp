<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<jsp:include page="header.jsp" >
	<jsp:param value="false" name="isServlet" />
</jsp:include>
<link rel="stylesheet" href="../../css/front/wine_b2.css"/>
<style>
 body {
 background-image: url(../../imgs/common/WebPhoto/signIn.jpg);
 background-size:100%;
  }
 table{
	font-family:Arial, Microsoft JhengHei;
	color:#F9E7AA;
	margin:auto;
	margin-top: 13vw;
}

#ai{
	font-family:Arial, Microsoft JhengHei;
	color:white;
}
#shop{
	font-family:Arial, Microsoft JhengHei;
	color:white;
} 
</style>
<div class="body content">
	<table width="700" height="100" border=0 align="center" valign="center">
　<tr>
     <td colspan="6" align="center">"極甘型葡萄酒的剩餘糖分幾乎為零，苦澀感重。紅葡萄酒中由單寧或青草味而來<br>&ensp;而在白葡萄酒而言散發類似葡萄柚味(Grapefruit)或果梗味(Stemmy)"</td></tr>
     </tr>
     <tr>
     <td width="70">
     <td id=ai colspan="2" align="center" valign="center" ><a onclick="location.href='AiSommelier_c3.jsp'">進入AI侍酒師</td>
   
     <td id=shop colspan="2" align="center" valign="center"><a onclick="location.href='../../wineshop_b2'">直接逛酒窖</td>
     <td width="70">
     </tr>
</table>

</div>
<jsp:include page="footer.jsp"/>