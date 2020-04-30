<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form id="updateForm" action="" method="" class="definewidth m20">	
    <table class="table table-bordered table-hover definewidth m10">        
        <tr>
            <td class="tableleft">原密码</td>
            <td>
            	<s:textfield id="startpass" name="user.UPassword" type="password" required="true"></s:textfield>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">新密码</td>
            <td>
            	<s:textfield id="pass" name="updatepassword" type="password" required="true"></s:textfield>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">确认新密码</td>
            <td>
            	<s:textfield id="repass" type="password" required="true"></s:textfield>            
            </td>
        </tr>
         <tr>
            <td class="tableleft"></td>
            <td>
                <button type="button" class="btn btn-primary" id="save">提交</button>	&nbsp;&nbsp;
                <button type="button" class="btn btn-success" id="backid">返回</button>
            </td>
        </tr>
    </table>
</form>
</body>
<script>
$(function () 
{       
	$("#backid").click(function()
	{
		window.location.href="${path}/user_list";
	});
	
	$("#save").click(function()
	{	
		var val1 = $("#startpass").val();
		var val2 = $("#pass").val();
		var val3 = $("#repass").val();
		
		if(val1 == ""||val1 == null)
		{
			alert("请填写原密码！");
			return;			
		}
		
		if(val2 == ""||val2 == null)
		{
			alert("请填写新密码！");
			return;			
		}
		
		if(val2 != val3)
		{
			alert("确认密码不一致！");
			return;			
		}
		
		if(val1 == val3)
		{
			alert("原密码和新密码不能相同！");
			return;			
		}
		
		$.ajax
		({
			url:"${path}/ajax_u_updatepass",
			type:"post",
			data:
			{
				"user.UPassword":val1,
				"updatepassword":val2
			},
			async:false,
			dataType:"text",
			success:function(result)
			{
				//alert(result)
				if(result == "success")
				{
					alert("修改成功");
					window.location.href="${path}/user_list";
				}
				if(result == "fail")
				{
					alert("原密码不正确");
				}
			}
		});
	});
});
</script>
</html>