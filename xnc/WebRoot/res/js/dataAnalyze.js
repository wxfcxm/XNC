	var dataws=null;
	
//	var dataurl="ws://172.16.1.2:8080/dsjsds/dsjsdswebsocket/analyzedata"
		
		
$(function(){
	//$(".closetitle").click(function(){$(this).parent().parent().hide()})
	$(document).on("click","[class='closetitle']",function(){
		$(this).parent().parent().remove();
		var li=$(this).prev().attr("class");
		$("#"+li).removeClass("active");
		
		var rem=$(this).parent().next().children(".active").children().html();
		removeSerie(rem)
	})
	dataCon();
	var ser;
	var j;
	var rs=0;
	var msgjson;
	var jsonz=[];
	var jsonMap=new HashMap();
	var serMap=new HashMap();
	var flag;
	function　dataCon(){}
	var chart = null;
	$(".modeldata").click(function(){
		analyzeDataConnect(defaulrWD,"温度","","",1);
	})
	$(document).ready(function(){
		

		if ("WebSocket" in window) {
			dataws = new WebSocket(dataurl);
		} else if ("MozWebSocket" in window) {
			dataws = new MozWebSocket(dataurl);
		} else {
			alert("浏览器不支持WebSocket");
		}
		dataws.onopen = function() {
			setInterval(function(){
				var json={"request":"heart"};
				sendMessage(3, 0, json, dataws);
			}, 5000)
			
		}
		dataws.onerror=function(){
			
		}
		dataws.onclose=function(){
			dataws=null;
		}
		dataws.onmessage=function(msg){
			if (typeof(msg.data) == "string") {
				msgjson = JSON.parse(msg.data);
				var time;
				var value;
				var ename=msgjson.member.dataEname;
				jsonz=jsonMap.get(ename);
				if(jsonz==null){
					jsonz=[];
				}
				j=jsonz.length;
				ser=serMap.get(ename);
				if(msgjson.member.member.length==0){
					if(j==0){
						jsonz[j]=[];
						j++;
						chart.hideLoading();
						if($("#myModal").is(":visible")){
							alert("暂无数据");
						}
					}
					return;
				}
				if(msgjson.member.type=="select" && j!=0){
					return;
				}
				
				 for(var i=0;i<msgjson.member.member.length;i++){
					 if(msgjson.member.type=="request"){
						 time=msgjson.member.member[i].time;
						 value=msgjson.member.member[i].value;
					 }else{
						 time=msgjson.member.member[i][0];
						 value=msgjson.member.member[i][1];
					 }
					var s=new Date(time).getTime();
	//				ser.addPoint([s,value]); 
//					if(i==0){
						if(j>0){
							if(s>jsonz[j-1][0]){
								flag=true;
							}else{
								flag=false;
								ser.addPoint([s,value]);
							}
						}else{
							flag=true;
						}
//					}
					if(flag){
						jsonz[j]=[s,value];
						j++;
					}else{
//						ser.addPoint([s,value]); 
					}
				} 
				if(flag){
					ser.setData(jsonz)
					jsonMap.put(ename,jsonz);
				}
			}
		}
	
	
	})
	Highcharts.setOptions({ global: { useUTC: false } }); 
	function cavchart(){
		chart = Highcharts.stockChart('container',{
			credits: {
				enabled:false //去掉右下角的highcharts.com
			},
			exporting: {
				enabled:false //去掉右上角的打印及其导出按钮
			},
			rangeSelector: {
				enabled: false
			},
			
			chart: {
				zoomType: 'x',
				width:550,
				height:350
			},
			title:{
				text:"",
				style: {
					//color: '#E3CF57',
					fontWeight: 'bold'
				}
			},
			legend: {
				title: {
					style: {
						fontStyle: 'italic'
					}
				},
				enabled: true
			},
			xAxis: {
				type:"datetime",
				labels: {
					style: {
						color: '#000'//颜色
					}
				}, 
				dateTimeLabelFormats: {  
					day: '%Y-%m-%d<br/>%H:%M'  
						
				}
			},
			yAxis: {
				title:{
					text:""
				}, 
				gridLineColor: '#dcdcdc',
				labels: {
					style: {
						color: '#000'//颜色
					}
				}, 
				opposite: false
			},
			plotOptions: {
				spline: {
					marker: {
						enabled: true
					}
				}
			},
			series:[]
		})
		return chart;
	}
	/*
	   * 移除曲线
	   */
	  function removeSerie(name){
		  if(chart !=null){
			  var cs=chart.series;
			  for(var i=0;i<cs.length;i++){
				  var n=cs[i].name;
				  if(name!=n){
					  cs[i].remove();
				  }
			  }
		  }
	  }
	  /*
	   * 获取指定时间的数据绘图
	   */
	  $(".curve").click(function(){
		  var startTime=$("#startTime").val();
		  var endTime=$("#endTime").val();
		  var analyze=$(".analyze");
		  
		  if(endTime=="" && startTime==""){
			  return;
		  }
		  chart=null;
		  for(var i=0;i<analyze.length;i++){
			  if(analyze[i].className.indexOf("active")>=0){
				  var ename=analyze[i].id;  //可能是几个数据的组合
				  var cname=$(analyze[i]).html();
				  //removeSerie(cname);
				  analyzeDataConnect(ename,cname,startTime,endTime,2)
			  }
		  }
	  })
	 
	  //ruletype==3请求历史数据
	  function historyData(ename,cname,start,end,statusCode){
		  chart.showLoading();
		  var ser=chart.addSeries({name:cname});
	  }
//	  var dataws=null;
	  function analyzeDataConnect(ename,cname,start,end,statusCode){
		  j=0;
		  flag=true;
		  if(chart == null){
			  cavchart()
		  }
		  if(chart.series.length == 0){
			  ser=chart.addSeries({name:cname,turboThreshold:0});
		  }
		  var json={"ename":ename,"start":start,"end":end,"statusCode":statusCode};
		  sendMessage(4, 0, json, dataws);
		  jsonMap.put(ename,[]);
		/*  ser.update({
	          name: cname
		    });*/
		  serMap.put(ename,ser);
	  }
	  var msgid =1;
	  function sendMessage(ruletype,msgnum,msg,session) {
			if (session) {
				var sendtemp = msg;
				sendtemp["ruletype"]=ruletype;
				sendtemp["msgnum"]=msgnum;
				sendtemp["msgid"]=msgid;
				sendtemp["mac_name"]="mac";
				sendtemp["user_name"]="username";
				sendtemp["password"]="password";
				session.send(JSON.stringify(sendtemp));
				
				msgid++;
				return msgid;
			}
		}
	  
	  var analyze=$(".analyze");
		$(".analyze").click(function(){
			//清空事件条件
			$("#startTime").val("");
			$("#endTime").val("");
			$(".analyze").removeClass("active");
			for(var i=0;i<analyze.length;i++){
				if(analyze[i]==this){
					$(this).addClass("active")
					//获取历史数据
					chart=null;
					var ename=analyze[i].id;  //可能是几个数据的组合
				  	var cname=$(analyze[i]).html();
				  	removeSerie(cname);
				  	analyzeDataConnect(ename,cname,"","",2)
				}
			}
		})
})
