<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?php echo ($info['title']); ?></title>
		<link href="/Public/css/base.css" rel="stylesheet" type="text/css" />
		<link href="/Public/css/homepage.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="/Public/js/jquery-1.7.1.js"></script>
		<script type="text/javascript" src="/Public/js/Lly.js"></script>
		<script type="text/javascript" src="/Public/js/menu.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>
	<body onload="resizecontrol()" onresize="resizecontrol()">
	<div id="wrapper">
	<!--===============header===============-->
		<div class="sectionHeader-A1 clear" id="header">
	<div class="sectionWrap-A1">
		<div class="middle">
			<div class="left">
				<div class="sectionBox sectionLogo-A1 clear">
					<img src="/Public/images/logo.gif" alt=""/>
					<h2 class="L">管理系统</h2>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="sectionNav-A1">
		<ul class="clear">
                    <li class="R ml10"><a href="<?php echo U('/Admin');?>" target="_blank">后台</a></li>
                    <li class="R">欢迎您: <span class="mr10">name</span> [<a href="">退出登录</a>]</li>
		</ul>
	</div>
</div>




	<!--===============main===============-->	
		<div id="main" class="clear">
		<!--===============main_menu===============-->
			<div id="main_menu">
	<div id="bottomUp"><img src="/Public/images/bottomUp.jpg" class="imgDown"/></div>
	<div class="main_nav">
		<div class="topbg"></div>
		<div class="midbg" style="margin-top:0px;">
			<ul class="listexpander">
				<li>
					<a class="level1menu" href="#">视频及链接地址管理</a>
					<ul class="childmenu">
						<li><a href="<?php echo U('Home/index/addinfo');?>" target="mainframe">添加</a></li>
						<li><a href="<?php echo U('Home/video/index');?>" target="mainframe">看视频</a></li>
                                                <li class="cur"><a href="<?php echo U('Home/address/index');?>" target="mainframe">查看地址</a></li>
					</ul>
				</li>
				<li>
					<a class="level1menu" href="#">财务管理</a>
					<ul class="childmenu">
						<li><a href="<?php echo U('Home/finance/index');?>" target="mainframe">账单列表</a></li>
						
					</ul>
				</li>

			</ul>
			<div id="bottomDown"><img src="/Public/images/bottomDown.jpg" class="imgDown" /></div>
		</div>
		<div class="bottombg"></div>
	</div>
</div>
			<!-- ===============main_content=================== -->
			<div id="main_content">
				<iframe name="mainframe" scrolling="no" src="<?php echo U('Home/address/index','','');?>" frameborder="0" width="100%" height="400" allowtransparency="true" id="mainframe"></iframe>
			</div>
			<div class="clearboth"></div>
		</div>
	<!-- main -->
		<!--===============footer===============-->
		<div class="footer">
			<div class="inner">
				推荐使用FireFox浏览器，1024*768以上分辨率浏览。
			</div>
		</div>
	</div>
	</body>
</html>