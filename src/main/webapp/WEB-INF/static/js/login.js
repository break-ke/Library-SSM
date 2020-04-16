$(document).ready(function(){
	$("#sub").click(function(){
	
		//用户名验证
		var name = $(".pwdlogin_one").val();
		if(name==""){
			
			document.getElementById("testname").innerHTML="<font color='red' size='3px'>用户名不能为空</font>";
			return false;
		}else{
			return true;
		}
		$(".pwdlogin_one").focus(function(){
			document.getElementById("testname").hide();
		})
		//密码验证
		var password = $(".pwd").val();
		
		if(password== ""){
			document.getElementById("testpass").innerHTML="<font color='red' size='3px'>密码不能为空</font>"
			return false;
		}else{
			return true;
		}
		if(name=="admin" && password=="123"){
			window.location.href="guanli.jsp";
			return false;
		}else{
			return true;
		}
	
	})
})