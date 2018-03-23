<?php

return array(
    'ACTION_SUFFIX' => 'Action', // 操作方法后缀
    //数据库
    'DB_TYPE' => 'mysql', // 数据库类型
    'DB_HOST' => '127.0.0.1', // 服务器地址
    'DB_NAME' => 'management_of_system', // 数据库名
    'DB_USER' => 'root', // 用户名
    'DB_PWD' => '', // 密码
    'DB_PORT' => 3306, // 端口
//    'DB_PREFIX' => 'tbl_', // 数据库表前缀 
    'DB_CHARSET' => 'utf8', // 字符集
    'DB_DEBUG' => TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
    
    

    //独立分组
//    'APP_GROUP_LIST'		=>	'Home,Admin',
//    'DEFAULT_APP'               =>	'Home',
//    'APP_GROUP_MODE'		=>	1,
    'APP_GROUP_LIST'=>'Home,Admin',//开启分组
    'DEFAULT_GROUP'=>'Home',//默认分组
    
    
 
    

);
