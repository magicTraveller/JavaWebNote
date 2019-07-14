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
out输出到服务器　其实先是在缓冲区里的 
	out.println("<h1>这是一个ｏｕｔ</h1>"); 
	out.println("<hr>");

<form name="regForm" action="动作" method="提交方式"></form>
action表提交给那个jsp啊什么的处理
表单有两种提交方式：get与post
	1、get : 数据在URL中可以看到。提交的数据最多不超过3kb。
	安全性较低但效率比post方式高。适合提交数据量不大，安全性不高的数据。比如：搜索、查询等功能。
	
	2、post：将用户提交的信息封装在HTML HEADER内，适合提交数据量大，安全性高的用户信息，比如：注册、修改、上传等功能。
	
（JSP页面通过request对象请求服务器跳转某一页面，只在该页面中有效，其他页面这个request对象无作用　即无法在其他页面间存取值）
信息被封装在request对象中，通过它才能了解到客户的需求。它是HttpServletRequest类的实例
	request.getParameter(name)可以得到 name指定的参数　如form 表单input提交过来的　name就是name
	request.getParameterValues获得的数组像check多选提交过来的
	request.setAttribute(arg0, arg1)  arg应该是键值对
	
	
response对象包含了响应客户请求的有关信息,它是HttpServletResponse类的实例,
response对象具有页面的作用域,即访问一个页面时,该页面的response对象只能对这次访问有效,其他的页面response对象对当前页面无效
	PrintWrite o=response.getWrite()返回可以向客户端输出字符的一个输出流对象　　　通过response内置对象获得的输出流对象打印总是优先于out内置对象　可以用flush使得ｏｕｔ的放前面
	sendRedirect(String location)重新定向客户端的请求
	
		请求重定向：客户端行为，response.sendRedirect(),等同于两次请求　先请求action的提交页面再是重定向过去的页面　，
		因为是两次请求两个页面所以前一次请求对象不会保存，但地址栏的URL地址会改变为重定向地址，就好像先跳到百度再到新浪一样

		请求转发：服务器行为，相当于一次请求，属于服务器内部调度，request.getRequestDispatcher(“ｕｒｌ”).forward(request,response),
		请求后请求对象会保存，URL变为action的提交地址，forward（request,response）把前一次对象传递了过去,就跟传参一样。
		

session表示客户端与服务端的一次会话，保存在服务器的内存中，每个用户一个session,HttpSession类的实例　每次请求都会把sessionid带过去 
Web中的session指的是用户在浏览某个网站的时候,从进入网站到所有有关页面关闭所经过的这段时间,也就是用户浏览这个网站这段时间
	session.setMaxInactiveInterval()//设置session的失效时间
	session.setAttribute(name, value)//以键值对的形式来保存用户状态
	
	注意原有会话还存在,只是这个旧的sessionID任然存在与服务端,只不过再也没有客户端携带它然后交与服务端校验
	
	session的销毁
        调用了session.invalidate()
        session超时(过期)
        服务器重新启动
        
        
application介绍 
	1、实现了用户间数据的共享，可存放全局变量。（类似静态对象） 
	2、开始于服务器启动，终止于服务器的关闭（生命周期） 属于整个服务器
	3、在用户的前后连接或不同用户之间的连接中，可以对application对象的同一属性进行操作
	4、在任何地方对application对象属性进行操作，都将影响到其他用户对此的访问　static吗１．３．４都可以这样来看 
	5、application对象是ServletContext类的实例
	
	
page对象：是指指向当前JSP页面本身，有点像类中的this指针，它是java.long.Object类的实例。

pageContext 
	（1）pageContext对象提供了对JSP页面中所有对象及名字空间的访问操作 
	（2）pageContext对象可以访问本页面的session，可以访问本页面的application对象的任意属性值 
	（3）pageContext对象是某个页面中所有功能的集大成者
	 例如说获取session会话
	pageContext.forward("www.baidu.com");//跳转命令　ｕｒｌ不变　是服务器转发	 
	pageContext.include(".jsp");//包含（页面）命令


config对象
	１.需要捕获异常的页面，在page指令中写属性errorpage=“出错跳转到的页面”　相当于ｔｈｒｏｗｓ 
	2.在要使用Exception对象的页面或者说错误跳转页面，page指令中输入属性isErrorPage=“true”　相当于ｔｒｙ 
Exception异常对象 
	（1）Exception是java.lang.Throwable类的实例 
	（2）当一个页面运行发生了异常，就产生了该Exception对象。 
	（3）若一个JSP页面要使用该Exception对象，需要将isErrorPage的值设为true 
	 
	 
-->
<%

%>
</body>
</html>