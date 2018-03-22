<?php
namespace Home\Controller;
use Think\Controller;
class FinanceController extends Controller {
    private $finance;
    
     public function __construct() {
        parent::__construct();
        $this->finance = D('Finance');
        
    }
    
    public function addAction() {
        if (IS_POST) {
            $info = array(
                "uid" => I('post.uid'),
                "date" => I('post.vidoDate') ? I('post.vidoDate') : time()
            );

            $this->finance->adds($info);
        }
    }
    
    
}

