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
        $list=[];
        $sql = 'SELECT t1.id,t1.name,
                t2.id AS addrId,t2.name AS addrName,t2.url,t2.info,t2.date,t2.sortsId
                FROM sorts AS t1
                LEFT JOIN video_addres AS t2 ON t1.id=t2.sortsId';
        $result= $this->query($sql);
        foreach ($result as $key => $item){
            if(!isset($list[$item['id']])){
                $list[$item['id']] = [
                    'sortId'=>$item['id'],
                    'sortName'=>$item['name'],
                    'sorts'=>[],
                ];
            }
            $list[$item['id']]['sorts'][] = [
                'id'=>$item['addrid'],
                'urlTitle'=>$item['addrname'],
                'url'=>$item['url'],
                'info'=>$item['info'],
                'date'=>$item['date'],
            ];

        }
        return $list;
    }

}
