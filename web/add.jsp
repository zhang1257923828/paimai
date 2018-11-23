<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/paimaimvc/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaimvc/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function checkForm() {
		var a = ckeckN();
		var b = ckeckSet();
		var c = checkStart();
		var d = checkStartTime();
		var e = checkEnd();
		var f = checkText();
		if(a&&b&&c&&d&&e&&f){
			return true;
		}else{
			return false;
		}
	}
	function ckeckN() {
		var n = $("#na").val();
		if(n.trim().length<1){
			$("#na").next().html("请输入拍品名称");
			return false;
		}else{
			$("#na").next().html("");
			return true;
		}
	}
	function checkStart() {
		var st = parseInt($("#start").val());
		var d = /^\d{1,}$/;
		if(d.test(st)){
			$("#start").next().html("");
			return true;
		}else{
			$("#start").next().html("必须为数字");
			return false;
		}
	}
	function ckeckSet() {
		var u = parseInt($("#up").val());
		var d = /^\d{1,}$/;
		if(d.test(u)){
			$("#up").next().html("");
			return true;
		}else{
			$("#up").next().html("必须为数字");
			return false;
		}
	}
	function checkStartTime() {
		var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
		var st = $("#startTime").val();
		if(reg.test(st)){
			$("#startTime").next().html("");
			return true;
		}else{
			$("#startTime").next().html("请按照正确时间格式输入，例2010-05-06 16:30:00");
			return false;
		}
	}
	function checkEnd() {
		var r = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
		var s = $("#end").val();
		if(r.test(s)){
			$("#end").next().html("");
			return true;
		}else{
			$("#end").next().html("请按照正确时间格式输入，例2010-05-06 16:30:00");
			return false;
		}
	}
	function checkText() {
		var t = $("#tt").val();
		if(t.trim().length<1){
			return false;
		}else{
			return true;
		}
	}
	function checkCancel() {
		location = "/selectAll.do";
	}
</script>
</head>

<body>
<div class="wrap">
  <!-- main begin--><!-- enctype="multipart/form-data" -->
  <form action="/paimaimvc/add.do" method="post" onsubmit="return checkForm()" enctype="multipart/form-data" >
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
          <dl>
            <dd >
              <label>名称：</label>
              <input type="text" class="inputh lf" name='auction_name' onblur="ckeckN()" id='na'/>
              <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input type="text" class="inputh lf" name='auction_start_price' onblur="checkStart()" id="start"/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label>底价：</label>
              <input type="text" class="inputh lf" name='auction_upset' onblur="ckeckSet()" id="up"/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label>开始时间：</label>
              <input type="text" class="inputh lf" name="auction_start_time" onblur="checkStartTime()" id="startTime"/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label>结束时间：</label>
              <input type="text" class="inputh lf" name="auction_end_time" onblur="checkEnd()" id="end"/>
              <div class="lf red laba"></div>
            </dd>
            <dd class="dds">
              <label>拍卖品图片：</label>
               <div class="lf salebd">
               	<a href="#"><img src="images/ad20.jpg" width="100" height="100" /></a>
               </div>
              <input name="pic" type="file" class="offset10 lf" />
            </dd>
             <dd class="dds">
              <label>描述：</label>
              <textarea name="auction_desc" cols="" rows="" class="textarea" onblur="checkText()" id="tt"></textarea>
            </dd>
            <dd class="hegas">
                <input type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input type="button" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" onclick="checkCancel()"/>
            </dd>
          </dl>
    </div>
    </form>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</body>
</html>
