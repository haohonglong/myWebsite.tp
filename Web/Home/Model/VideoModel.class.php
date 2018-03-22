<?php

/**
 * This is the model class for table "video".
 *
 * The followings are the available columns in table 'video':
 * @property integer $id
 * @property string $title
 * @property string $source
 * @property string $vido_date
 */
namespace Home\Model;
use Common\Model\CommonModel;
class VideoModel extends CommonModel
{
    protected $trueTableName="video";
    protected $autoCheckFields =false;
    
    
    
}