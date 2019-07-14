<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 一个servlet就是一个java类,并且可以通过"请求-响应",编程模型来访问这个驻留在服务器内存的servlet程序
Tomcat容器等级： Tomcat容器分为四个等级， 
1. Container 容器，集装箱 
2.Engine 引擎容器 
3.Host 主机（） 
4.Servlet容器（tomcat最低级别的容器）里面包含了一个或多个Context —— Context （上下文，背景，环境） 一个context对应一个web项目


Servlet（接口）init() service() destroy()三个方法->
GenericServlet（抽象类，与协议无关的Servlet）->
HttpServlet（抽象类，实现了Http协议的Servlet）->
Custom Servlet（自定义的Servlet）要实现doPost doGet。


1. 继承HttpServlet 
2. 重写doGet()和doPost方法 
3. 注册Servlet 
在web.xml中进行如下配置：
 <servlet> 
 	servlet的名字，类名就可以了 
 	<servlet-name>HelloServlet</servlet-name> 
 	所在的包 或者说物理地址
 	<servlet-class>servlet.HelloServlet</servlet-class>
 </servlet> 
 
 <servlet-mapping> 
 	<servlet-name>HelloServlet</servlet-name> 
 	访问的地址 表单中请求的地址 
 	<url-pattern>/servlet/HelloServlet</url-pattern> 注意地址前有斜线开头　是项目的根目录
 </servlet-mapping> 

Servlet3.0之后可以使用注解来表示所有xml中的配置： @WebServlet(name="HelloServlet",value={"/servlet/HelloServlet"})


1.在web.xml中配置Servlet时，可以配置一些初始化参数，方法如下
<servlet>
	<init-param>
		<param-name>password</param-name>
		<param-value>12345</param-vlaue>
	<init-param>
</servlet>
	
2.在sevlet中可以通过servletConfig接口提供的方法getInitparameter()来获取这些参数　在init()方法中进行设置
this.getInitparameter("password");


Servlet的装载三种情况： 
1、自动装载：某些Servlet如果需要在Servlet容器启动时就加载，需要在web.xml下它的<Servlet>标签里中，添加优先级代码： 
<Servlet>
	 <load-on-startup>1<load-on-startup> 
</Servlet> 数字越小表示该servlet的优先级越高，会先于其他自动装载的优先级较低的先装载

2、Servlet容器启动后，客户首次向某个Servlet发送请求时，Tomcat容器会加载它 
3、当Servlet类文件被更新后，也会重新自动加载 Servlet是长期驻留在内存里的。
某个Servlet一旦被加载，就会长期存在于服务器的内存里，直到服务器关闭 Servlet被装载后，Servlet容器创建一个Servlet实例并且调用Servlet的init()方法进行初始化。在Servlet的整个生命周期内，init()方法只被调用一次

servlet与jsp内置对象的对应关系
out response.getWriter()//out与getWriter()获得对象并不完全匹配，out是JspWriter类型，而getWriter() 是PrintWriter类型 request service（）方法传到doGet（）、doPost（）里的request来获取 response service（）方法传到doGet（）、doPost（）里的response来获取 session request.getSession() exception Throwable page this pageContext PageContext config getServletConfig()
  -->
</body>
</html>