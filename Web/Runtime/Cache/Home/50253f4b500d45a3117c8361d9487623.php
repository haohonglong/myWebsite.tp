<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?php echo ($info['title']); ?></title>
		<script type='text/javascript' src="/Public/js/jquery-1.7.1.js"></script>
		<script type='text/javascript' src='/Public/js/lib.class.js'></script>
		<script type='text/javascript' src='/Public/js/Tools.class.js'></script>
		<link href="/Public/css/base.css" rel="stylesheet" type="text/css" />
		<script type='text/javascript'>
			var tool=new window.System.Tab();
			$(function(){
				
				tool.run({
                        'list':$('.sectionTitle-A1 li'),
                        'event':'click',
                        'temp':$($('.sectionTitle-A1 li')[0]),
                        'class':'current',
                        '$block':$(".sectionBlock"),
                        'fn':function(obj){
                            obj.current.$block.each(function(i){
                                if(obj.this_index==i){
                                    $(this).show();
                                }else{
                                    $(this).hide();
                                }
                            });
                        }
				});

				
			
			});
		</script>
		
		<style type="text/css">
			html,body{overflow:auto;}
		</style>
</head>
<body>
<div id="wrapper">
	<div id="main" class="p10">
		<div class="sectionTitle-A1 mb10">
			<ul class="clear">
				<li class="current first"><span>添加类别</span></li>
				<li class=""><span>添加视频</span></li>
				<li><span>添加链接地址</span></li>
			</ul>
		</div>
		
		<div class="sectionBlock sectionForm sectionForm-A1 sectionFont">
			<div class="p10 mb20">
                            
				<form action="<?php echo U('Home/sorts/add');?>" method="post">
					<ul>
						<li class="clear">
							<label class="L">类名称：</label>
							<input type="text" name="name" class="text L" value="" />
						</li>
						<li class="clear">
							<label class="L">保存日期：</label>
							<input type="text" name="date" class="text L" value="" />
						</li>
						
					</ul>
					<div class="sectionButton sectionButton-A1">
						<input type="submit" class="bun mr10" name="submit" value="提交"/>
						<input type="reset" class="bun" name="submit" value="还原"/>
						
					</div>
				</form>
			</div>
			<ul class="clear sectionFloat">
                <?php if(is_array($info["sort"])): $i = 0; $__LIST__ = $info["sort"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><li>
                    <div class="sectionLabel-A1 js_label">
                        <div class="p10 border">
                            <span class="icon"><?php echo ($item['id']+1); ?></span>
                            <?php echo ($item["name"]); ?>
                        </div>
                    </div>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>

		</div>
		<div class="sectionBlock sectionForm sectionForm-A1 sectionFont none">
			<div class="p10">
                            
				<form action="<?php echo U('Home/video/add');?>" method="post">
					<ul>
						<li class="clear">
							<label class="L">视频标题：</label>
							<input type="text" name="vidoTitle" class="text L" value="" />
						</li>
						<li class="clear">
							<label class="L">保存日期：</label>
							<input type="text" name="vidoDate" class="text L" value="" />
						</li>
						<li class="textarea clear">
							<label class="L">视频源码:(550*400)</label>
							<textarea name="vidoUrl" cols="30" rows="5" class="L"></textarea>
						</li>
						
					</ul>
					<div class="sectionButton sectionButton-A1">
						<input type="submit" class="bun mr10" name="submit" value="提交"/>
						<input type="reset" class="bun" name="submit" value="还原"/>
						
					</div>
				</form>
			</div>
		</div>
		
		<div class="sectionBlock sectionForm sectionForm-A1 sectionFont none">
			<div class="p10">
				<form action="<?php echo U('Home/address/add');?>" method="post">
					<ul>
						<li class="clear">
							<label class="L">地址名字：</label>
							<input type="text" name="vidoTitle" class="text L" value="" />
                            <label class="L">请选所属类：</label>
                            <select class="L js_sortsID" name="sortsID">
                                <?php if(is_array($info["sort"])): $i = 0; $__LIST__ = $info["sort"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><option value="<?php echo ($item["id"]); ?>"><?php echo ($item["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                            </select>
                            
						</li>
						<li class="clear">
							<label class="L">保存日期：</label>
							<input type="text" name="vidoDate" class="text L" value="" />
						</li>
						<li class="clear">
							<label class="L">链接地址：</label>
							<input type="text" name="vidoUrl" class="text L" value="" />
						</li>
						<li class="textarea clear">
							<label class="L">备注（文字在1500字以内）</label>
							<textarea name="info" cols="30" rows="5" class="L"></textarea>
						</li>
					</ul>
					<div class="sectionButton sectionButton-A1">
						<input type="submit" class="bun mr10" name="submit" value="提交"/>
						<input type="reset" class="bun" name="submit" value="还原"/>
						
					</div>
				</form>
			</div>
		</div>
			
		
		
	</div><!--#main theEnd-->
</div><!--#wrapper theEnd-->

</body>
</html>