<?php
namespace Home\Controller;
use Think\Controller;
class WxPayController extends Controller {
//微信异步通知回调
	public function wxnotify(){
		$xml = $GLOBALS['HTTP_RAW_POST_DATA'];
		$array = $this->xmlToArray($xml);
        if($array['result_code'] == 'SUCCESS'){
        	 echo "success";exit;
        }

	}
		//将XML转为array
    public function xmlToArray($xml)
    {    
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $values = json_decode(json_encode(simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA)), true);        
        return $values;
    }
}