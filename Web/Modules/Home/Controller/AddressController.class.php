<?php
namespace Home\Controller;
class AddressController extends \Think\Controller {

    private $address;

    public function __construct() {
        parent::__construct();
        $this->address = D('Address');

        
    }

    public function indexAction() {
        $arr = $this->address->getAll();
        $info=[
            'data'=>$arr,
            'title'=>'首页',
        ];
//        dump($info);exit;
        $this->assign('info',$info)->display('index');
    }

    /**
     * 
     */
    public function addAction() {
        if (IS_POST) {
            $content=I('post.info');
            $sortsID=I('post.sortsID');
            $info = array(
                "name" => I('post.vidoTitle'),
                "url" => htmlspecialchars(str_replace('\\', '/',I('post.vidoUrl'))),
                "info" => !empty($content) ? $content : "暂无备注信息！",
                "sortsId" => !empty($sortsID) ? $sortsID : 0,
                "date" => I('post.vidoDate') ? I('post.vidoDate') : time()
            );

            $this->address->adds($info);
        }
    }

    public function delAction() {
        $id=I('get.id');
        $this->address->del($id);
    }

    public function showeditAction() {
        $arr = $this->address->find_data('id='.I('get.id'));
        $info=[
            'title'=>'首页',
            'data'=>$arr,
            'sort'=>M('Sorts')->select(),
        ];
//        dump($info);exit;
        $this->assign('info',$info)->display('edit');
    }
    /**
     * 
     */
    public function editAction(){
        if (IS_POST) {
            $content=I('post.info');
            $sortsID=I('post.sortsID');
            $info = array(
                "name" => I('post.vidoTitle'),
                "url" => htmlspecialchars(str_replace('\\', '/',I('post.vidoUrl'))),
                "info" => !empty($content) ? $content : "暂无备注信息！",
                "sortsId" => !empty($sortsID) ? $sortsID : 0,
                "date" => I('post.vidoDate') ? I('post.vidoDate') : time()
            );
            $re=$this->address->edit($info, 'id='.I('post.id'));
            if($re){
                echo "成功";
            }else{
                echo "失败";
                
            }
        }
    }

    

}
