<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- http协议的无状态性 
当同一个浏览器再次发送请求时，服务器不会知道是刚才那个浏览器。
服务器【不会保存用户状态】，不会记得客户端是否访问过，所以这就是无状态协议，只记当前的 

这个时候就要用cookie来保存用户状态了　是web服务器保存在客户端的一系列文本信息。
	典型应用一：购物车 典型应用二：保存用户浏览记录。
 	1、对特定对象的追踪。　　　　　　　　　　像都上了什么网站
 	2、保存用户网页浏览记录与习惯。　　　　　像搜索了什么
 	3、简化登录 安全风险：容易泄露用户信息
 		1、创建Cookie对象： Cookie cookie=new Cookie(String key,Object value); //键值对
 		2、写入Cookie： response.addCookie(cookie); 
 		3、读取Cookie： Cookie[] cookies=request.getCookies();
 		
 		如：
 		Cookie user=new Cookie("admin",request.getParameter("username"));
 		user.setMaxAge(86400); //设置cookie的有效期为86400秒或者说１０天
 		response.addCookie(user);
 		 Cookie[] c=request.getCookies();
 		 if(c!=null){
 		 	for(Cookie cc:c)
 		 	if(cc.getName().equals("admin"))cc.setMaxAge(0);//找到用户名的cookie就让他失效
 		 }
 		 
 		 使用URLEncoder（在java.net包下）解决无法在Cookie当中保存中文字符串问题： 
 		 String username = URLEncoder.encode(request.getParameter("username"),"utf-8");//编码，防止中文乱码
 		 String password = URLEncoder.encode(request.getParameter("password"),"utf-8");//编码，防止中文乱码
 		 URLDecoder.decode(username,"utf-8");//解码
 	-->
</body>
</html>