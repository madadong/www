<?php


namespace app\common\model;


use think\Model;

class City extends Model
{
    public function getNormalCityByParentId($parent_id =0)
    {
        $data = [
            'status' => 1,
            'parent_id' => $parent_id,

        ];
        $order = [
            'id' => 'desc',
        ];
        return $this->where($data)->order($order)->select();
    }
}