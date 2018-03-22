<?php
namespace Common\Model;
use Think\Model;
class CommonModel extends Model{
    /**
     * 
     * @param [] $data
     */
    public function adds($data) {
        return $this->data($data)->add();
        
    }

    /**
     * 
     * @param （String | [] | Object） $where 筛选的条件
     * @return [] 对应查找的数据
     */
    public function find_data($where=null) {
        if($where){
            $data= $this->where($where)->find();
        }
        return $data;
    }

    
    /**
     * 
     * @param [] $data 要更新的数据
     * @param （String | [] | Object） $where 筛选的条件
     * @return int 注意：save方法的返回值是影响的记录数，如果返回false则表示更新出错，因此一定要用恒等来判断是否更新失败。
     */
    public function edit($data = null, $where = null) {
        if($data && $where ){
            return $this->where($where)->data($data)->save(); // 根据条件保存修改的数据
        }else{
            return 0;
        }
    }
    
        /**
     * 删除成功后返回删除的记录数
     * 0表示没有删除任何数据
     * -1表示SQL出错
     * @param （String | [] | Object） $where 筛选的条件
     */
    public function del($where=null) {
        $n =is_int((int)$where)? $this->delete($where) : $this->where($where)->delete();
        if($n){
            return $n;
        }else{
            if(0 === $n){
                return 0;
            }else{
                return -1;
            }
        }
    }
    
}