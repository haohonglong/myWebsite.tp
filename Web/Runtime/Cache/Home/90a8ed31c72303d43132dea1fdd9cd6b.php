<?php if (!defined('THINK_PATH')) exit();?> <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?php echo ($info['title']); ?></title>
		<link href="/Public/css/base.css" rel="stylesheet" type="text/css" />
		<script type='text/javascript' src="/Public/js/jquery-1.7.1.js"></script>
		<script type="text/javascript">
			function del_confirm(name){
				return confirm("确认真的要删除"+name+"吗？");
			}
		</script>
		<style type="text/css">
			html,body{overflow:auto;}
		</style>
			
</head>
<body>
<div id="wrapper">

	<div class="sectionThumbnail sectionThumbnail-video mb20">
		<div class="p10">
			<ul class="clear sectionFloat">
                            <?php if(is_array($info["data"])): $i = 0; $__LIST__ = $info["data"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><li class="mr10">
					<div class="sectionBox-video mb10">
						<div class="video mb10">
							<?php echo ($item["source"]); ?>
						</div>
						<div class="desc">
							<p>
								<strong title="<?php echo ($item["title"]); ?>" class="mr5">
								<?php echo substr($item['title'],0,70);?>
                                                                </strong> :->视频ID：
								<?php echo ($item["id"]); ?>
								<a class="linkBlue mr10" href="<?php echo U('Home/video/showedit',['id'=>$item['id']]);?>">修改</a>
								<a class="linkBlue" href="<?php echo U('Home/video/del',['id'=>$item['id']]);?>" onclick="return del_confirm('数据');">删除</a>
							</p>
						</div>
					</div>
				</li><?php endforeach; endif; else: echo "" ;endif; ?>
                            
			</ul>
		</div>
		
	</div>
	<!--<iframe width="450" height="800" src="http://www.tvmao.com/ext/show_tv.jsp?p=CETV&c=CETV2" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="auto"></iframe>-->

</div>

</body>
</html>