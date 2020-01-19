<?php


namespace app\admin\controller;


use think\Controller;

class Index extends Controller
{
    public function test(){
        \Map::getLngLat('北京昌平沙河地铁');
    }
    public function map(){

       return \Map::staticimage('北京昌平沙河地铁');
    }
    public function index()
    {
        return $this->fetch();
    }

    public function welcome()
    {
        \phpmailer\Email::send('2037557971@qq.com','aying','sucess测试');
        return 'su';

        //return $this ->fetch();
    }

}