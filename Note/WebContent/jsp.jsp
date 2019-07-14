<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    page指令:通常位于jsp页面的顶端,同一个页面可以有多个page指令
    include指令:将一个外部文件嵌入到当前jsp文件中,同时解析这个页面中的jsp语句
    taglib指令:使用标签库定义新的自定义标签,在jsp页面中启用定制行为
page指令语法:
<%@page 属性1="value" 属性1="value" 属性2="value1,value2"%>
属性                描述                                              默认值
language       指定jsp页面使用的脚本语言                                java
import         通过该属性来引入脚本语言中使用到的类文件 jar包   
contenttype    文件类型用来指定jsp页面所采用的编码方式       
    -->
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
<!--     JSP注释 就是说f12查看源码能不能见
    HTML注释:<!-- -- >客户端可见
    JSP注释:<%-- --%>客户端不可见
    JSP脚本注释://单行注释 /**/多行注释 客户端不可见
    

在jsp中的java代码又叫jsp脚本<%  java代码 %>

Jsp声明：在jsp页面中定义变量或者方法<%!  java代码 %>

jsp表达式:在jsp页面中执行的表达式<%=表达式%> 

 -->
 <%!String s="coder"; %>
 <%="hey "+s%>
</body>
</html>