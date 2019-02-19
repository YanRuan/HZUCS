<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%	request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
	
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Language" content="en" />
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="theme-color" content="#4188c9">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <link rel="icon" href="./favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
    <!-- Generated: 2018-04-06 16:27:42 +0200 -->
    <title>基于GitHub的教学管理系统——实验任务</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext"> --> 
    <script src="<%=basePath%>assets/js/require.min.js"></script>
   
    <!-- Dashboard Core -->
    <link href="<%=basePath%>assets/css/dashboard.css" rel="stylesheet" />
    <script src="<%=basePath%>assets/js/dashboard.js"></script>
    <!-- c3.js Charts Plugin -->
    <link href="<%=basePath%>assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
    <script src="<%=basePath%>assets/plugins/charts-c3/plugin.js"></script>
    <!-- Google Maps Plugin -->
    <link href="<%=basePath%>assets/plugins/maps-google/plugin.css" rel="stylesheet" />
    <script src="<%=basePath%>assets/plugins/maps-google/plugin.js"></script>
    <!-- Input Mask Plugin -->
    <script src="<%=basePath%>assets/plugins/input-mask/plugin.js"></script>
   
	<!-- jquery -->
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	 <!-- 翻页-->
	<script type="text/javascript" src="<%=basePath %>js/syssmp.js"></script>
	<style type="text/css">
	/*实验任务进度对话框*/
	.dialog{
		display:;
	}
	.dialog p{
		text-align:center;
	}
	.dialog p span{
		color:darkred;
	}
	.dialog p a{
		 background-color: #6274f8;
	    border: none;
	    color: white;
	    padding: 5px 15px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    margin: 4px 2px;
	    cursor: pointer;
	    border-radius: 8px;
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 3px 6px 0 rgba(0,0,0,0.19)
	}
	</style>
</head>
<body class="" >
<div class="page">
      <div class="page-main">
        <div class="header py-4">
          <div class="container">
            <div class="d-flex">
              <a class="header-brand" href="<%=basePath %>InitSvlt?flgs=1&tbname=stucourse">
                <img src="${other.logoPath }" class="header-brand-img" alt="tabler logo">
                <!-- 惠州学院logo -->
                <span class="other_title">${other.title }</span>
              </a>
              <div class="d-flex order-lg-2 ml-auto">
                <div class="nav-item d-none d-md-flex">
                  <a href="" class="btn btn-sm btn-outline-primary" target="_blank">前端主页</a>
                  <!-- 点击前往前端主页面 -->
                </div>
               
                <div class="dropdown">
                  <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                    <span class="avatar" style="background-image: url(./images/avatar-6.jpg)"></span>
                    <span class="ml-2 d-none d-lg-block">
                      <span class="text-default">${userinfo.sname } </span><!-- 用户名 -->
                      <small class="text-muted d-block mt-1">学生</small><!-- 用户身份 -->
                    </span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                    
                    <a class="dropdown-item" href="<%=basePath %>InitSvlt?flgs=1&tbname=studentInfo">
                      <i class="dropdown-icon fe fe-settings"></i> 设 置
                    </a>
                    
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<%=basePath %>teacher/help.html" target="_blank">
                      <i class="dropdown-icon fe fe-help-circle"></i> 帮 助
                    </a>
                    <a class="dropdown-item" href="<%=basePath %>loginOut.jsp">
                      <i class="dropdown-icon fe fe-log-out"></i> 退 出
                    </a>
                  </div>
                </div>
              </div>
              <a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
                <span class="header-toggler-icon"></span>
              </a>
            </div>
          </div>
        </div>
        <div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
          <div class="container">
            <div class="row align-items-center">
             
              <!-- 导航栏 start -->
              <div class="col-lg order-lg-first">
                <ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                  <li class="nav-item">
                    <a href="<%=basePath %>InitSvlt?flgs=1&tbname=stucourse" class="nav-link active"><i class="fe fe-home"></i> 我的课程</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a href="<%=basePath %>InitSvlt?flgs=1&tbname=stutaskinfo" class="nav-link"><i class="fe fe-file"></i> 实验任务</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a href="<%=basePath %>InitSvlt?flgs=1&tbname=mstutask" class="nav-link"><i class="fe fe-file"></i> 实验记录</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a href="<%=basePath %>InitSvlt?flgs=1&tbname=Sscore" class="nav-link"><i class="fe fe-file"></i> 查看成绩</a>
                  </li>
                                   
                </ul>
              </div>
              <!-- 导航栏 end -->
            </div>
          </div>
        </div>
       <div class="my-3 my-md-5">
          <div class="container">
            <div class="row row-cards">
              <div class="col-12 card">              
                  <div class="page-header">
		              <h1 class="page-title">
		                	实验任务
		              </h1>
		          </div>                
                   <div class="row ">
                     <div class="col-md-12 col-lg-12 ">                      	
                       <div class="card-body">	                    
                        <div class="row gutters-xs">
                          <div class="col-4 col-lg-2 col-md-6">
                            <select id="ckterm" class="form-control custom-select">
                            <option value="0">选择学期</option>
                            <c:forEach var="a" items="${termslist }">
                              <option value="${a.id }">${a.termname }</option>	               
                            </c:forEach>
                            </select>
                          </div>
                          <div class="col-4 col-lg-2 col-md-6">
                            <select id="ckcourse" class="form-control custom-select">
                            <option value="0">选择课程</option>
							<c:forEach var="s" items="${courselist }">
								<option value="${s.id }">${s.cname }</option>
							</c:forEach>
                            </select>
                          </div>
                          <div class="col-4 col-lg-1 col-md-6">	
                          	<button class="btn btn-block" onclick="cktj();return false;" >查询</button>	                           		                                                                                      	                             
                          </div>                                                                            	                           
                      	 </div>                     	    
       			   </div>        			  
       			 </div>
       			<div class="col-12">
                <div class="card">                 
                  <div class="table-responsive">
                    <table class="table card-table table-vcenter text-nowrap">
                      <thead>
                        <tr>
                          <th >学期</th>
                          <th >课程</th>
                          <th >实验标题</th>
                          <th>发布日期</th>
                          <th>截止日期</th>
                          <th ></th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="a" items="${alist }">
                        <tr>                                        
		                            
	                	  <td >${a.termname }</td>
						  <td >${a.cname }</td>
						  <td >${a.title }</td>
						  <td >${a.time }</td>										
						  <td class="deadline">${a.deadline }</td> 
						  <td class="text-right">
                            <a href="<%=basePath %>GetDataSvlt?id=${a.id }&tbname=teaTask"   class="btn btn-secondary btn-sm">详情</a>                            
                          </td>                                                                   
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>                   
                   </div>
                  </div>
                  <div class="row align-items-center flex-row-reverse">
            		<div class="col-auto ml-lg-auto">
		              <div class="row align-items-center">		                
		                <div class="col-auto">
					                   共有 ${allnums } 条记录，当前第 ${pagenum }/${pagenums } 页	
					      <div>
					      <a class=" btn btn-sm btn-outline-primary" href="javascript:void(0);" onclick="sybtdown('PagingSvlt?flag=1','stutaskinfo');return false;"><i class="fe fe-chevrons-left"></i></a>
		                  <a class=" btn btn-sm btn-outline-primary" href="javascript:void(0);" onclick="syybtdown('PagingSvlt?flag=2','stutaskinfo');return false;"><i class="fe fe-chevron-left"></i></a>
		                  <a class=" btn btn-sm btn-outline-primary" href="javascript:void(0);" onclick="xyybtdown('PagingSvlt?flag=3','stutaskinfo');return false;"><i class="fe fe-chevron-right"></i></a>                
		                  <a class=" btn btn-sm btn-outline-primary" href="javascript:void(0);" onclick="wybtdown('PagingSvlt?flag=4','stutaskinfo');return false;"><i class="fe fe-chevrons-right"></i></a>		              			               		             
		                 </div>
		                 <input type="hidden" id="hrownums" value="${rownums }" />
						 <input type="hidden" id="hpagenum" value="${pagenum }" />
						 <input type="hidden" id="hpagenums" value="${pagenums }" />
						 <input type="hidden" id="idi" value="" />
						 <input type="hidden" id="flagi" value="" />
						 <div style="display: none;">
							<form id="fm" action="" method="post">
								<input id="pt" name="tbname"/>
							</form>
						 </div>
		                </div>
		              </div>
		            </div>  		               
		          </div> 
                 </div>                            	 		                            
       		    </div>       		         		 
        	   </div>
              </div>
        	 </div>
        	</div>
         </div> 
        
  		
      <footer class="footer">
        <div class="container">
          <div class="row align-items-center flex-row-reverse">
            <div class="col-auto ml-lg-auto">
              <div class="row align-items-center">
                
                <div class="col-auto">
                   <a href="." target="_blank">基于GitHub的实验教学系统</a>
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
               建设单位：<a href="" target="_blank" title="建设单位">${other.footer_name}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地址： <a href="" title="addr" target="_blank"> ${other.footer_Addr }</a> 
            </div>
          </div>
        </div>
      </footer>
      
      
    </div>
    <script type="text/javascript">
    
    window.onload=function(){	
		var TaskTipSize=${TaskTipSize};
		var flag=1;
		var getflag=${TaskTipFlag};
		if(TaskTipSize > 0 && flag==getflag){
				var msg = "您共有"+ ${TaskTipSize } +"个实验任务可完成";
				if (confirm(msg)==true){ 										
					window.location.href="<%=basePath%>InitSvlt?tbname=TaskTip";
				 }else{ 
				  return false; 
				 } 						
		}				
	 };
	 
	$(document).ready(function(){
		
		var date=new Date();	//现在的日期
		var time=date.toLocaleDateString();
		var deadlines = new Array(); //或者写成：var btns= [];
	
		$('.deadline').each(function(key,value){
			deadlines[key] = $(this).text();			    
		});  		  		  
		  for(var i=0;i<deadlines.length;i++){
			 
			  var deadline=deadlines[i];
			  deadline=deadline.replace("-","/");
			  deadline=deadline.replace("-","/");
			 var date2=new Date(deadline);
			  if(date2>date){	
				  $("body").find(".deadline").eq(i).css("color","#FF0000");
			  };
		  }
		  
	});
	
	//查询
	function cktj(){
		var sqls="select teatask.*,termname,classname,cname,tName from courseplan,teatask,classinfo,course,teacher,terms where classinfo.id=teatask.classinfo_id and teatask.terms_id=terms.id and teatask.teacher_id=teacher.id and  course.id=teatask.course_id ";
		var termsid=$("#ckterm").val();
		var courseid=$("#ckcourse").val();
		if(termsid!="0"){
			sqls+=" and terms.id="+termsid;
		}
		if(courseid!="0"){
			sqls+=" and course.id="+courseid;
		}
		sqls+=" and classinfo.id in (select classinfo_id from students where id="+${userid}+") group by id";
		$.ajax({
			url:'<%=basePath%>CkSvlt',
			type:'post',
			data:{"sql":sqls},
			dataType:'json',
			success:function(data){
				if(data.msg==1){
					window.location.href="<%=basePath%>InitSvlt?tbname=stutaskinfo";
				}else{
					alert(data.msg);
				}
			}
		});
	}
	</script>
  </body>
</html>