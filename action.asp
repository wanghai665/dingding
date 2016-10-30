<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta charset="utf-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>无标题文档</title>
<link href="boilerplate.css" rel="stylesheet" type="text/css">
<link href="mobile.css" rel="stylesheet" type="text/css">
<!-- 
要详细了解文件顶部 html 标签周围的条件注释:
paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/

如果您使用的是 modernizr (http://www.modernizr.com/) 的自定义内部版本，请执行以下操作:
* 在此处将链接插入 js 
* 将下方链接移至 html5shiv
* 将“no-js”类添加到顶部的 html 标签
* 如果 modernizr 内部版本中包含 MQ Polyfill，您也可以将链接移至 respond.min.js 
-->
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="respond.min.js"></script>
</head>

<body>
<%

%>
<% 
'=====以下是ASP与SQLServer的连接===== 
dim Sql_Server,Sql_User,Sql_Pass,Sql_Data,selectvalue,selectmethod,valuename 
Sql_Server = "203.88.163.121" '数据库服务器地址 
Sql_User = "sq_wanghai665" '数据库登录名 
Sql_Pass = "5628665" '数据库密码 
Sql_Data = "sq_wanghai665" '数据库名
selectvalue=Trim(Request.QueryString("selectvalue"))
selectmethod=Trim(Request.QueryString("selectmethod"))
valuename=Trim(Request.QueryString("valuename"))

'以下部分不能做任何的修改！

dim my_Conn,connstr 
connstr = "PROVIDER=SQLOLEDB.1;Data Source="&Sql_Server&";user ID="&Sql_User&";Password="&Sql_Pass&";inital Catalog="&Sql_Data 
set my_Conn = server.createobject("ADODB.connection") '创建数据库连接对象 
my_Conn.open connstr '连接数据库

'定义关闭连接池 
sub CloseConn() 
my_Conn.close 
set my_Conn=nothing 
end sub

'===ASP与SQLServer的连接代码结束== 
Set rs=my_Conn.Execute("Select * From DATA_TARGET_LL where phone_id='"&valuename&"'") 
IF not rs.eof then
Response.Write("是ABC目标客户")
else
Response.Write("不是ABC目标客户")
end if
set rs=nothing 
CloseConn() 
%>
</body>
</html>
