<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
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
<form action="action.asp" method="get">
<div class="gridContainer clearfix">
  <div class="LayoutDiv">查询内容:
  <select name="selectvalue"  style="height:30px" >
  <option value="target">目标客户</option>
  <option  value="cond">押金活动</option>
  <option   value="sprom">促销</option>
  </select>
  <hr/>
  </div>
  <div class="LayoutDiv"  >查询模式:
  <select name="selectmethod" style="height:30px">
  <optgroup label="目标客户">
  <option  value="phone_id">手机号</option>
  <optgroup label="押金活动&促销">
  <option  value="id">代码</option>
  <option  value="name">名称</option>
  </select>
  <hr/>
 </div>
  <div class="LayoutDiv">查询值:&nbsp;&nbsp;&nbsp;
  <input type="text" style="height:30px" name="valuename" >
   <hr/>
  </div>
 
  <div class="LayoutDiv" align="center">
    <input style="height:50px" type="submit" value="提交">
  </div>
</div>
</form>
</body>
</html>
