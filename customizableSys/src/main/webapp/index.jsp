<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="./js/jquery-3.3.1.min.js"></script>
</head>
<body>
<script>
window.onload=function(){
	$.ajax({				
		url:'HomePage',
		type:'post',				
		success:function(data){
			window.location.href="indexShow.jsp";
		}
	}) 

 }
</script> 

</body>
</html>