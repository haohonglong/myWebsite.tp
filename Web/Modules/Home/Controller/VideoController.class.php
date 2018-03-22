<?php
namespace Home\Controller;
use Think\Controller;

class VideoController extends Controller {

    private $video;

    public function __construct() {
        parent::__construct();
        $this->video = D('Video');
    }

    
   

    public function indexAction() {
        $data = M('Video')->select();
        $info = [
            'data' => html_decode($data, ['title', 'source']),
            'title' => '首页',
        ];
//        dump($info);exit;
        $this->assign('info', $info)->display('index');
    }

    /**
     * 
     */
    public function addAction() {
        if (IS_POST) {
            $info = array(
                "title" => htmlspecialchars(I('post.videoTitle')),
                "source" => htmlspecialchars(I('post.videoUrl')),
                "date" => I('post.videoDate') ? I('post.videoDate') : time()
            );

            $this->video->add($info);
        }
    }

    public function delAction() {
        $id = I('get.id');
        $this->video->del($id);
    }

    public function showeditAction() {
        
        $data = $this->video->find_data('id='.I('get.id'));
        $info = [
            'title' => '首页',
            'data' =>  html_decode($data, ['title', 'source']),
        ];
        $this->assign('info', $info)->display('edit');
    }

    public function editAction() {
        if (IS_POST) {
            $info = array(
                "title" => I('post.videoTitle'),
                "source" => I('post.videoUrl'),
                "vido_date" => I('post.videoDate') ? I('post.videoDate') : time()
            );
//            dump($info);exit;
            
            $re=$this->video->edit($info, 'id='.I('post.id'));
            if($re){
                echo "成功";
            }else{
                echo "失败";
                
            }
        }
    }

}
