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
<script src="js/jquery-1.11.2.min.js"></script>
<style type="text/css">
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
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div  style="height: 115px;padding: 30px 40px 10px 40px;border:solid 1px green;background-image: url('img/1.jpg');">
					<img alt="" src="img/home01.png"  style="margin-left: -550px"/>
				</div>
				<ul class="nav nav-pills" style="background-color: green">
					<li>
						 <a id="tohome" href="javascript:void(0)" style="font-size: 18px;padding: 12px 10px 12px 40px;color:#BCEE68;">首页&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						 <a href="home2.jsp" style="font-size: 18px;padding: 12px 10px 12px 10px;color:white;">农家院&nbsp;&nbsp;&nbsp;</a>
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
				<div class="carousel slide" id="myCarousel" data-ride="carousel" data-interval="3000">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<a href=""><img alt="" src="img/home02.jpg" style="height: 600px"/></a>
						</div>
						<div class="item">
							<a href=""><img alt="" src="img/home03.jpg" style="height: 600px" /></a>
						</div>
					</div> 
					<div style="position:absolute;bottom:370px;left:82%;z-index:10;padding-top:20px;padding-bottom:20px;background-color: black;width: 100px;height: 180px;color:#fff;">
						<div style="margin-top: -15px;margin-left: -35px;"><img alt="" src="img/site.png" style="width: 18px;height: 18px;">&nbsp;<label style="font-size: 10px">天水市</label></div>
						<img alt="" src="img/weather.png">
						<p id="text"></p>
						<label id="temperature" style="font-size: 40px;font:bold;margin-top: -10px" id=""></label><label style="font-size: 22px;font:bold;">℃</label><br>
						<label style="font-size: 12px;" >空气&nbsp;:&nbsp;</label><label id="quality" style="font-size: 12px;"></label>
					</div>
					<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
				 	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
				<div >
					<img alt="" src="img/home3.jpg" style="width: 1024px">
					<img alt="" src="img/home2.jpg" style="width: 1024px">
				</div>
			</div>
		</div>
	</div>
</center>
</body>

<script>
	$(function(){
		$(document).ready(function(){
			$.ajax({
				url:"/xnc/TestServlet",
				type:"post",
				dataType:"text",
			  	data:{"site":"CHGS080000"},
			  	success:function(data){
			  		var d=JSON.parse(data)
			  		var weather=d.weather[0];
			  		//alert(weather.city_name)
			  		var curweather=weather.now
			  		$("#text").html(curweather.text);
			  		$("#temperature").html(curweather.temperature);
			  		$("#quality").html(curweather.air_quality.city.quality)
			  	}
				
			})
		})
		$("tohome").click(function(){
			window.location.src="/xnc"
		})
	})
</script>
</html>