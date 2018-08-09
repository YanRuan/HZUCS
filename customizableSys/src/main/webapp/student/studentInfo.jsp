<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<title>学生个人信息</title>
<style>
	p{
		text-align:center;
	}
/*表单*/
	.form{
		width:85%;
		margin-left:auto;
		margin-right:auto;
		padding:30px 50px;
		background:#f3f4fc;
		border-radius:25px;
		box-shadow: 5px 5px 2px #d9dbdc;
		
	}
</style>
</head>
<body>
	<div class="form">	
	<form >	
		  <input type='hidden' name='num' id="num" value="${userinfo.id}" >
		   <input type='hidden' name='pwd' id="pwd" value="${userinfo.spassword}" >
	  <p>  学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type='text' name='no' id="no" value="${userinfo.sno}" disabled="disabled" > </p>
	  <p>  姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type='text' name='name' id="name" value="${userinfo.sname}"  disabled="disabled"> </p>
	  <p>  班&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：<input type='text' name='classname' id="classname" value="${userinfo.classname }"  disabled="disabled"> </p>
	  <p>  性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type='text' name='sgender' id="sgender"  value="${userinfo.sgender }" disabled="disabled"> </p>
	  <p>  电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：<input type='text' name='sphone' id="sphone" value="${userinfo.sphone }" > </p>	  	 	 
	  <p style="text-align:center;"><input type='button' value='更新' onclick="Submit()">
	  <input type='button' value='修改密码' onclick="showChangePwd()">
	  </p>
	    
	</form>
	
	<form style="display:none;" class="form2">
		<p>  原始密码：<input type='password' name='oldPwd' id="oldPwd" onblur="ckOldPwd(this)"> </p>	  
	    <p>  新&nbsp;&nbsp;密&nbsp;&nbsp;码：<input type='password' name='newPwd'  id="newPwd"  >  </p>	 
	    <p>  确认密码：<input type='password' name='ckNewPwd' id="ckNewPwd"  > </p>	
	    <p style="text-align:center;"><input type='button' value='更新' onclick="SubmitPwd()"></p>
	</form>
	</div>
	
	<script type="text/javascript">
	//检查是否知道原始密码
	function ckOldPwd(e){
		var ckPwd=$("#pwd").val();
		var pwd=$("#oldPwd").val();
		if(pwd!=ckPwd){
			alert("与原密码不一致");
			return ;
		}			
	};
	
function Submit(){
	
	var num=$("#num").val();
	var sphone=$("#sphone").val();
	if( sphone==""){
		alert("请填写电话号码");
		return ;
	}		
	$.ajax({
		url:'../UpdSvlt',
		type:'post',
		dataType:'json',
		data:{"tbname":"stuInfo","id":num,"sphone":sphone,"flag":"sphone"},
		success:function(data){	
			if(data.msg=="修改成功"){
				alert("修改成功");
				$("#sphone").val(data.sphone);
				//window.location.href="./teacherInfo.jsp";					 
			}else{
				alert("请重新提交");
			}
			
		}
	});
	
};
//修改密码
function showChangePwd(){
	$(".form2").css("display","block");
}
function SubmitPwd(){
	
	var num=$("#num").val();
	var name=$("#name").val();		
	var pwd=$("#pwd").val();	//初始密码对照值
	var oldpwd=$("#oldPwd").val();
	var newpwd=$("#newPwd").val();
	var ckNewPwd=$("#ckNewPwd").val();		
	if(name=="" || oldpwd=="" || newpwd=="" || ckNewPwd=="" ){
		alert("请将信息填写完整");
		return ;
	}
	if(pwd==newpwd){
		alert("新密码不能与原密码相同");
		return ;			
	}
	if(newpwd!=ckNewPwd){
		alert("新密码与确认密码不一致");
		return;
	}
	$.ajax({
		url:'../UpdSvlt',
		type:'post',
		dataType:'json',
		data:{"tbname":"stuInfo","id":num,"name":name,"newpwd":newpwd,"flag":"pwd"},
		success:function(data){	
			if(data.msg=="修改成功"){
				alert("修改成功,请重新登录");
				//window.location.href="./login.jsp";
				window.parent.frames.location.href="../index.jsp" 
			}else{
				alert("请重新提交");
			}
			
		}
	});
	
};
	
	</script>
</body>
</html>