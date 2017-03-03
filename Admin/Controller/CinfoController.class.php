<?php
namespace Admin\Controller;
use Think\Controller;
class CinfoController extends Controller {
	public function _initialize() {
        if ($_SESSION['uname'] == NULL) {
            $this->success('请先登陆', U('Admin/Manager/login'));
            exit();
        }
     } 
      //显示参与人员列表
	public function showList(){
		$aid = I('get.aid');
		$cinfos = M('cinfo')->join('tp_action on tp_cinfo.aid=tp_action.id')->where(array('aid' => $aid))->select();
		$this->assign('cinfos', $cinfos);
		$this->display();
	}
	//删除参与人员信息
	public function delCinfo(){
        $aid = I('get.aid');
        $cid = I('get.cid');
        $rst = M('cinfo')->delete($cid);
        if($rst){
		    $this->redirect('showList',array('aid' => $aid));exit;
        }

	}
}