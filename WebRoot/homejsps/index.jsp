<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script type="text/javascript">
			
			var myScroll;

			function loaded() 
			{
				myScroll = new iScroll('wrapper', 
				{
					snap: true,
					momentum: false,
					hScrollbar: false,
					onScrollEnd: function() 
					{
						document.querySelector('#indicator > li.active').className = '';
						document.querySelector('#indicator > li:nth-child(' + (this.currPageX + 1) + ')').className = 'active';
					}
				});

			}

			document.addEventListener('DOMContentLoaded', loaded, false);
		</script>
		
		<script type="text/javascript">
			var playbox = (function() 
			{
				var _playbox = function() 
				{
					var that = this;
					that.box = null;
					that.player = null;
					that.src = null;
					that.on = false;
					that.autoPlayFix = 
					{
						on: true,
						evtName: ("ontouchstart" in window) ? "touchstart" : "mouseover"

					}
				}
				_playbox.prototype = 
				{
					init: function(box_ele) 
					{
						this.box = "string" === typeof(box_ele) ? document.getElementById(box_ele) : box_ele;
						this.player = this.box.querySelectorAll("audio")[0];
						this.src = this.player.src;
						this.init = function() 
						{
							return this;
						}
						this.autoPlayEvt(true);
						return this;
					},
					play: function() 
					{
						if (this.autoPlayFix.on) 
						{
							this.autoPlayFix.on = false;
							this.autoPlayEvt(false);
						}
						this.on = !this.on;
						if (true == this.on) 
						{
							this.player.src = this.src;
							this.player.play();
						} 
						else 
						{
							this.player.pause();
							this.player.src = null;
						}
						if ("function" == typeof(this.play_fn)) 
						{
							this.play_fn.call(this);
						}
					},
					handleEvent: function(evt) 
					{
						this.play();
					},
					autoPlayEvt: function(important) 
					{
						if (important || this.autoPlayFix.on) 
						{
							document.body.addEventListener(this.autoPlayFix.evtName, this, false);
						} 
						else 
						{
							document.body.removeEventListener(this.autoPlayFix.evtName, this, false);
						}
					}
				}
				return new _playbox();
			})();

			playbox.play_fn = function() 
			{
				this.box.className = this.on ? "btn_music on" : "btn_music";
			}
		</script>

		<script type="text/javascript">
			$(document).ready(function() 
			{
				playbox.init("playbox");
			});
		</script>
		
		<script type="text/javascript">
			var playbox = (function() 
			{
				//author:eric_wu
				var _playbox = function() 
				{
					var that = this;
					that.box = null;
					that.player = null;
					that.src = null;
					that.on = false;
					//
					that.autoPlayFix = 
					{
						on: true,
						//evtName: ("ontouchstart" in window)?"touchend":"click"
						evtName: ("ontouchstart" in window) ? "touchstart" : "mouseover"

					}
				}
				_playbox.prototype = 
				{
					init: function(box_ele) 
					{
						this.box = "string" === typeof(box_ele) ? document.getElementById(box_ele) : box_ele;
						this.player = this.box.querySelectorAll("audio")[0];
						this.src = this.player.src;
						this.init = function() 
						{
							return this;
						}
						this.autoPlayEvt(true);
						return this;
					},
					play: function() 
					{
						if (this.autoPlayFix.on) 
						{
							this.autoPlayFix.on = false;
							this.autoPlayEvt(false);
						}
						this.on = !this.on;
						if (true == this.on) 
						{
							this.player.src = this.src;
							this.player.play();
						} 
						else 
						{
							this.player.pause();
							this.player.src = null;
						}
						if ("function" == typeof(this.play_fn)) 
						{
							this.play_fn.call(this);
						}
					},
					handleEvent: function(evt) 
					{
						this.play();
					},
					autoPlayEvt: function(important) 
					{
						if (important || this.autoPlayFix.on) 
						{
							document.body.addEventListener(this.autoPlayFix.evtName, this, false);
						} 
						else 
						{
							document.body.removeEventListener(this.autoPlayFix.evtName, this, false);
						}
					}
				}
				return new _playbox();
			})();

			playbox.play_fn = function() 
			{
				this.box.className = this.on ? "btn_music on" : "btn_music";
			}
		</script>

		<script type="text/javascript">
			$(document).ready(function() 
			{
				playbox.init("playbox");
			});
		</script>

		<style type="text/css">
			.btn_music 
			{
				display: inline-block;
				width: 35px;
				height: 35px;
				background: url('${path}/home/images/play.png') no-repeat center center;
				background-size: 100% auto;
				position: absolute;
				z-index: 100;
				left: 15px;
				top: 20px;
			}

			.btn_music.on 
			{
				background-image: url("${path}/home/images/stop.png");
			}
		</style>
		
		<style type="text/css">
			.btn_music 
			{
				display: inline-block;
				width: 35px;
				height: 35px;
				background: url('${path}/home/images/play.png') no-repeat center center;
				background-size: 100% auto;
				position: absolute;
				z-index: 100;
				left: 15px;
				top: 20px;
			}

			.btn_music.on 
			{
				background-image: url("${path}/home/images/stop.png");
			}
		</style>
		
	</head>
	<body id="cate14">
	
		<span id="playbox" class="btn_music" onclick="playbox.init(this).play();"><audio id="audio" loop src="${path}/home/images/4.mp3"></audio></span>				
	
		<div class="banner">
			<div id="wrapper">
				<div id="scroller">
					<ul id="thelist">
						<li style="background-image:url('${path}/home/images/2.jpg');background-attachment: inherit;background-repeat:no-repeat;background-size:cover;-moz-background-size:cover;-webkit-background-size:cover; background-position: center center ">
						</li>
						<li style="background-image:url('${path}/home/images/1.jpg');background-attachment: inherit;background-repeat:no-repeat;background-size:cover;-moz-background-size:cover;-webkit-background-size:cover; background-position: center center ">
						</li>
						<li style="background-image:url('${path}/home/images/9.jpg');background-attachment: inherit;background-repeat:no-repeat;background-size:cover;-moz-background-size:cover;-webkit-background-size:cover; background-position: center center ">
						</li>
						<li style="background-image:url('${path}/home/images/8.jpg');background-attachment: inherit;background-repeat:no-repeat;background-size:cover;-moz-background-size:cover;-webkit-background-size:cover; background-position: center center ">
						</li>
						<li style="background-image:url('${path}/home/images/7.jpg');background-attachment: inherit;background-repeat:no-repeat;background-size:cover;-moz-background-size:cover;-webkit-background-size:cover; background-position: center center ">
						</li>
					</ul>
				</div>
			</div>
			<div class="clr">
			</div>
		</div>
		
		<div class="mainmenu">
			<ul>
				<li>
					<div class="menubtn">
						<a href="${path}/labout_list">公司简介</a>
					</div>
				</li>
				<li>
					<div class="menubtn">
						<a href="${path}/lyewu_list">业务简介</a>
					</div>
				</li>
				<li>
					<div class="menubtn">
						<a href="${path}/lanli_list">成功案例</a>
					</div>
				</li>
				<li>
					<div class="menubtn">
						<a href="${path}/lhuodong_list">公司活动</a>
					</div>
				</li>
				<li>
					<div class="menubtn">
						<a href="${path}/lfileup_list">政策文件</a>
					</div>
				</li>
				<li>
					<div class="menubtn">
						<a href="${path}/lcontact_list">联系我们</a>
					</div>
				</li>
			</ul>
		</div>
		
		<div class="copyright">隆达咨询门户网站欢迎您！</div>
	
	</body>
	
	<script type="text/javascript">
			
			var count = document.getElementById("thelist").getElementsByTagName("li").length;

			for (i = 0; i < count; i++) 
			{
				document.getElementById("thelist").getElementsByTagName("li").item(i).style.width = document.documentElement.clientWidth + "px";
				document.getElementById("thelist").getElementsByTagName("li").item(i).style.height = document.documentElement.clientHeight + "px";
			}
			
			document.getElementById("scroller").style.cssText = " width:" + document.documentElement.clientWidth * count + "px";

			setInterval(function() {myScroll.scrollToPage('next', 0, 400, count);}, 3500);

			window.onresize = function() 
			{
				for (i = 0; i < count; i++) 
				{
					document.getElementById("thelist").getElementsByTagName("li").item(i).style.width = document.documentElement.clientWidth + "px";
					document.getElementById("thelist").getElementsByTagName("li").item(i).style.height = document.documentElement.clientHeight + "px";
				}
				document.getElementById("scroller").style.cssText = " width:" + document.documentElement.clientWidth * count + "px";
			}
		</script>
		
		<script type="text/javascript">
			$("#cintroduce").click(function() 
			{
				$(".mainmenu").hide();
				$(".banner").hide();
			});	
		</script>
</html>
