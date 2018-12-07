<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>多集视频自动连续播放示例-ckplayer应用示例</title>
<meta name="keywords" content="flv播放器,f4v,mp4,hlv,rtmp播放器,网页视频播放器,ckplayer官网,视频流,播放器" />
<meta name="description" content="ckplayer(超酷网页视频播放器),支持http协议下的flv,f4v,mp4,支持rtmp视频流和rtmp视频回放，支持m3u8格式，是你做视频直播，视频点播的理想播放器 " />
<meta name="author" content="ckplayer,超酷网页视频播放器" />
<meta name="copyright" content="ckplayer,超酷网页视频播放器" />
<script type="text/javascript" src="http://www.ckplayer.com/static/js/jq1.9.1.js"></script>
<script type="text/javascript" src="http://www.ckplayer.com/static/js/help.js"></script>
<link href="http://www.ckplayer.com/static/css/example.css" rel="stylesheet" type="text/css">
<style type="text/css">
.vlist {
	height: 400px;
}

#a1 {
	height: 400px;
	width: 600px;
	float: left;
}
.mlist {
	width: 336px;
	float: left;
}
.mlist li {
	padding-top: 5px;
	height: 94px;
	width: 336px;
	border-bottom-width: 1px;
	border-bottom-style: dashed;
	border-bottom-color: #ACACAC;
	background-color: #F9F9F9;
}
.mlist li:hover {
	background-color: #F7F7F7;
}
.mimg {
	float: left;
	background-color: #F5F5F5;
	padding: 2px;
	border: 1px solid #878787;
	height: 80px;
	width: 80px;
}
.mright {
	float: left;
	padding-left: 10px;
	width: 234px;
	line-height: 20px;
	font-size: 12px;
}
.mright a {
	text-decoration: none;
	color: #06F;
}
.leftz {
	float: left;
	height: 400px;
	width: 610px;
}
.left {
	float: left;
	width: 600px;
	position: absolute;
	z-index: 10;
	height: 400px;
}
.yytf_1 {
	position: absolute;
	z-index: 100;
	height: 400px;
	width: 600px;
	background-color: #000;
}
.yytf_2 {
	position: absolute;
	z-index: 100;
	height: 280px;
	width: 336px;
	margin-top: 60px;
	margin-left: 132px;
}
#daojs {
	text-align: right;
	background-color: #000;
	padding-right: 20px;
	color: #FFF;
	padding-top: 20px;
	padding-bottom: 20px;
}
.baiduyytf {
	height: 280px;
	width: 336px;
	margin-right: auto;
	margin-left: auto;
}
</style>
</head>
<body>
<script type="text/javascript" src="http://www.ckplayer.com/static/js/laycode/laycode2.js"></script>
<div class="top">
	<div class="top_left"><a href="http://www.ckplayer.com/">ckplayer.com</a></div>
	<div class="top_tab"><a href="http://www.ckplayer.com/">首页</a>&nbsp;|&nbsp;<a href="/down/">下载</a>&nbsp;|&nbsp;<a href="http://www.ckplayer.com/manual/">帮助手册</a>&nbsp;|&nbsp;<a href="http://www.ckplayer.com/article/19.htm">应用示例</a>&nbsp;|&nbsp;<a href="http://bbs.ckplayer.com/forum.php">论坛</a></div>
</div>
<div class="c_title">多集视频自动连续播放示例</div>
<div class="vlist">
	<div class="leftz">
		<div class="left">
			<div id="yytf" class="yytf_1">
				<div id="daojs">请稍等，离广告结束还有<span id="djs" style="color:#FFDD00">15</span>秒</div>
				<div class="baiduyytf">
				    <script type="text/javascript">
							<!--
							google_ad_client = "ca-pub-6838659866081902";
							google_ad_slot = "3084174147";
							google_ad_width = 336;
							google_ad_height = 280;
							//-->
						</script>
					<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
				</div>
			</div>
			<div id="a1"></div>
		</div>
	</div>
	<div class="mlist">
		<ul>
			<li id="vli_0">
				<div class="mimg"><a href="javascript:jsnull();" onclick="playvideo(0)"><img src="images/1.jpg" width="80" height="80"></a></div>
				<div class="mright">
					<a href="javascript:jsnull();" onclick="playvideo(0)"><strong>霍比特人</strong></a><br />
					<a href="javascript:jsnull();" onclick="playvideo(0)" style="color:#424242">魔幻史诗经典《魔戒》三部曲前传系列之《霍比特人》</a>
				</div>
			</li>
			<li id="vli_1">
				<div class="mimg"><a href="javascript:jsnull();" onclick="playvideo(1)"><img src="images/2.jpg"></a></div>
				<div class="mright">
					<a href="javascript:jsnull();" onclick="playvideo(1)"><strong>海洋</strong></a><br />
					<a href="javascript:jsnull();" onclick="playvideo(1)" style="color:#424242">《海洋》聚焦于覆盖着地球表面的四分之三的"蓝色领土"。法国导演雅克·贝汉与雅克·克鲁佐德</a>
				</div>
			</li>
			<li id="vli_2">
				<div class="mimg"><a href="javascript:jsnull();" onclick="playvideo(2)"><img src="images/3.jpg"></a></div>
				<div class="mright">
					<a href="javascript:jsnull();" onclick="playvideo(2)"><strong>快乐的大脚（Happy Feet）</strong></a><br />
					<a href="javascript:jsnull();" onclick="playvideo(2)" style="color:#424242">讲述了一群企鹅的故事。玛宝是帝企鹅家族中的另类分子，经常受到排挤歧视</a>
				</div>
			</li>
			<li id="vli_3">
				<div class="mimg"><a href="javascript:jsnull();" onclick="playvideo(3)"><img src="images/4.jpg"></a></div>
				<div class="mright">
					<a href="javascript:jsnull();" onclick="playvideo(3)"><strong>超凡蜘蛛侠2</strong></a><br />
					<a href="javascript:jsnull();" onclick="playvideo(3)" style="color:#424242">改编自漫威超级英雄漫画，为《超凡蜘蛛侠》的续集，由马克·韦布执导</a>
				</div>
			</li>
		</ul>
	</div>
</div>
<script type="text/javascript" src="http://www.ckplayer.com/ckplayer/6.6/ckplayer.js"></script>
<script type="text/javascript">
	function loadedHandler(){
		if(CKobject.getObjectById('ckplayer_a1').getType()){//说明使用html5播放器
			CKobject.getObjectById('ckplayer_a1').addListener('play',playHandler);
			CKobject.getObjectById('ckplayer_a1').addListener('pause',pauseHandler);
		}
		else{
			CKobject.getObjectById('ckplayer_a1').addListener('play','playHandler');
			CKobject.getObjectById('ckplayer_a1').addListener('pause','pauseHandler');
		}
	}
	function playHandler(){
		CKobject._K_('yytf').style.display='none';
	}
	function pauseHandler(){
		CKobject._K_('yytf').style.display='block';
		CKobject._K_('yytf').className='yytf_2';
	}
	function playerstop(){
		CKobject._K_('yytf').style.display='block';
		CKobject._K_('yytf').className='yytf_1';
		CKobject._K_('daojs').style.display='block';
		CKobject._K_('djs').innerHTML=15;
		setTimeend();
		alert('播放结束，正在播放结束广告');
	}
	var nowD=0;//目前播放的视频的编号(在数组里的编号)
	var frontTime=false;//前置广告倒计时是否在运行中
	var frontHtime=false;//后置广告是否在进行中
	var videoarr = new Array();//新建一个数组来存flash端视频地址，添加方法就像下面一样
	videoarr.push('http://movie.ks.js.cn/flv/2012/02/6-3.flv');
	videoarr.push('http://movie.ks.js.cn/flv/2012/02/6-1.flv');
	videoarr.push('http://movie.ks.js.cn/flv/2011/11/8-1.flv');
	videoarr.push('http://movie.ks.js.cn/flv/2014/04/24-2.flv');
	var html5arr = new Array();//新建一个数组来保存HTML5端用到的视频地址，注意，因为本演示只有一种mp4文件，所以html5下所有用到的视频地址都是相同的，请见谅，另外，该数组是一个二维数组
	html5arr.push(['http://172.16.1.2:8080/video/1.mp4->video/mp4']);
	html5arr.push(['http://172.16.1.2:8080/video/2.mp4->video/mp4']);
	html5arr.push(['http://172.16.1.2:8080/video/3.mp4->video/mp4']);
	html5arr.push(['http://172.16.1.2:8080/video/4.mp4->video/mp4']);
	function playvideo(n){
		nowD=n;
		var flashvars={
			f:html5arr[n],
			c:0,
			p:2,
			e:0,
			loaded:'loadedHandler'
			};
		CKobject.embed('ckplayer.swf','a1','ckplayer_a1','600','400',false,flashvars,html5arr[n]);
		//强制前置广告显示
		if(frontHtime){//后置广告正在进行中
			if(nowD>0){
				nowD++
			}
			else{
				nowD=videoarr.length-1;
			}
			CKobject._K_('djs').innerHTML='0';//让其结束播放广告并且计算下一部要播放的编号
			return;
		}
		if(frontTime){//如果前置广告还在运行中，只需要改变倒计时即可
			CKobject._K_('djs').innerHTML='15';
		}
		else{
			CKobject._K_('yytf').style.display='block';
			CKobject._K_('yytf').className='yytf_1';
			CKobject._K_('daojs').style.display='block';
			CKobject._K_('djs').innerHTML=15;
			settime();
		}
		for(i=0;i<videoarr.length;i++){//这里是用来改变右边列表背景色
			if(i!=nowD){
				CKobject._K_('vli_'+i).style.backgroundColor='#FFFFFF';
			}
			else{
				CKobject._K_('vli_'+i).style.backgroundColor='#DAF2FF';
			}
		}
	}
	function settime(){//前置广告倒计时
		var nowT=parseInt(CKobject._K_('djs').innerHTML);
		if(nowT>0){
			frontTime=true;
			CKobject._K_('djs').innerHTML=nowT-1;
			setTimeout('settime()',1000)
		}
		else{
			frontTime=false;
			CKobject._K_('yytf').style.display='none';
			CKobject._K_('daojs').style.display='none';
			CKobject.getObjectById('ckplayer_a1').videoPlay();
		}
	}
	function setTimeend(){//后置广告倒计时
		var nowT=parseInt(CKobject._K_('djs').innerHTML);
		if(nowT>0){
			frontHtime=true;
			CKobject._K_('djs').innerHTML=nowT-1;
			setTimeout('setTimeend()',1000)
		}
		else{
			frontHtime=false;
			nowD++;
			if(nowD>=videoarr.length-1){
				nowD=0;
			}
			playvideo(nowD);
		}
	}
	playvideo(0);
</script>
<div class="yytf">
	<script type="text/javascript">
		/*示例详情页960-90*/
		var cpro_id = "u1837010";
	</script>
	<script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
</div>
<div class="explain_title">相关代码及说明</div>
<div class="exp">
原理：主要运用控制函数<a href="http://www.ckplayer.com/manual/#p_6_11_54" target="_blank">newAddress()</a>，同时设置flashvars里的e:0。在播放结束后会调用playerstop()函数，本示例中集成了播放前置广告的功能。如果只需要多集连播，需要把广告部分的代码去掉</div>
<div class="content"></div><span style='display:none;'><script src="http://s19.cnzz.com/stat.php?id=3514729&web_id=3514729&online=2" language="JavaScript"></script></span>

</body>
</html>
