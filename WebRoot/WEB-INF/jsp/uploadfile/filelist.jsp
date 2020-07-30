<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="utf-8">
		<title>
			后台管理系统
		</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="${path}/css/index.css" media="all">
		<script type="text/javascript" src="${path}/res/wyx/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${path}/res/wyx/js/jquery.form.js"></script>
	</head>
	<body>
		<div class="x-body layui-card">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
				<div class="layui-tab-content">
					<button type="button" class="layui-btn" id="file" onclick="uploadfile()"><i class="layui-icon">&#xe67c;</i>上传文件</button>
					<button type="button" class="layui-btn" id="finish">选择完成</button>
					<div class="layui-tab-item layui-show">
	                    <table class="layui-table layui-form">
	                        <thead>
	                        <tr>
		                        <th><input type="checkbox" lay-filter="checkall" name="" lay-skin="primary"></th>
	                            <th>文件名称</th>
	                            <th>文件地址</th>
	                            <th>上传时间</th>
	                            <th>操作</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <s:iterator value="#page.list" var="uploadfileFile">
	                        <tr>
		                        <td><input type="checkbox" name="id" value="<s:property value='#uploadfileFile.id'/>" lay-skin="primary"></td>
	                            <td><s:property value='#uploadfileFile.name'/></td>
	                            <td><s:property value='#uploadfileFile.url'/></td>
	                            <td><s:property value='#uploadfileFile.createdAt'/></td>
	                            <td class="td-manage">
	                                <a title="删除" href="javascript:;" onclick="member_del(this,'<s:property value='#uploadfileFile.id'/>')" style="text-decoration:none">
	                                    <i class="layui-icon">&#xe640;</i>
	                                </a>
	                            </td>
	                        </tr>
	                        </s:iterator>
	                        </tbody>
	                    </table>
	                </div>
					<form id="updateForm" action="${path}/uploadfiles_input" method="post" enctype="multipart/form-data">
						<input type="file" style="display: none" name="upload" id="upload" onchange="uplad()">
					</form>
				</div>
			</div>
		</div>
		<div id="pageto" style="margin-left:20px;"></div>
		
		<script src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script>
			layui.use(["element", "layer", "form","upload"], function() {
				 var  form = layui.form;
				 // 监听全选
		        form.on("checkbox(checkall)", function(data){

		            if(data.elem.checked){
		                $("tbody input").prop("checked",true);
		            }else{
		                $("tbody input").prop("checked",false);
		            }
		            form.render("checkbox");
		        });
			});
		</script>
		
		<script>
		 function uploadfile(){document.getElementById("upload").click();}
		 function uplad()
		 {
			 layer.msg("文件上传中", {icon: 16});
			 $("#updateForm").ajaxSubmit({
				async:false,
				success:function(result)
				{
					if(result == "success")
					{
						layer.closeAll("loading");
						layer.msg("上传成功！", {icon: 1,time: 1000});
						setTimeout(function ()
						{
							window.location.reload();
						}, 1000);
					}
				}
			});
		 }
		 /*删除*/
		function member_del(obj, id) 
		{
			layer.confirm("确认要删除吗？", function(index) 
			{
				$.ajax
				({
					url:"${path}/uploadfiles_del",
					data:{"uploadfiles.id":id},
					type:"post",
					dataType:"text",
					success:function(result)
					{
						if (result == "success") 
						{
							$(obj).parents("tr").remove();
							layer.msg("已删除!", {icon: 1,time: 1000});
						}
						else 
						{
							layer.msg("操作失败!", {icon: 5,time: 2000});
						}
					}
				});
			});
		}
		//choose finish
		$("#finish").click(function () 
		{
			//待定。。。。。。。。。。。。。。。。。。。
			parent.getChildrenDataFile(urlarr);
			setTimeout(function() {
				var index = parent.layer.getFrameIndex(window.name);
				parent.layer.close(index);
			},100);
		});
		</script>
		<script>
		layui.use(["laypage", "layer"], function()
		{
			var laypage = layui.laypage,layer = layui.layer;
			//完整功能
			laypage.render
			({
		    	elem: "pageto",
		    	count: ${page.totalCount},
		    	layout: ["count", "prev", "page", "next", "refresh", "skip"],
		    	curr:${page.pageNo},
		    	jump: function(obj,first)
		    	{
		      		console.log(obj);
		      		//首次不执行
		      	    if(!first)
		      	    {
		      	    	window.location.href="${path}/uploadfiles_list?uploadfilesQuery.pageNo="+obj.curr;
		      	    }
		    	}
		  	});
		});
		</script>
</body>
</html>
