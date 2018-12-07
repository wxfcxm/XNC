<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>农家乐旅游</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="ckplayer/ckplayer.js"></script>
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/HashMap.js"></script>
<script src="js/highstock.js"></script>

<script src="My97DatePicker/WdatePicker.js"></script>
<script src="js/getdata.js"></script>
<style type="text/css">
	.cladiv div,.navleft,.modeldata{cursor: pointer;}
	li a:HOVER {
		background-color: green !important;
		color:blue !important
	}
	ul li a{height:42px}
</style>
</head>
<body>
<center>
	<div class="" style="width: 1024px;">
		<div class="">
			<div class="">
				<div style="height: 115px;padding: 30px 10px 10px 40px;border:solid 1px green;background-image: url('img/1.jpg');">
					<img alt="" src="img/home01.png" style="margin-left: -550px"/>
				</div>
				<ul class="nav nav-pills" style="background-color: green">
					<li>
						 <a  id="tohome" href="javascript:void(0)" style="font-size: 18px;padding: 12px 10px 12px 40px;color:white;">首页&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						 <a href="home2.jsp" style="font-size: 18px;padding: 12px 10px 12px 10px;color:#BCEE68;">农家院&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						 <a href="javascript:void(0)" style="font-size: 18px;padding: 12px 10px 12px 10px;color:white;">景观娱乐&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						 <a href="javascript:void(0)" style="font-size: 18px;padding: 12px 10px 12px 10px;color:white;">周边环境&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						 <a href="javascript:void(0)" style="font-size: 18px;padding: 12px 10px 12px 10px;color:white;">农家特产&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li class="pull-right">
						 <a href="javascript:void(0)" style="font-size: 14px;padding: 12px 10px 12px 10px;color:white;">加入收藏</a>
					</li>
					<li class="pull-right">
						 <a href="javascript:void(0)" style="font-size: 14px;padding: 12px 10px 12px 10px;color:white;">设为首页&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li class="pull-right">
						 <a href="javascript:void(0)" style="font-size: 14px;padding: 12px 10px 12px 10px;color:white;">留言咨询&nbsp;&nbsp;&nbsp;</a>
					</li>
				</ul>
				<div style="border:solid 1px green;height: 1400px;">
					<br>
					<p style="margin-left: -650px;font-size: 18px;color:green">◎&nbsp;农家院预定 >> 村落平面图  >> 房间平面图</p>
					<img alt="" src="img/thi01.jpg" style="width: 70%;margin-left: -150px">
					<img alt="" src="img/thi4.jpg" style="width: 1000px;" >
					<div>
						<div style="margin-left: -683px;margin-top: -1070px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_SW_WD" style="color:#0cd80c;margin-top: -30px;font-size: 13px">20℃</p></div>
						<div style="margin-left: -430px;margin-top: -20px"><img src="img/thi02.png"><p class="data RS_WJ_CS_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<div style="margin-left: -300px;margin-top: -50px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<div class="modeldata smallhouse" data-toggle="modal" data-target="#myModal" style="margin-left: 60px;margin-top: -30px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_KZG_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<br>
						<div style="margin-left: -683px;margin-top: 85px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_SW_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<div style="margin-left: -430px;margin-top: 20px"><img src="img/thi02.png"><p class="data RS_WJ_CS_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<div style="margin-left: -150px;margin-top: -120px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_SW_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>
						<div class="modeldata smallhouse1" data-toggle="modal" data-target="#myModal" style="margin-left: 300px;margin-top: 70px"><img src="img/thi02.png"><p class="data KT_WJ_PDJ_KZG_WD" style="color:#0cd80c;margin-top: -30px;font-size: 14px">20℃</p></div>

						<div id="IPC_2" style="margin-top: -350px;margin-left: 760px;width: 250px;height: 200px">
							
						</div>
						<div style="margin-left: 780px;margin-top: -10px">
							<p>宅院外景实时视频（示例）</p>
							<p style="margin-top: -10px">（此处借用智慧楼宇实时视频）</p>
						</div>
						<div style="margin-left: 780px;margin-top: 18px">
							<img alt="" src="img/zoo01.jpg" style="width: 200px;"><br>
							<p style="margin-top: 5px;margin-left: -10px">（家禽饲养区等都可通过实时视频查看）</p>
						</div>
						<div style="margin-left: 400px;margin-top: -420px">
							<img alt="" src="img/WDmark.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</center>
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="width: 750px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					房间信息(示例)
				</h4>
			</div>
			<div class="modal-body" >
				<table border="0">
					<tr>
						<td width="23%">
							<div class="navleft img-thumbnail" style="width: 127px;height: 98px;border: solid 1px red; padding: 28px 28px 28px 28px;font-size: 16px">房间信息<br>历史曲线</div>
							<img alt="" src="img/small07.jpg" class="navleft img-thumbnail" style="margin-top: 15px"><br>
							<img alt="" src="img/small08.jpg"  class="navleft img-thumbnail"style="margin-top: 15px"><br>
							<img alt="" src="img/small09.jpg" class="navleft img-thumbnail" style="margin-top: 15px"><br>
						</td>
						<td style="border-left: solid 1px #CCCCCC;"></td>
						<td id="bighome" style="display: none">
							<img alt="" src="" style="margin-left: 20px" width="550px" height="400px">
						</td>
						<td id="dataanalyze">
							<div style="padding-left: 50px">
							    <form class="bs-example bs-example-form" role="form">
							        <div class="input-group" style="width: 180px;float: left;">
							            <input type="text" class="form-control" id='startTime' name='startTime' onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endTime\')}'||'%y-%M-%d'})" style="width:160px;height:34px;" placeholder="开始时间" readonly>
							            <span class="input-group-addon" ><i class="glyphicon glyphicon-calendar"></i></span>
							        </div>
							        <div class="input-group" style="width: 180px;float: left;margin-left: 10px">
							            <input type="text" class="form-control" id='endTime' name='endTime' onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startTime\')}',maxDate:'%y-%M-%d'})"  style="width:160px;height:34px;" placeholder="结束时间" readonly/>
							            <span class="input-group-addon" ><i class="glyphicon glyphicon-calendar"></i></span>
						            </div>
								    <button type="button" class="btn btn-default curve" style="margin-left: 10px" >搜索</button>
							    </form>
							 </div>
							<div id="container" style="margin-left: 20px;height: 350px"></div>
							<div style="border-top: solid 1px #CCCCCC;"></div>
							<div class="btn-group" style="margin-left: 120px;margin-top: 1px">
								<button type="button" id="KT_WJ_PDJ_KZG_WD" class="analyze active btn btn-primary "> 温度</button>
								<button type="button" id="KT_WJ_PDJ_SD" class="analyze btn btn-primary" > 湿度</button>
								<button type="button" id="" class="analyze btn btn-primary" disabled="disabled"> CO2</button>
								<button type="button" id="" class="analyze btn btn-primary" disabled="disabled"> PM2.5</button>
								<button type="button" id="RS_WJ_CS_WD" class="analyze btn btn-primary" > 热水温度</button>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<!-- <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">
					关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div> -->
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>

<script>
	var dataurl="ws://123.56.26.187/jsds/jsdswebsocket/analyzedata"
	var fullUrl="ws://123.56.26.187/jsds/jsdswebsocket/heart";
	var ipcName="IPC_2";
	var defaulrWD = "KT_WJ_PDJ_KZG_WD";
	$(function(){
		
		
		
		//获取数据
		var jsdsurl="ws://123.56.26.187/jsds/jsdswebsocket/data"
		var enameArray=new Array();
		enameArray[0]="KT_WJ_PDJ_SW_WD";
		enameArray[1]="KT_WJ_PDJ_WD";
		enameArray[2]="RS_WJ_CS_WD";
		enameArray[3]="KT_WJ_PDJ_SW_WD";
		enameArray[4]="KT_WJ_PDJ_KZG_WD";
		$().getdata(jsdsurl,enameArray)
		 
		var localName = "JSDS"
		var serverName ="U2";
		
		var url="http://123.56.26.187/jsds/getVideo"
		$().getVideo(url,localName,serverName,ipcName)
		
		
		
	})
</script>
<script src="js/dataAnalyze.js"></script>
</html>