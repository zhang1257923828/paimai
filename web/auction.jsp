<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>竞拍</title>
<link href="/paimaimvc/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaimvc/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		function cclick(price,id) {
			var pic = parseInt($("#sale").val());
			if(pic<=price){
				$("#p").html("不能低于最高竞拍价");
			}else{
				location = "/paimaimvc/updatepic.do?auction_id="+id+"&auction_upset="+pic;
				$("#p").html("");
			}
		}
		function checkRefresh(id) {
			location = "/paimaimvc/selectOnee.do?auction_id="+id;
		}
		function checkMain() {
			location = "/paimaimvc/selectAll.do";
		}
	</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="/paimaimvc/remove.do" title="注销">注销</a></div>
  </div>
	  <div class="items sg-font lf">
		      <ul class="rows">
		        <li>名称：</li>
		        <li class="borderno">${auction.auction_name }</li>
		      </ul>
		      <ul class="rows">
		        <li>描述：</li>
		        <li class="borderno">${auction.auction_desc }</li>
		      </ul>
		      <ul class="rows">
		        <li>开始时间：</li>
		        <li class="borderno">${auction.auction_start_time }</li>
		      </ul>
		      <ul class="rows">
		        <li>结束时间：</li>
		        <li class="borderno">${auction.auction_end_time }</li>
		      </ul>
		      <ul class="rows border-no">
		        <li>起拍价：</li>
		        <li class="borderno">${auction.auction_start_price }</li>
		      </ul>
	  </div>
	  	<div class="rg borders">
	  		<img src="/paimaimvc/images/${auction.auction_pic }" width="270" height="185" alt="" />
	  	</div>
		<div class="cl"></div>
		<div class="top10 salebd">
		     <p>
			     <label for="sale">出价：</label>
			     <input type="text" name='auction_upset' class="inputwd" id="sale" value="${auction.auction_upset }"/>
			     <input type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" 
			     onclick="cclick(${auction.auction_upset },${auction.auction_id })"/>
		     </p>
		     <p class="f14 red" id="p"></p>
		  </div>
  <div class="top10">
    <input type="button" value="刷 新" class="spbg buttombg f14" onclick="checkRefresh(${auction.auction_id})"/>
    <input type="button" value="返回列表" class="spbg buttombg f14" onclick="checkMain()"/>
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
	    <c:forEach items="${recordlist }" var="r">
    		<ul class="rows even strong">
		        <li>${r.auction_time }</li>
		        <li>${r.auction_price }</li>
		        <c:forEach items="${r.userList }" var="u">
		        	<li class="borderno">${u.user_name }</li>
		        </c:forEach>
	      	</ul>
      	</c:forEach>
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
