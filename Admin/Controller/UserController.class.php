<?php
namespace Admin\Controller;
use Think\Controller;
class UserController extends Controller {
		public function _initialize() {
        if ($_SESSION['uname'] == NULL) {
            $this->success('请先登陆', U('Admin/Manager/login'));
            exit();
        }
     } 
	//用户显示列表
	public function showList(){
		$admins = M('admin')->select();
		$this->assign('admin', $admins);
		$this->display();
	}
	//添加用户
	public function addUser(){
		if(IS_AJAX){
          $rs = M('admin')->where(array('name' => I('post.adminName')))->find();
          if($rs){
            echo json_encode(array('code' =>0,'msg' =>'用户名已存在'));exit;
          }
          $data = array(
               'name' => I('post.adminName'),
               'pwd' => I('post.password'),
               'addtime' => time()
          	);
          $rst = M('admin')->add($data);
          if($rst){
            $data = array(
                  'code' => 1,
                  'msg' => '添加成功'
                );
          	echo json_encode($data);exit;
          }else{
          	echo json_encode(array('code' =>0,'msg' =>'添加失败'));exit;
          }
		}else{
			$this->display();
		}
	}
}