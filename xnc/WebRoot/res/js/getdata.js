$(function(){
	$("#tohome").click(function(){
		parent.location.reload()
	})
	
	var navleft = $(".navleft");
	$(".navleft").click(function(){
		$(".navleft").css("border-color","#cccccc");
		$(this).css("border-color","red");
		for(var i=0;i<navleft.length;i++){
			if(navleft[i]==this){
				if(i==0){
					$("#dataanalyze").show();
					$("#bighome").hide();
					//获取历史数据
					
				}else{
					$("#dataanalyze").hide();
					$("#bighome").show();
					var src=$(this).attr("src");
					var newsrc=src.substr(9,2)
					$("#bighome img").attr("src","img/"+newsrc+".jpg");
				}
			}
		}
		
	})
	$(".smallhouse1").click(function(){
		for(var i=1;i<navleft.length;i++){
			navleft[i].src="img/small0"+i+".jpg";
		}
	})
	$(".smallhouse").click(function(){
		for(var i=1;i<navleft.length;i++){
			navleft[i].src="img/small0"+(i+6)+".jpg";
		}
	})
	
	$.fn.getdata=function getdata(url,enameArray){
			var wsc = null;
			if ("WebSocket" in window) {
				wsc = new WebSocket(url);
			} else if ("MozWebSocket" in window) {
				wsc = new MozWebSocket(url);
			} else {
				alert("浏览器不支持WebSocket");
			}
			wsc.onopen = function() {
				var json={"category":false,"dataArray":true,"enameArray":enameArray}
				sendMessage(1, 1, json, wsc);
			}
			wsc.onerror=function(){
				console.log("数据连接error")
			}
			wsc.onclose=function(){
				console.log("数据连接断开")
			}
			wsc.onmessage = function(msg) {
				if (typeof(msg.data) == "string") {
					var msg=JSON.parse(msg.data);
					var msgArray;
					var dataEname;
					var dataValue;
					if(typeof(msg.member)!="undefined"){
						msgArray=msg.member
					}else{
						msgArray=msg.list;
					}
					for(var i=0;i<msgArray.length;i++){
						dataEname=msgArray[i].dataEname;
						dataValue=msgArray[i].dataValue;
						$("."+dataEname).html(dataValue+"℃");
						effectByName(dataEname)
					}
				}
			}
		}
		function effectByName(name){
			$("."+name).css("color","red")
			setTimeout(function(){
				$("."+name).css("color","#0cd80c");
			}, 1000);
		}
		var heartws ;
		if ("WebSocket" in window) {
			heartws = new WebSocket(fullUrl);
		} else if ("MozWebSocket" in window) {
			heartws = new MozWebSocket(fullUrl);
		} else {
			alert("浏览器不支持WebSocket");
		}
		heartws.onopen = function() {
			var json={"request":ipcName,"onoff":1,"ruletype":2};
			heartws.send(JSON.stringify(json));
		}
	
		heartws.onerror=function(){
			
		}
		heartws.onclose=function(){
		}
		$.fn.getVideo=function getVideo(url,localName,serverName,ipcName){
			$.ajax({
				url : url,
				dataType:'post',
				data : {"localName" : localName,"serverName" : serverName,"ipcName" : ipcName},
				dataType : "text",
				success : function(data) {
				}
			})
			var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
			var flashvars={
				f:'rtmp://123.56.26.187/'+localName+'/'+ipcName,					
				s:0,
				lv:1,
				p:1,
				c:0, //调用 ckplayer.js 配置播放器
				h:2
			};
			CKobject.embedSWF('/xnc/res/ckplayer/ckplayer.swf',ipcName,'ckplayer_'+ipcName,'250','180',flashvars,params);
//			
			var video=['http://123.56.26.187:8090/'+localName+'/'+ipcName+'.m3u8'];
			var support=['iPad','iPhone','ios','android+false','msie10+false'];
			CKobject.embedHTML5(ipcName,'ckplayer_'+ipcName,400,255,video,flashvars,support);
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
})
