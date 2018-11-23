<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="/paimaimvc/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaimvc/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function checkForm() {
		var a = checkN();
		var b = checkPass();
		var c = checkCard();
		var d = checkTel();
		var e = checkBok();
		var f = checkAddress();
		var g = checkCode();
		if(a&&b&&c&&d&&e&&f&&g){
			return true;
		}else{
			return false;
		}
	}
	function checkN() {
		var na = $("#Na").val();
		if(na.trim().length<6){
			$("#Na").next().html("用户名长度不能小于6");
			return false;
		}else{
			$("#Na").next().html("");
			return true;
		}
	}
	function checkPass() {
		var pa = $("#Pa").val();
		if(pa.trim().length<6){
			$("#Pa").next().html("密码长度不能小于6");
			return false;
		}else{
			$("#Pa").next().html("");
			return true;
		}
	}
	function checkCard() {
		var id = $("#card").val();
		if(id.trim().length<1){
			$("#card").next().html("身份证号必填");
			return false;
		}else{
			$("#card").next().html("");
			return true;
		}
	}
	function checkTel() {
		var tel = $("#Tel").val();
		if(tel.trim().length<1){
			$("#Tel").next().html("电话号码必填");
			return false;
		}else{
			$("#Tel").next().html("");
			return true;
		}
	}
	function checkAddress() {
		var address = $("#ad").val();
		if(address.trim().length<1){
			$("#ad").next().html("请填写您的收货地址");
			return false;
		}else{
			$("#ad").next().html("");
			return true;
		}
	}
	function checkCode() {
		var code = $("#cod").val();
		if(code.trim().length<1){
			$("#cod").next().html("请填写您的邮政编码");
			return false;
		}else{
			$("#cod").next().html("");
			return true;
		}
	}
	function checkBox() {
		var tf = $("#rem_u").val();
		if(tf){
			return true;
		}else{
			return false;
		}
	}
	function changeImage() {
		$("#kaptchaImage").prop("src","getKaptcha.do?t="+new Date().getTime());
	}
</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
  	<form action="/paimaimvc/reg.do" method="post">
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input type="text" class="inputh lf" name="user_name" onblur="checkN()" id='Na'/>
             <div class="lf red laba"></div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input type="text" class="inputh lf" name="user_password"  onblur="checkPass()" id='Pa'/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input type="text" class="inputh lf" name="user_card_no"  onblur="checkCard()" id='card'/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input type="text" class="inputh lf" name="user_tel"  onblur="checkTel()" id='Tel'/>
              <div class="lf red laba"></div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input type="text" class="inputh lf" name="user_address" onblur="checkAddress()" id='ad'/>
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input type="text" class="inputh lf" name="user_post_number" onblur="checkCode()" id='cod'/>
            </dd>
            <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf" name="kaptcha"/><span>${errorMessage }</span>
           <span class="wordp lf"><img src="/paimaimvc/getKaptcha.do" width="96" height="27" id="kaptchaImage"/></span>
           <span class="blues lf"><a href="javascript:void(0)" onclick="changeImage()">看不清?换一张</a></span>
        </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name="rem"  type="checkbox" id="rem_u" onclick="checkBox()"/>
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" onclick="return clickForm()"/>
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
