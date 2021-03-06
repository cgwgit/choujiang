<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {

		public function _initialize() {
        if ($_SESSION['uname'] == NULL) {
            $this->success('请先登陆', U('Admin/Manager/login'));
            exit();
        }
     } 

      //显示后台首页
	public function index(){
	   $this->display();
	}

	//显示欢迎页面
	public function welcome(){
	  $admin = M('loginrecord')->where(array('uid' => session('uid')))->order('uid desc')->select();
	  $this->assign('admin', $admin[1]);
	  $this->display();
	}

	//显示活动列表
	public function showList(){
		if($aid = I('get.aid')){
           $action = M('action')->find($aid);
           $this->assign('actioninfo', $action);
           $this->display('showOne');exit;
		}
		$model = M('action');
		$count = $model->count();
        $Page = new \Think\Page($count,10);
        $Page -> setConfig('prev','上一页');
		$Page -> setConfig('next','下一页');
		$Page -> setConfig('first','首页');
		$Page -> setConfig('last','末页');
		$Page -> lastSuffix = false;	//将末页从数字的显示方式切换成汉字提示
        $show = $Page->show();
        $list = $model->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$allmoney = $model->field('sum(summoney) as allmoney,count(*) as count')->select();
		$this->assign('allmoney', $allmoney);
		$this->assign('action', $list);
		$this->assign('page', $show);
		$this->display();
	}
		//添加活动
	public function addAction(){
		$id = I('get.id');
		if(IS_AJAX){
			$post = I('post.');
			!empty($post['articletitle']) ? $articletitle = trim($post['articletitle']) : $err = '请填写活动标题';
			!empty($post['abstract']) ? $abstract = trim($post['abstract']) : $err = '请填写活动内容';
            !empty($post['articlesort']) ? $articlesort = trim($post['articlesort']) : $err = '请选择最大参与人数';
            if($err){
            	echo json_encode(array('code' => 0,'msg' => $err));exit;
            }
            !empty($post['startTime']) ? $stime = strtotime($post['startTime']) : $stime = time();
            !empty($post['endTime']) ? $etime = strtotime($post['endTime']) : $etime = time();
			$data = array(
                    'title' => $articletitle,
                    'content' => $abstract,
                    'money' => $post['articletype'],
                    'stime' => $stime,
                    'etime' => $etime,
                    'dizhi' => rand(10,10000),
                    'maxperson' => $articlesort,
                    'code' => $post['articlecolumn']
				);
			  $this->logo_deal(&$data);
			  $rst = M('action')->add($data);
			  if($rst){
			  	echo json_encode(array('code' => 1,'msg' => '活动添加成功','id'=>$id));exit;
			}else{
				echo json_encode(array('code' => 0,'msg' => '添加失败','id' => $id));exit;
			}
		}else{
			$this->assign('id',$id);
			$this->display();
		}
		
	}
	//编辑活动
	public function editAction(){
		$aid = I('get.aid');
		if(IS_POST){
			$post = I('post.');
			!empty($post['articletitle']) ? $articletitle = trim($post['articletitle']) : $err = '请填写活动标题';
			!empty($post['abstract']) ? $abstract = trim($post['abstract']) : $err = '请填写活动内容';
            !empty($post['articlesort']) ? $articlesort = trim($post['articlesort']) : $err = '请选择最大参与人数';
            if($err){
            	echo json_encode(array('code' => 0,'msg' => $err));exit;
            }
            !empty($post['startTime']) ? $stime = strtotime($post['startTime']) : $stime = time();
            !empty($post['endTime']) ? $etime = strtotime($post['endTime']) : $etime = time();
			$data = array(
				    'id' => $aid,
                    'title' => $post['articletitle'],
                    'content' => $post['abstract'],
                    'money' => $post['articletype'],
                    'stime' => $stime,
                    'etime' => $etime,
                    'maxperson' => $post['articlesort'],
                    'code' => $post['articlecolumn'],
				);
			$this->logo_deal(&$data,$post);
			$rst = M('action')->save($data);
			if($rst){
				echo json_encode(array('code' => 1,'msg' => '活动编辑成功'));exit;
			}else{
				echo json_encode(array('code' => 1,'msg' => '活动编辑成功'));exit;
			}
		}else{
			$actioninfo = M('action')->where(array('id' => $aid))->find();
			$this->assign('actioninfo', $actioninfo);
			$this->display();
		}
		
	}
	//开启活动
	public function startAction(){
		   $aid = $_GET['aid'];
           $actions = M('action')->select();
           // foreach ($actions as $key => $value) {
           // 	 if($value['status'] == 1){
           // 	 	$data = array(
           //        'code' => 0,
           //        'msg' => '请先关闭正在开启的活动'
           // 	 		);
           // 	 	echo json_encode($data);exit;
           // 	 }
           // }
           $ac = array(
               'id' => $aid,
               'status' => '1'
           	);
           $rst = M('action')->save($ac);
           if($rst){
           	echo json_encode(array('code' => 1));exit;
           }
	}
	//关闭活动
	public function endAction(){
		$aid = I('get.aid');
		$rst = M('action')->where(array('id' => $aid, 'status' => '1'))->find();
		if($rst){
			$data = array(
                  'id' => $aid,
                  'status' => '0'
				);
			$rst = M('action')->save($data);
			if($rst){
				echo json_encode(array('code' => 1));exit;
			}else{
				echo json_encode(array('code' => 0));exit;
			}
		}
	}
	//删除活动
	public function delAction(){
		$aid = I('get.aid');
		if(is_numeric($aid)){
			//删除单个活动
			M('cinfo')->where(array('aid' => $aid))->delete();
			$logo_info = M('action')->where(array('id' => $aid))->find();
		    unlink($logo_info['pic']);
	        unlink($logo_info['smallpic']);
		}else{
			//删除多个活动
			$where['aid'] = array('in', $aid);
			M('cinfo')->where($where)->delete();
			$wh['id'] = array('in', $aid); 
			$logo_infos = M('action')->where($wh)->select();
			foreach ($logo_infos as $key => $value) {
				unlink($value['pic']);
	            unlink($value['smallpic']);
			}
		}
		$rst = M('action')->delete($aid);
		if($rst){
			echo json_encode(array('code' => 1));exit;
		}
	}

	//参数：$data是引用传递,在内部对其进行修改，在外边仍然可以访问到
    private function logo_deal(&$data,$post){
        //判断有进行正常的附加上传
        if($_FILES['pic']['error']===0){
            //判断是否是“更新”商品的logo处理
            //并删除旧的logo图片
            if(!empty($data['aid'])){
                $logo_info = D('action')->
                    field('pic,smallpic')->
                    find($data['aid']);
                unlink($logo_info['pic']);
                unlink($logo_info['smallpic']);
            }

            //A.大图logo处理
            //tp框架现成功能类实现附件上传(Think\Upload.class.php)
            //保存附件图片的根目录
            $cfg = array(
                'rootPath'      =>  './Public/Upload/', //保存根路径
                'exts'          =>  array('jpg','jpeg','png','gif'), //允许上传的文件后缀
            );
            $up = new \Think\Upload($cfg);

            //通过uploadOne的返回值可以获得附件上传到服务器的情况信息
            //例如：存储目录、存储名字等
            $z = $up -> uploadOne($_FILES['pic']);

            //整理附件的路径 和 名字信息，存储到数据库指定字段里边
            $biglogoname = $up->rootPath.$z['savepath'].$z['savename'];
            $data['pic'] = $biglogoname;//存储到数据库
            
            //B.缩略图logo处理，具体通过\Think\Image.class.php实现
            $im = new \Think\Image();
            $im -> open($biglogoname); //找到大图
            $im -> thumb(750,440,1);//制作缩略图
            //存储制作好的缩略图(事先声明好缩略图的路径名)
            //./Public/Upload/2016-03-29/56f9e9c66664f.jpg
            //./Public/Upload/2016-03-29/s_56f9e9c66664f.jpg
            $smalllogoname = $up->rootPath.$z['savepath']."s_".$z['savename'];
            $im -> save($smalllogoname);
            $data['smallpic'] = $smalllogoname; //存储到数据库
        }else{
        	if($post){
        		$data['smallpic'] = $post['smallpic'];
        	    $data['pic'] = $post['pic'];
        	}else{
        		echo json_encode(array('code' => 0,'msg' => '请添加活动图片'));exit;
        	}
        	
        }
    }

}