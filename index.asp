<html>
<head>
</hdead>
<body>

<% 
'=====������ASP��SQLServer������===== 
dim Sql_Server,Sql_User,Sql_Pass,Sql_Data 
Sql_Server = "203.88.163.121" '���ݿ��������ַ 
Sql_User = "sq_wanghai665" '���ݿ��¼�� 
Sql_Pass = "5628665" '���ݿ����� 
Sql_Data = "sq_wanghai665" '���ݿ���

'���²��ֲ������κε��޸ģ�

dim my_Conn,connstr 
connstr = "PROVIDER=SQLOLEDB.1;Data Source="&Sql_Server&";user ID="&Sql_User&";Password="&Sql_Pass&";inital Catalog="&Sql_Data 
set my_Conn = server.createobject("ADODB.connection") '�������ݿ����Ӷ��� 
my_Conn.open connstr '�������ݿ�

'����ر����ӳ� 
sub CloseConn() 
my_Conn.close 
set my_Conn=nothing 
end sub

'===ASP��SQLServer�����Ӵ������== 
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