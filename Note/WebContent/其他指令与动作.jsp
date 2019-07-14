<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
taglib：使用标签库，自定义新的标签，在jsp中启动定制行为
 include：将一个外部文件嵌入该jsp中 
语法 <% include file="地址"%>
<@ include file="">是静态插入，插入代码（jsp.java）到当前位置，然后一起编译成servlet，再成html。
另外再告诉你一个<jsp:include> 是动态插入　　　
<jsp:include page="URL" flush="true|false，默认为false" />
page:要包含的页面 flush:被包含的页面是否使用缓冲读取
在页面包含大量数据时，为缩短客户端延迟，可将一部分内容先行输出


include指令和include动作的比较 语法格式 <%@ include file="url" %> <jsp:include page="url"> 
发生作用期间 			页面转换期间 						请求期间
 包含内容				文件的实际内容 					页面的输出 
 转换成的servlet 		主页面和包含页面转换为一个servlet	主页面和包含页面转换为独立的servlet 
 编译时间 			较慢 资源必须被解析 				较快 
 执行时间				稍快 							较慢 每次资源必须被解析 
include指令用于不经常变化的内容，难以维护；include动作方便维护。


forward动作
    语法:<jsp:forward pAge="url"/>
    等同于:request.getRequestDispatcher("/url").forward(request,response)
    
    
    param动作
    语法:<jsp:param name="参数名" value="参数值">
    常常与<jsp:forward>一起使用,作为其的子标签
        <jsp : forward page="url.jsp">
      	  <jsp:param value="admin"    name="username"/>
   		</jsp:forward>
   		相当于表单提交
-->
</body>
</html>