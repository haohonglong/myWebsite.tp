<?php
namespace Home\Model;
use Common\Model\CommonModel;
class AddressModel extends CommonModel{
    protected $trueTableName="video_addres";
    

    
    /**
     * 地址信息关联对于的类别
     * @return []
     */
    public function getAll() {
        $arr=[];
        $sql = 'SELECT t1.id,t1.name,
                t2.id AS addrId,t2.name AS addrName,t2.url,t2.info,t2.date,t2.sortsId
                FROM sorts AS t1
                LEFT JOIN video_addres AS t2 ON t1.id=t2.sortsId';
        $result= $this->query($sql);
//        dump($result);exit;
        foreach ($result as $key => $value) {
            $arr[$value['id']]['sortId']=$value['id'];
            $arr[$value['id']]['sortName']=$value['name'];
            $arr[$value['id']]['sorts'][$key]['id']=$value['addrid'];
            $arr[$value['id']]['sorts'][$key]['urlTitle']=$value['addrname'];
            $arr[$value['id']]['sorts'][$key]['url']=$value['url'];
            $arr[$value['id']]['sorts'][$key]['info']=$value['info'];
            $arr[$value['id']]['sorts'][$key]['date']=$value['date'];
            $arr[$value['id']]['sorts'][$key]['sortsId']=$value['sortsid'];
            $arr[$value['id']]['sorts']=array_values($arr[$value['id']]['sorts']);
        }
        return $arr;
    }

}
