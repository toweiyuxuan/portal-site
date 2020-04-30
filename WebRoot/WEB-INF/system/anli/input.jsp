<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="updateForm" action="${path}/ajax_an_add" method="post" enctype="multipart/form-data">
	<table class="table table-bordered table-hover definewidth m10"> 
        <tr>
            <td class="tableleft" width="100px">标题</td>
            <td colspan="4">
            	<s:textfield maxlength="25" id="title" name="anli.ATitle" type="text" required="true" cssStyle="width:100%"></s:textfield>            
            </td>
        </tr>
         <tr>
            <td class="tableleft" width="100px">简介</td>
            <td colspan="4">
            	<s:textfield maxlength="80" id="word" name="anli.AAword" type="text" required="true" cssStyle="width:100%"></s:textfield>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">段落一</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="p1" name="anli.AP1" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">段落二</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="p2" name="anli.AP2" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">段落三</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="p3" name="anli.AP3" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">段落四</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="p4" name="anli.AP4" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">段落五</td>
            <td colspan="4">
            	<s:textarea maxlength="240" id="p5" name="anli.AP5" type="text" required="true" cssStyle="width:100%"></s:textarea>            
            </td>
        </tr>
        <tr>
            <td class="tableleft">图片</td>
            <td width="300px">
				<a href="javascript:void(0);" title="点击上传图片">
					<img onclick="addfile(1)" id="id_img1" src="${path}/system/Images/ww.jpg"  style="width: 300px;height: 200px;">
				</a>
			</td>
			<td width="300px">
				<a href="javascript:void(0);" title="点击上传图片">
					<img onclick="addfile(2)" id="id_img2" src="${path}/system/Images/ww.jpg"  style="width: 300px;height: 200px;">
				</a>
			</td>
			<td width="300px">
				<a href="javascript:void(0);" title="点击上传图片">
					<img onclick="addfile(3)" id="id_img3" src="${path}/system/Images/ww.jpg"  style="width: 300px;height: 200px;">
				</a>
			</td>
			 <td></td>
        </tr>
        <tr>
            <td class="tableleft"></td>
            <td colspan="4">
    			<input style="display: none;" name="upload1" id="myfile1" type="file" accept=".jpeg,.jpg,.png" mustwrite="true" title="第一张图片" required="required">
				<input style="display: none;" name="upload2" id="myfile2" type="file" accept=".jpeg,.jpg,.png" mustwrite="true" title="第二张图片" required="required">
				<input style="display: none;" name="upload3" id="myfile3" type="file" accept=".jpeg,.jpg,.png" mustwrite="true" title="第三张图片" required="required">
            	<button type="button" class="btn btn-primary" id="save">提交</button>	
				<button type="button" class="btn btn-success" id="back">返回</button>            
            </td>
        </tr>
    </table>
</form>
</body>
<script>

var issubmit = true;

function addfile(id) 
{
	if(id==1)
	{
		document.getElementById("myfile1").click();
	}
	if(id==2)
	{
		document.getElementById("myfile2").click();
	}
	if(id==3)
	{
		document.getElementById("myfile3").click();
	}
}

$("#myfile1").change(function ()
{
	issubmit = true;
	
	var img_id = this.value;

	var index= img_id.lastIndexOf(".");
	img_id=img_id.substring(index);
	if(img_id!=".png"&&img_id!=".jpg"&&img_id!=".jpeg")
	{
		alert("该文件不是指定图片格式,重新选择！");
		issubmit = false;
	}
	if (this.files[0].size > 2097152) 
	{ 
		alert("该图片大小超过 1M,请重新选择！"); 
		issubmit = false;
	} 
	
    // 先获取用户上传的文件对象
    let fileObj = this.files[0];
    // 生成一个文件读取的内置对象
    let fileReader = new FileReader();
    // 将文件对象传递给内置对象
    fileReader.readAsDataURL(fileObj); //这是一个异步执行的过程，所以需要onload回调函数执行读取数据后的操作
    // 将读取出文件对象替换到img标签
    fileReader.onload = function()
    { 
  		// 等待文件阅读器读取完毕再渲染图片
     	$("#id_img1").attr("src",fileReader.result);   	
    };
});

$("#myfile2").change(function ()
{
	issubmit = true;
	
	var img_id = this.value;

	var index= img_id.lastIndexOf(".");
	img_id=img_id.substring(index);
	if(img_id!=".png"&&img_id!=".jpg"&&img_id!=".jpeg")
	{
		alert("该文件不是指定图片格式,重新选择！");
		issubmit = false;
	}
	if (this.files[0].size > 2097152) 
	{ 
		alert("该图片大小超过 1M,请重新选择！"); 
		issubmit = false;
	} 
	
    // 先获取用户上传的文件对象
    let fileObj = this.files[0];
    // 生成一个文件读取的内置对象
    let fileReader = new FileReader();
    // 将文件对象传递给内置对象
    fileReader.readAsDataURL(fileObj); //这是一个异步执行的过程，所以需要onload回调函数执行读取数据后的操作
    // 将读取出文件对象替换到img标签
    fileReader.onload = function()
    { 
  		// 等待文件阅读器读取完毕再渲染图片
     	$("#id_img2").attr("src",fileReader.result);   	
    };
});

$("#myfile3").change(function ()
{
	issubmit = true;
	
	var img_id = this.value;

	var index= img_id.lastIndexOf(".");
	img_id=img_id.substring(index);
	if(img_id!=".png"&&img_id!=".jpg"&&img_id!=".jpeg")
	{
		alert("该文件不是指定图片格式,重新选择！");
		issubmit = false;
	}
	if (this.files[0].size > 2097152) 
	{ 
		alert("该图片大小超过 1M,请重新选择！"); 
		issubmit = false;
	} 
	
    // 先获取用户上传的文件对象
    let fileObj = this.files[0];
    // 生成一个文件读取的内置对象
    let fileReader = new FileReader();
    // 将文件对象传递给内置对象
    fileReader.readAsDataURL(fileObj); //这是一个异步执行的过程，所以需要onload回调函数执行读取数据后的操作
    // 将读取出文件对象替换到img标签
    fileReader.onload = function()
    { 
  		// 等待文件阅读器读取完毕再渲染图片
     	$("#id_img3").attr("src",fileReader.result);   	
    };
});

$("#save").click(function()
{
	var val1 = $("#title").val();
	var val2 = $("#word").val();
	var val3 = $("#p1").val();
	if(val1=="" || val1==null || val2=="" || val2==null || val3=="" || val3==null)
	{
		alert("标题、简介和段一为必填项！");
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
						window.location.href="${path}/anli_list";
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
	window.location.href="${path}/anli_list";		
});

</script>
</html>