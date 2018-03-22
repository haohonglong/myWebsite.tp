<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function indexAction() {
        $info=[
            'title'=>'管理系统',
        ];
        $this->assign('info',$info)->display('index');
    }
    public function addinfoAction(){
        $info=[
            'title'=>'',
            'sort'=>M('Sorts')->select(),
            
        ];
        
        $this->assign('info',$info)->display('addinfo');
    }
    
}