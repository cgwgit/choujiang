<?php
//曹国伟
//2017年2月22日16:51:52
namespace Admin\Controller;
use Think\Controller;
class ManagerController extends Controller {
//登录
  public function login(){
    if(IS_AJAX){
           $post = I('post.');
           !empty($post['name']) ? $name = trim($post['name']) : $err = '请填写正确的用户名';
           !empty($post['pwd']) ? $pwd = trim($post['pwd']) : $err = '请填写正确的密码';
           if($err){
            echo json_encode(array('code' =>0,'msg' => $err));exit;
           }
           $data = array(
                 'name' => $name,
                 'pwd' => $pwd
            );
           $rst = M('admin')->where($data)->find();
           if($rst){
            $r = M('loginrecord')->where(array('uid' => $rst['id']))->find();
            $record = array(
                  'uid' => $rst['id'],
                  'logintime' => time(),
                  'num' => $r['num']+1,
                  'ip' => $_SERVER["REMOTE_ADDR"]
              );
            M('loginrecord')->add($record);
            session('uid', $rst['id']);
            session('uname', $rst['name']);
            echo json_encode(array('code' =>1,'msg' => '登录成功'));exit;
           }else{
            echo json_encode(array('code' =>0,'msg' => '用户名或密码不正确'));exit;
           }
    }else{
      $this->display();
    }
  }
	//退出按钮
	public function loginout(){
    session(null);
		$this->display('login');
	}
}