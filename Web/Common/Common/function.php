<?php

/**
 * 整站共用函数库
 */

/**
 * 查找数组里是否有关键字，有返回1否则返回0
 * @param [] $arr 数组里是否有要查的关键字
 * @param String $k 要查的关键字
 * @return int 
 */
 function has_keyword($keywords,$k) {
    foreach ($keywords as $key) {
        if ($k == $key) {
            return 1;
        }
    }
    return 0;
}

/**
* 把数据里的实体字符转成html 
* @param type $data 取出的原始数据
* @param [] $keywords 要转成html的字段名称
* @return [] 返回转成html的数据
*/
function html_decode($data, $keywords = []) {
   if(!is_array($data)) return $data;
   foreach ($data as $key => $value) {
       if(is_array($value)){
           foreach ($value as $k => $v) {
                if (has_keyword($keywords,$k)) {
                    $data[$key][$k] = html_entity_decode($v);
                }
            }
       }else{
           if (has_keyword($keywords,$key)) {
                $data[$key] = html_entity_decode($value);
            }
       }
       
   }
   return $data;
}
/**
 * 递归
 * @param [] $data
 */
function repeat_data(&$data){
    foreach ($data as $key => $value) {
       if(is_array($value)){
           return repeat_data($value);
       }else{
           return $data;
       }
       
   }
}

/**
* 把数据里的实体字符转成html 
* @param type $data 取出的原始数据
* @param [] $keywords 要转成html的字段名称
* @return [] 返回转成html的数据
*/

function html_decode_($data, $keywords = []) {
    if(!is_array($data)) return $data;
    $arr=[];
    foreach ($data as $key => $value) {
       if(is_array($value)){
           $data[$key]=repeat_data($value,$keywords);
       }else{
           if (has_keyword($keywords,$key)) {
           $data[$key] = html_entity_decode($value);
           }
       }
       
   }
//   dump($arr);exit;
   return $data;
}
