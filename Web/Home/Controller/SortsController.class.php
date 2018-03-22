<?php
namespace Home\Controller;
use Think\Controller;
class SortsController extends Controller {
    private $sorts;
    
     public function __construct() {
        parent::__construct();
        $this->sorts = D('Sorts');
        
    }
    
    public function addAction() {
        if (IS_POST) {
            $info=array(
                    "name" => I('post.name'),
                    "date" => I('post.date') ? I('post.date') : date("Y-m-d")
            );

            $this->sorts->add($info);
        }
    }
    
}
