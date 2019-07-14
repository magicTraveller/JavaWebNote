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
Java beans就是符合某种特定规范Java类。
使用Java beans的好处是【解决代码的重复编写】，减少代码冗余，功能区分明确，提高代码的维护性。 
规范：设计原则四点：公有类，属性私有，包含无参的共有构造方法，getter和setter方法封装属性


action elements
JSP动作元素为请求处理阶段提供信息。动作元素遵循XML语法，有一个包含元素名的开始标签，可以有属性，可选的内容、与开始标签匹配的结束标签。 

（2）JSP动作元素种类 第一类是与存取JavaBean有关，包括： <jsp:useBean> <jsp:setProperty> <jsp:getProperty> 第二类是JSP1.2开始有的基本元素，包括： <jsp:include> <jsp:forward> <jsp:param> <jsp:plugin> <jsp:params> <jsp:fallback> 第三类是JSP2.0新增的动作元素，主要与JSP Document有关，包括： <jsp:root> <jsp:declaration> <jsp:scriptlet> <jsp:expression> <jsp:text> <jsp:output> 第四类是JSP2.0新增的动作元素，主要是用来动态生成XML元素标签的值，包括： <jsp:attribute> <jsp:body> <jsp:element> 第五类是JSP2.0新增的动作元素，主要是用在Tag File中，包括： <jsp:invoke> <jsp:dobody>

在java Resources/src	下建立Ｊａｖａ类
 1。在src下按照规则新建一个JavaBean类，然后再WebRoot下对应的jsp文件中，在声明里新建一个JavaBean类，然后赋值、使用。
 2.或是使用JSp的动作标签，如<jsp:useBean id="标识符(类似于Java中的变量名　对象)" class="java类名(需要将包名一同写入)" scope="作用范围(默认是page)">
 调用的是用id为对象引用 可以说useBean就是个实例化
 
 
 <jsp:setProperty>动作：给【已经实例化的Javabean对象的属性赋值】　或者说设置怎么调用set方法 调用哪个set方法
 	需要表单提交属性：<jsp:setProperty name="Javabean实例名" property="属性名"/>： 与之前页面提交的表单的【中的属性进行匹配】，＊代表所有　若有与javabean类属性名相同的，就进行赋值匹配。
 		比如表单提交了username="xxx"，property="*"javabean里有username属性，则对其进行匹配　自动调用set方法 
 	跟表单无关手动设置属性：<jsp:setProperty name = "Javabean实例名" property="Javabean属性名" value="BeanValue" /> 
 	与request参数有关 ：<jsp:setProperty name="Javabean实例名" property="propertyName" param="request对象中的参数名" /> 
 	例 
	 	1.根据表单自动匹配所有的属性 <jsp:setProperty name="myUsers" property="*"/> 
	 	2.根据表单自动匹配相应的属性（部分匹配） <jsp:setProperty name="myUsers" property="username"/> 
	 	3.与表单无关，通过手工赋值给属性 <jsp:setProperty name="myUsers" property="username" value=“Lisa”/>
	 	4.通过url传参数给属性赋值 <jsp:setProperty name="myUsers" property="password" param=“mypass”/>
	 	　url传值:“action=demo.jsp?mypass=admin”
	 	
同上，就是调用get方法	
<jsp:getProperty name="javabean实例名" property="属性名"/>获取指定javabean对象的属性值


JavaBean的生命周期存在于page、request、session、application4个范围，它们通过<jsp:useBean>标签的scope属性进行设置。
这4种范围与JSP页面中的page、request、session、application范围相对应。对象在则javaBeans在
这4种作用范围与JavaBean的生命周期是息息相关的，当JavaBean被创建后，通过<jsp:setProperty>标签与<jsp:getProperty>标签调用时，
将会按照page、request、session和application的顺序来查找这个JavaBean实例，直至找到一个实例对象为止，找不到，则抛出异常	 	

 -->
</body>
</html>