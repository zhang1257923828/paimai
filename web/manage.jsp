<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<%-- <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" /> --%>
<link href="/paimaimvc/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaimvc/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="/paimaimvc/remove.do" title="注销">注销</a></div>
  </div>
  <div class="forms">
   <form action="/paimaimvc/selectSs.do" method="post">
    <label for="name">名称</label>
     <input name="auction_name" type="text" class="nwinput"/>
    <label for="names">描述</label>
    <input name="auction_desc" type="text" class="nwinput"/>
    <label for="time">开始时间</label>
    <input name="auction_start_time" type="text" id="time" class="nwinput"/>
    <label for="end-time">结束时间</label>
    <input name="auction_end_time" type="text" id="end-time" class="nwinput" />
    <label for="price">起拍价</label>
    <input name="auction_start_price" type="text" id="price" class="nwinput" />
    <input type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    <c:if test="${user.user_is_admin==1 }">
    	<input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb" onclick="add()"/>
    </c:if>
  </form>
  </div>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
       <c:forEach items="${list }" var="a">
      <ul class="rows">
       
	     
	        <li><a href="" title="">${a.auction_name }</a></li>
	        <li class="list-wd">${a.auction_desc }</li>
	        <li>${a.auction_start_time }</li>
	        <li>${a.auction_end_time }</li>
	        <li>${a.auction_start_price }</li>
	        <li class="borderno red">
	        	<c:if test="${user.user_is_admin==0 }">
	        		<a href="/paimaimvc/selectOnee.do?auction_id=${a.auction_id}">竞拍</a>
	        	</c:if>
	        	<c:if test="${user.user_is_admin==1 }">
	        		<a href="javascript:void(0)" title="修改" onclick="dele(${a.auction_id })">修改</a>|
	          		<a href="/paimaimvc/delete.do?auction_id=${a.auction_id }&auction_pic=${a.auction_pic }" title="删除">删除</a>
	        	</c:if>
	      </li>
	        
	        </ul>
	         </c:forEach>
	         
    
      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>
  <script>
  function dele(id){
	   	if(confirm("你真的确认要修改吗？请确认")){
	    	location = "/paimaimvc/selectOne.do?id="+id;
		   return true;
		}
		else{
			 return false;
		}
 	};
 	function abc(id){
	   if(confirm("你真的确认要删除吗？请确认")){
		   location = "/paimaimvc/delete.do?id="+id;
	   }
	}
	   
		function add() {
			location = "/paimaimvc/add.jsp";
		}
  </script>
<!-- main end-->
</div>
</body>
</html>
