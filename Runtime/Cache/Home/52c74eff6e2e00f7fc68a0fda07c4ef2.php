<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>活动界面</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0">
		<meta content="yes" name="apple-mobile-web-app-capable">
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<meta content="telephone=no" name="format-detection">
		<link rel="stylesheet" type="text/css" href="/Public/Home/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Home/css/public.css" />

		<link rel="stylesheet" type="text/css" href="/Public/Home/layer_mobile/need/layer.css" />
	</head>

	<body style="background: #e03d3e;">
		<section class="section">
			<div class="activity-main">
				<div class="activity-header">
					<!-- <img src="/Public/Home/images/main_02.jpg" width="100%" /> -->
					 <img src="<?php echo substr($action['pic'],1) ?>" width="100%" />
				</div>
				<div class="activity-body">
					<div class="aTitle">
						<?php echo $action['title'] ?>
					</div>
				</div>
				<div class="activity-footer">
					<div class="activity-des">
						活动说明
					</div>
					<div class="activity-content">
					    <?php echo $action['content'] ?>
					</div>
					<?php if($ycan == 1): ?><input type="button" onclick="ypay(1)" value="支付" class="btn-pay" />
					<?php elseif($maxperson == 2): ?>
					<input type="button" onclick="ypay(2)" value="支付" class="btn-pay" />
					<?php else: ?>
					<input type="button" onclick="callpay()" value="支付" class="btn-pay" /><?php endif; ?>
				</div>
			</div>
		</section>
		<script src="/Public/Home/layer_mobile/layer.js"></script>
		<script src="/Public/Home/js/jquery.min.js"></script>
		<script type="text/javascript">
			function ypay(data){
				if(data == 1){
					layer.open({
					content: '该活动一个用户只能参与一次',
					skin: 'msg',
					time: 2 //2秒后自动关闭
				   });
				}else if(data == 2){
					layer.open({
					content: '该活动已结束',
					skin: 'msg',
					time: 2 //2秒后自动关闭
				});
				
	        }
	    }
		</script>
  <script type="text/javascript">
       //调用微信JS api 支付
	function jsApiCall()
	{
		WeixinJSBridge.invoke(
			'getBrandWCPayRequest',
			<?php echo $jsApiParameters; ?>,
			function(res){
				//WeixinJSBridge.log(res.err_msg);
				//alert(res.err_code+ ' | ' + res.err_desc +' | ' +res.err_msg);
				  if(res.err_msg == "get_brand_wcpay_request:ok" ) {
		                $.ajax({
		                	url: '/index.php/Home/Index/saveinfo',
		                	type: 'post',
		                	dataType: 'json',
		                	success:function(data){
                                    if(data.code==1){
                                    	window.location.href="/index.php/Home/Index/number";
                                    }
		                	}
		                });
		              }else if(res.err_msg == "get_brand_wcpay_request:cancel" ){
		              	  layer.open({
							content: '取消支付',
							skin: 'msg',
							time: 2 //2秒后自动关闭
					       });	
		              }else{
		              	layer.open({
							content: '支付失败',
							skin: 'msg',
							time: 2 //2秒后自动关闭
					       });
		              }
			}
		);
	}

	function callpay()
	{
		if (typeof WeixinJSBridge == "undefined"){
		    if( document.addEventListener ){
		        document.addEventListener('WeixinJSBridgeReady', jsApiCall, false);
		    }else if (document.attachEvent){
		        document.attachEvent('WeixinJSBridgeReady', jsApiCall); 
		        document.attachEvent('onWeixinJSBridgeReady', jsApiCall);
		    }
		}else{
		    jsApiCall();
		}
	}
</script>
	</body>

</html>