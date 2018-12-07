<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>the5fire m3u8 test</title>
</head>
<body>
<div id="a1"></div>

<script type="text/javascript" src="ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">
	var PlayIndex = 0;	
	var listStr = "http://172.16.1.2:8080/dsjsds/video/1.mp4;http://172.16.1.2:8080/dsjsds/video/2.mp4;http://172.16.1.2:8080/dsjsds/video/3.mp4";
	var PlayList = listStr.split(';');
    var CurrentPlay = PlayList[PlayIndex]; 
    
	var flashvars={
	//	f:CurrentPlay,			
		f:'rtmp://thic.cn/dsjsds/IPC_2',
		//f:'http://172.16.1.2:8080/dsjsds/video/test/1.mp4',
		//f:'m3u8.swf',
		//a:'http://172.16.1.16/live/stream.m3u8',
		//a:'http://172.16.1.2:8080/dsjsds/video/default.m3u8',
		//s:0,//调用方式，0=普通方法（f=视频地址），1=网址形式,2=xml形式，3=swf形式(s>0时f=网址，配合a来完成对地址的组装)
		c:0, //调用 ckplayer.js 配置播放器
		p:1
		//lv:1
		};
	var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
	CKobject.embedSWF('ckplayer.swf','a1','ckplayer_a1','600','400',flashvars,params);
	/*
	CKobject.embedSWF(播放器路径,容器id,播放器id/name,播放器宽,播放器高,flashvars的值,其它定义也可省略);
	下面三行是调用html5播放器用到的
	*/
	var video=['http://123.56.26.187:8090/dsjsds/IPC2.m3u8'];
	var support=['iPad','iPhone','ios','android+false','msie10+false'];
	CKobject.embedHTML5('a1','ckplayer_a1',600,400,video,flashvars,support);
	
	 PlayIndex++;
     if (PlayIndex >= PlayList.length) {
         PlayIndex = 0;
     }
     
	function closelights(){//关灯
		alert(' 本演示不支持开关灯');
	}
	function openlights(){//开灯
		alert(' 本演示不支持开关灯');
	}
  </script>
</body>
</html>