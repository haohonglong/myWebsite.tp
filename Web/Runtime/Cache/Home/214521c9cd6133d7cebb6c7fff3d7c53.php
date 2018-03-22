<?php if (!defined('THINK_PATH')) exit();?> <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?php echo ($info['title']); ?></title>
		<link href="/Public/css/base.css" rel="stylesheet" type="text/css" />
                <script type='text/javascript' src='/Public/js/System/Basis.class.js'></script>
                <script type='text/javascript' src="/Public/js/jquery-1.7.1.js"></script>
                <script type='text/javascript' src='/Public/js/System/Helper.class.js'></script>
                <script type='text/javascript' src='/Public/js/System/Tab.class.js'></script>
		
		<!--<script type='text/javascript' src='/Public/js/lib.class.js'></script>-->
		<!--<script type='text/javascript' src='/Public/js/Tools.class.js'></script>-->
		<script type='text/javascript'>
			var tool=new window.System.Tab();
            $(function(){
				tool.run({
                        'list':$('#list .js_label'),
                        'event':'hover',
                        'hover':true,
                        'class':'current',
                        'fn':function(obj){
                            var $mess=$(this).find('.sectionMessage-A5');
                            $mess.show();
                            this.menssage=$mess[0];
                            if(obj.temp[0].menssage){
                                $(obj.temp[0].menssage).hide();
                                
                            }
                            
                            
                            
                        }
				});

                
                $('.j_sectionMenuA1 dd').eq(0).addClass('cur');
                $('.j_sectionBlockA1').eq(0).show();
                tool.run({
                            'list':$('.j_sectionMenuA1 dd'),
                            'event':'click',
                            'class':'cur',
                            'block':$('.j_sectionBlockA1'),
                            'fn':function(obj){
                                var dd_idnex=$(this).index();
                                obj.current.block.each(function(i){
                                    if(i === dd_idnex){
                                        $(this).show();
                                    }else{
                                        $(this).hide();
                                    }

                                });
                            }
                        });

			});

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
<!--header-->
<!--main-->	
<div id="main">
    <div class="content">
	<div class="p10">
            <div class="sectionBox sectionTitle-A2 mb20"><h2>视频地址列表</h2></div>
		<div id="list" class="p-rel">
                    <div class="sectionMenu-A1 j_sectionMenuA1">
                        <dl class="border">
                            <?php if(is_array($info["data"])): $i = 0; $__LIST__ = $info["data"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><dd class="">
                                    <div class="title"><?php echo ($list["sortName"]); ?></div>
                                </dd><?php endforeach; endif; else: echo "" ;endif; ?>
                            
                        </dl>
                    </div>
                    
                    <div class="sectionWrap-A6 show-url">
                        <?php if(is_array($info["data"])): $i = 0; $__LIST__ = $info["data"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><div class="j_sectionBlockA1 p-rel sectionBorder-A4 none">
                                <div class="p30">
                                    <ul class="clear sectionFloat">
                                        <?php if(is_array($list['sorts'])): $i = 0; $__LIST__ = $list['sorts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><li class="mb10">
                                                <div class="sectionLabel js_label">
                                                    <div class="p10 border">
                                                        <a class="linkBlue" href="<?php echo ($item["url"]); ?>" target="_blank" title=""><?php echo ($item["urlTitle"]); ?></a>
                                                        
                                                        <a class="ml10" href="<?php echo U('Home/address/showedit',['id'=>$item['id']]);?>">修改</a>
                                                        
                                                        <a href="<?php echo U('Home/address/del',['id'=>$item['id']]);?>" onclick="return del_confirm('此地址');" class="icon">ⅹ</a>
                                                        <div class="sectionMessage-A5">
                                                            <div class="p10 border">
                                                                <p>
                                                                    <strong>信息提示:</strong>
                                                                    <div class="text"><?php echo ($item["info"]); ?></div>
                                                                    <span class="date"><?php echo ($item["date"]); ?></span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                    </ul>
                                </div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div><!--End main-->
</div><!--End wrapper-->

</body>
</html>