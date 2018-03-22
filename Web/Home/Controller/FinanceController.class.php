<?php
namespace Home\Controller;
use Think\Controller;
class FinanceController extends Controller {
    public function __construct() {
        parent::__construct();
        
    }
    
    public function indexAction(){
        $info=[
            'title'=>'个人账单',
            'info'=>M('Finance')->getField('money,state,note,lr_date'),
            'total'=>0,
            
        ];
        
        
        foreach($info['info'] as $k => $finance){
            $info['info'][$k]['state'] = (1 == $finance['state']) ? '支入' : '支出';
            $info['info'][$k]['lr_date'] = date("Y-m-d h:i",$finance['lr_date']);
            
            if(1 == $finance['state']){
                $info['total'] += $finance['money'];
            }
        } 
        
        
        $this->assign('title',$info['title']);
        $this->assign('info',$info['info']);
        $this->assign('total',$info['total']);
        $this->display('index');
    }
    
    
    
    
}

