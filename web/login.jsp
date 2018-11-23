<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link href="/paimaimvc/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaimvc/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
			function cclick() {
				location = "${pageContext.request.contextPath}/regist.jsp";
			}
			function changeImage() {
				$("#kaptchaImage").prop("src","getKaptcha.do?t="+new Date().getTime());
			}
</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="/paimaimvc/images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="/paimaimvc/log.do" method="post" target='_blank'>
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label>
        	<input type="text" class="inputh" id="username" name="user_name"/>
        </dd>
        <dd><label for="password">密 码：</label>
        	<input type="text" class="inputh" id="password" name="user_password"/>
        </dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf" name="kaptcha"/><span>${errorMessage }</span>
           <span class="wordp lf"><img src="/paimaimvc/getKaptcha.do" width="96" height="27" id="kaptchaImage"/></span>
           <span class="blues lf"><a href="javascript:void(0)" onclick="changeImage()">看不清?换一张</a></span>
        </dd>
        <dd class="buttom">
           <input type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <input type="button" value="注 册" class="spbg buttombg f14 lf" id="reg" onclick="cclick()"/>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</body>
</html>
