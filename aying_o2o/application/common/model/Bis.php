<?php


namespace app\common\model;


use think\Model;

class Bis extends BaseModel
{
        public function  getBisByStatus($status =0){
            $data = [
                'status' => $status,

            ];
            $order = [
                'id' => 'desc',
            ];
            return $this->where($data)->order($order)->paginate(1);
           // return $this->order($order)->paginate(1);
        }
}