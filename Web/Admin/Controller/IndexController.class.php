<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function indexAction() {
        $info=[
            'title'=>'管理系统',
        ];
        $this->assign('info',$info)->display('index');
    }
    
    
}