<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>AI�Ͱs�vsommelier_AGEGATE</title>
<script src="../../js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>

<style>
 body {
 background-image: url(../../imgs/common/WebPhoto/age.jpg);
 background-size:100%;
  }
 
 #age_gate{
 margin:auto;
 margin-top: 20vw;
 background-color:#E79550;
 width:400px;
 height:270px;
 text-align:center; 
 font-family:Arial, Microsoft JhengHei;
 }
 
</style>
</head>
<script>
function ageWarn()
{
    alert("�����z�A���إ���k�W�W�w�A�����Q�K���ФŶ��s�I");
}
$(function(){
	$(".button").hover(function(){
		$(this).css("cursor","pointer");
	},function(){ 
		$(this).css("cursor","default");
	});
})
</script>
<body > 
	<div id="age_gate"  >
		<img src="../../imgs/common/webImg-01.png" width="300" >
		<div class="askAge">
		<p>�z�O�_�w���Q�K���X�k���s�~�֡H</p>
		<p>ARE YOU OF LEGAL DRINLING AGE?</p>
		<div class="btns">
			<img class="button" src="../../imgs/common/webImg-06.png" width="150" onclick="location.href='images_b2.jsp'">
	        <img class="button" src="../../imgs/common/webImg-07.png" width="150" onclick="ageWarn()" >
	    </div>       
	</div> 
</body>
</html>