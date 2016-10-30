<html>
<head>
</hdead>
<body>

<% 
'=====以下是ASP与SQLServer的连接===== 
dim Sql_Server,Sql_User,Sql_Pass,Sql_Data 
Sql_Server = "203.88.163.121" '数据库服务器地址 
Sql_User = "sq_wanghai665" '数据库登录名 
Sql_Pass = "5628665" '数据库密码 
Sql_Data = "sq_wanghai665" '数据库名

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
Set rs=my_Conn.Execute("Select top 1000 * From DATA_TARGET_LL") 
Do While Not rs.Eof 
Response.Write rs("phone_id")&"<br>" 
rs.movenext 
loop 
set rs=nothing 
CloseConn() 
%>

</body>
</html>