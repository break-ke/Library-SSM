<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <HEAD>
<TITLE>管理员信息</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<script type="text/javascript" src="js/jquery_1.9.js"></script>
<script type="text/javascript">
	function a() {
		$.ajax({
			url:"<%= request.getContextPath()%>/bookAction.action",
			type:"POST",
			dataType : "json",
			success:function(msg){
            	alert(msg);
				var val = eval("("+ msg +")");
				alert(val.arry);
			 		$.each(val.arry,function(key,value){
					var show=
					"<table border='1' width=1200px><tr>"+
                	"<th>书名:"+value.na+"</th>"+ 
                	"<th>作者:"+value.au+"</th>"+
                	"<td>出版社:"+value.pu+"</td>"+
                	"<td>出版日期:"+value.pub+"</td>"+
                	"<td>页数:"+value.pa+"</td>"+
                	"<td>价格:"+value.pr+"</td>"+
                	"<td>内容摘要:"+value.co+"</td>"+
            		"</tr></table>";
					$('#tabl>tbody').append(show);
				
					});
			}
		});
	}
</script>
<META name=GENERATOR>
</HEAD>
  <body onload="a()">
    <TABLE id=tabl>
		<TBODY></TBODY>
		</TABLE>
    
  </body>
</html>
