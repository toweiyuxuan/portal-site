<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html class="x-admin-sm">
	<head>
		<meta charset="UTF-8">
		<title>文章列表</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
		
		<link rel="stylesheet" href="${path}/css/font.css">
		<link rel="stylesheet" href="${path}/css/index.css">
		
		<script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="${path}/js/index.js"></script>

	</head>
	<body>
		<div class="x-nav">
			<span class="layui-breadcrumb">
				<a href="">首页</a>
				<a href="">业务简介</a>
				<a><cite>列表</cite></a>
			</span>
			<a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
				<i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
			</a>
		</div>
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card-header">						
						<a class="layui-btn" href="${path}/business_input">添加</a>
					</div>
					<div class="layui-card-body layui-table-body layui-table-main">
						<table class="layui-table layui-form">
							<thead>
								<tr>
									<th>标题</th>
									<th>封面图</th>
									<th>简介</th>
									<th>详细描述</th>
									<th width="280px">配图</th>
									<th width="120px">创建时间</th>
									<th>状态</th>
									<th width="100px">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#page.list" var="business">
								<tr>
									<td><s:property value="#business.name"/></td>
									<td>
										<s:if test="#business.cover != null">
											<a href="<s:property value="#business.cover"/>" target="_blank">
												<font color="blue">点击查看</font>
											</a>
										</s:if>
									</td>
									<td><s:property value="#business.introduction"/></td>
									<td><s:property value="#business.description"/></td>
									<td>
										<s:property value='#business.picture'/>
									</td>
									<td><s:property value="#business.createdAt"/></td>
									<td class="td-status">
										<s:if test="#business.status == 0"><span class="layui-btn layui-btn-normal layui-btn-mini layui-btn-disabled">已停用</span></s:if>
										<s:if test="#business.status == 1"><span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></s:if>
									</td>
									<td class="td-manage">
										<a title="配图" href="javascript:;" onclick="addPic(<s:property value='#business.id'/>)" style="text-decoration:none">
											<i class="layui-icon">&#xe64a;</i>
										</a>&emsp;
										<s:if test="#business.status == 0">
											<a onclick="operate(this,'<s:property value='#business.id'/>')" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>
										</s:if>
										<s:else>
											<a onclick="operate(this,'<s:property value='#business.id'/>')" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>
										</s:else>
										
										<a title="编辑" href="${path}/business_edit?business.id=<s:property value='#business.id'/>">
											<i class="layui-icon">&#xe642;</i>
										</a>
										<a title="删除" onclick="member_del(this,'<s:property value='#business.id'/>')" href="javascript:;"><i class="layui-icon">&#xe640;</i></a>
									</td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="pageto" style="margin-left:20px;"></div>
	</body>
	<script>
	var businessId;
	function addPic(id)
	{
		businessId = id;
		xadmin.open("上传面板","${path}/uploadfiles_list",1000,600);
	}
	//拿到子窗口中传回的数据
	function getChildrenData(data)
	{
		console.log("从子页面传递回的数据");
		//console.log(data);
		var jsonStr = JSON.stringify(data);
		//console.log(jsonStr);
		$.ajax
		({
			url:"${path}/business_addPic",
			data:{"business.id":businessId,"business.picture":jsonStr},
			type:"post",
			dataType:"text",
			success:function(result)
			{
				if (result == "success") 
				{
					layer.msg("配图成功！", {icon: 1,time: 1000});
					setTimeout(function() {
						window.location.reload();
						var index = parent.layer.getFrameIndex(window.name);
						parent.layer.close(index);
					}, 1000);
				}
				else 
				{
					layer.msg("操作失败!", {icon: 5,time: 2000});
				}
			}
		});
	}
	function operate(obj, id) 
	{
		if ($(obj).attr("title") == "停用") 
		{
			layer.confirm("确认要停用吗？", function(index) 
			{
				$.ajax
				({
					url:"${path}/business_forbid",
					data:{"business.id":id},
					type:"post",
					dataType:"text",
					success:function(result)
					{
						if (result == "success") 
						{
							$(obj).attr("title", "启用")
							$(obj).find("i").html("&#xe62f;");
							$(obj).parents("tr").find(".td-status").find("span").addClass("layui-btn-disabled").html("已停用");
							layer.msg("已停用!", {icon: 5,time: 1000});
						}
						else 
						{
							layer.msg("操作失败!", {icon: 5,time: 2000});
						}
					}
				});
			});
		} 
		if($(obj).attr("title") == "启用")
		{
			layer.confirm("确认要启用吗？", function(index) 
			{
				$.ajax
				({
					url:"${path}/business_start",
					data:{"business.id":id},
					type:"post",
					dataType:"text",
					success:function(result)
					{
						if (result == "success") 
						{
							$(obj).attr("title", "停用")
							$(obj).find("i").html("&#xe601;");
							$(obj).parents("tr").find(".td-status").find("span").removeClass("layui-btn-disabled").html("已启用");
							layer.msg("已启用!", {icon: 6,time: 1000});
						}
						else 
						{
							layer.msg("操作失败!", {icon: 5,time: 2000});
						}
					}
				});
			});
		}
	}
	/*删除*/
	function member_del(obj, id) 
	{
		layer.confirm("确认要删除吗？", function(index) 
		{
			$.ajax
			({
				url:"${path}/business_del",
				data:{"business.id":id},
				type:"post",
				dataType:"text",
				success:function(result)
				{
					if (result == "success") 
					{
						$(obj).parents("tr").remove();
						layer.msg("已删除!", {icon: 1,time: 1000});
						setTimeout(function() {
							window.location.reload();
						}, 1000);
					}
					else 
					{
						layer.msg("操作失败!", {icon: 5,time: 2000});
					}
				}
			});
		});
	}
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
	      	    	window.location.href="${path}/business_list?businessQuery.pageNo="+obj.curr;
	      	    }
	    	}
	  	});
	});
	</script>
</html>
