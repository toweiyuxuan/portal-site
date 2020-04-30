<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form id="updateForm" action="${path}/ajax_f_update" method="post" enctype="multipart/form-data">
	<table class="table table-bordered table-hover definewidth m10"> 
        <tr>
            <td class="tableleft" width="100px">标题</td>
            <td colspan="4">
            	<s:textfield maxlength="25" id="title" name="fileup.FTitle" type="text" required="true" cssStyle="width:100%"></s:textfield>            
            </td>
        </tr>
        <tr>
            <td class="tableleft" width="100px">简介</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="word" name="fileup.FAword" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
         <tr>
            <td class="tableleft">文件</td>
			<td width="300px">
				<input name="upload1" id="myfileup1" type="file" accept=".pdf" mustwrite="true" required="required">
			</td>
			 <td></td>
        </tr>
        <tr>
            <td class="tableleft"></td>
            <td colspan="4">
            	<input type="hidden" name="fileup.FId" value="<s:property value="#fileup.FId"/>"/>
            	<button type="button" class="btn btn-primary" id="save">提交</button>	
				<button type="button" class="btn btn-success" id="back">返回</button>            
            </td>
        </tr>
    </table>
</form>
</body>
<script>

var issubmit = true;

$("#myfileup1").change(function ()
{
	issubmit = true;
	
	var img_id = this.value;

	var index= img_id.lastIndexOf(".");
	img_id=img_id.substring(index);
	if(img_id!=".pdf")
	{
		alert("该文件不是指定文件格式,重新选择！");
		issubmit = false;
	}
	if (this.files[0].size > 2097152) 
	{ 
		alert("该文件大小超过 1M,请重新选择！"); 
		issubmit = false;
	} 
	
});

$("#save").click(function()
{
	var val1 = $("#title").val();
	var val2 = $("#word").val();
	if(val1=="" || val1==null || val2=="" || val2==null)
	{
		alert("标题和简介为必填项！");
		issubmit = false;
	}
	else
	{
		if(issubmit)
		{
			$("#updateForm").ajaxSubmit
			({
				async:false,
				dataType:"text",
				success:function(result)
				{
					//alert(result)
					if(result == "success")
					{
						alert("修改成功！");
						window.location.href="${path}/fileup_list";
					}
				}
			});
		}
		else
		{
			alert("文件格式或大小不符合规范！")
		}
	}
	issubmit = true;
});

$("#back").click(function()
{
	window.location.href="${path}/fileup_list";		
});

</script>
</html>