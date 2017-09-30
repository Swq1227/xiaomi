<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>ShoppingShow.html</title>
	
    <meta charset="UTF-8">
       <link rel="stylesheet" type="text/css" href="css/shoppingshow.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script>
		$(function() {
		 var x=window.location.href; 
   x=x.substring(x.indexOf('=')+1,x.length); 
		var a = [];
			$.ajax({
				url : "../TypesServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
				
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml = "";
							$.each(datas, function(index, value) {
							
									cHtml += "<li><a id='ziti' href='#'>" +value.tname+ "<span id='zhishi'>></span></a>"+"<ul class='impor'>"+
						"<li class='menu-nonegoods'><div>"+
							
								"<ul class='sub-menu' id='s"+index+"'>"+"</ul></div></li></ul></li>";
								/* cHtml += "<li><a href='#'>" +value.tname+ "</a><span>></span><div class='lastthing' id='s"+index+"'>"+
						"</div></li>"; */
							a[index]=value.tid;						//处理数据
							});

							$(".menu").html(cHtml);//将数据增加到页面中
                               showList();
				},
				
			});
			function showList(){
			$.ajax({
				url : "../ShGoodServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							/* <dd>
								<a href="">
								<img src="xiaotupian/80xmds_55.jpg" />
								<span class="span1">
	                                                              小米6
	                             </span></a>
                                 <span><a class="xuangou" href="">选购</a></span>
                                 </dd> */
							var cHtml0 = "";
							var cHtml1 = "";
							var cHtml2 = "";
							var cHtml3 = "";
							var cHtml4 = "";
							var cHtml5 = "";
							var cHtml6 = "";
							var cHtml7 = "";
							var cHtml8 = "";
							var cHtml9 = "";
							$.each(datas, function(index, value) {
							
						if(a[0]==value.tid){
							
								cHtml0 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}
							else if(a[1]==value.tid){
							
								cHtml1 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[2]==value.tid){
							
								cHtml2 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[3]==value.tid){
							
								cHtml3 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[4]==value.tid){
							
								cHtml4 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[5]==value.tid){
							
								cHtml5 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[6]==value.tid){
							
								cHtml6 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}
							else if(a[7]==value.tid){
							
								cHtml7 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}if(a[8]==value.tid){
							
								cHtml8 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							}else if(a[9]==value.tid){
							
								cHtml9 += "<li><a href='#'><img src='" +value.gurl+ "'><span class='span1'>"+value.gname+"</span></a>"+
							"<span><a class='xuangou' href='#'>选购</a></span></li>";
							} 
								//处理数据
							});

							$("#s0").html(cHtml0);
							$("#s1").html(cHtml1);
							$("#s2").html(cHtml2);
							$("#s3").html(cHtml3);
							$("#s4").html(cHtml4);
							$("#s5").html(cHtml5);
							$("#s6").html(cHtml6);
							$("#s7").html(cHtml7);
							$("#s8").html(cHtml8);
							$("#s9").html(cHtml9);
							
							//将数据增加到页面中

				},
		error : function() {
					alert("错误，请检查代码");
				}
				
			});
			}
			
			
			/* $.ajax({
				url : "../ShoppingShowServlet",
				data : {
				"gid":x,
				},
				type : "post",
				dataType : "json",
				success : function(data) {
				var datas=data;
				var chtml = "";
				var chtml1="";
				var chtml2 ="";
				var chtml3="";
				$.each(datas, function(index, value) {      
							//将数据增加到页面中，这里设置数据显示样式
							chtml +="<img style='width:300px; heigth:380px;' src='"+value.gurl+"'>"; 
							chtml1 +=value.gname;
							chtml2 +=value.gcontent;
                            chtml3 +=value.gprice;
                             }); 
						 	$("#big-img").html(chtml); 
							$("#sname").html(chtml1);
							$("#scontent").html(chtml2);
							$("#price").html(chtml3);//将数据增加到页面中
                             
				},
				error : function() {
					alert("错误，请检查代码");
				}
			}); */
				
			
$("#scar").click(function(){

			$.ajax({
				url : "TransferServlet",
				data : { 
				"gid":x,
				},
				type : "post",
				dataType : "text",
				success : function(ok) {
			       if(ok=="true"){
			       alert("添加购物车成功");
			       }
			
				},
			});

			});
			});
		
</script>

  </head>
  
  <body>
		<div id="motai">
		</div>
		<div class="xuanfu">
			<div class="xuanfu-main">
				<div class="xuanfu-left">
					<img src="img/shoppingshow/shoppingshow/item-small1.jpg" />
					<div>
						<span>小米蓝牙触控语音遥...</span><br/>
						<span style="color: #FF6700;">99元</span>
					</div>

				</div>

				<ul>
					<li>
						<a href="#a">详情描述</a>
					</li>
					<li>
						<a href="#b">规格参数</a>
					</li>

					<li>
						<a href="#c">评价晒单(752)</a>
					</li>
					<li>
						<a href="#d">商品提问(64)</a>
					</li>

				</ul>
				<div class="xuanfu-right">

				</div>

			</div>
		</div>
		<div>
			<div class="head-all">
				<div class="head">
					<div class="head1">

						<a href="#">小米商城</a><span>|</span>

						<a href="#">MIUI</a><span>|</span>

						<a href="#">米聊</a><span>|</span>

						<a href="#">游戏</a><span>|</span>

						<a href="#">多看阅读</a><span>|</span>

						<a href="#">云服务</a><span>|</span>

						<a href="#">金融 </a><span>|</span>

						<a href="#">小米商城移动版 </a><span>|</span>

						<a href="#">问题反馈 </a><span>|</span>

						<a href="#">Select Region </a>

					</div>
					<div class="head2">
						<a href="#" class="denglu"><%=session.getAttribute("name")%></a>
						<span>|</span>
						<!-- <a href="#" class="denglu">注册</a>
						<span>|</span> -->
						<a href="#" class="xiaoxi">消息通知</a>
						<a href="link/ShoppingCar.html" class="gouwuche">购物车</a>
						<div class="gouwu-none">
						</div>
					</div>

				</div>

			</div>
			<div class="head-nav">
				<div class="nav">
					<div class="nav-logo">
						<a href="home.jsp"><img src="img/shoppingshow/mi-logo.png" style="width: 55px; height: 55px; background-color: #FF6700;"> </a>
					</div>
					<ul class="nav-list">
						<li class="firstli" style="padding-right: 15px; text-align: right;width: 121px; cursor: pointer;">
							<a href="#">
								<span>全部商品分类</span>
							</a>
							<div class="allgoods-none" >
							<div class="body" >  <!-- class="allgoods-none" -->
								<ul >
								
								</ul>
                                   </div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>红米</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>小米手机</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>平板 · 笔记本</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/MIX-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>电视</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/MIX-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xiaomiNOTE2-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xm6-320.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>盒子 · 影音</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/MIX-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xiaomiNOTE2-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xm6-320.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>路由器</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/5s-12!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>

										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xm6-320.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>智能硬件</span>
							</a>
							<div class="subnav">
								<div class="subnav-ulwrap">
									<ul>

										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/max2_toubu.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													促销
												</div>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/MIX-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xiaomiNOTE2-320-220!160x110.jpg" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
											</div>
										</li>
										<li>
											<div class="subnav-goods">
												<a><img src="img/shoppingshow/xm6-320.png" /> </a>
												<p>
													<a>小米6</a>
												</p>
												<p>2499元起</p>
												<div class="activity">
													现货
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>服务</span>
							</a>
							<div></div>
						</li>
						<li class="nav-list-li">
							<a href="#">
								<span>社区</span>
							</a>
							<div></div>
						</li>

					</ul>

				</div>

			</div>
		</div>
		
		<div class="main">
			<div class="main-good">
				<div class="good-img">
					<div class="small-img">
						
					</div>
					<div class="big-img" id="big-img">
					<c:forEach items="${requestScope.ll }" var="list">
					<img  width="300px" height="380px"  src="${list.gurl }">
					
					</c:forEach>
					</div>
				</div>
				<div class="xiangqing">
					<dl>
						<dt id="sname"><c:forEach items="${requestScope.ll }" var="list">
					${list.gname }
					
					</c:forEach> </dt>  <!-- 小米蓝牙触控语音遥控器 -->
						<dd id="scontent"><c:forEach items="${requestScope.ll }" var="list">
					${list.gcontent }
					
					</c:forEach>  </dd><!-- 语音智能搜片 / 能控制机顶盒 / BLE 低功耗蓝牙4.2 / 适配小米电视、小米盒子、小米电视主机（1代小米电视、小米电视4A 32英寸、1代/2代小米盒子、小米小盒子除外），系统需升级到最新版本 -->
						<dd>
							<div class="zhekou">
								折扣
							</div>
						</dd>
						<dd>
							<div class="address">
								
			              <span class="youhuo">有货</span>
								<span class="dizhi">广东</span>
								<span class="dizhi">清远市</span>
								<span class="dizhi">连南瑶族自治县</span>
								<span class="dizhi">大坪镇</span>
							
								<a class="address-v">V</a>
								<form action="" method="post">

									<div class="address-motai">
										<div class="address-search">
											<img src="img/shoppingshow/2017-08-16_191230.png" style="vertical-align:middle;" />
											<input placeholder="输入街道、乡镇、小区或商圈名称"  type="text" name="address" id="address" />
										</div>
										<div class="chacha">
											X
										</div>
										<h2>手动选择地址</h2>
										<p>
											我的收货地址
										</p>
										<div class="address-denglu">
											现在
											<a href="Login.html">
												登录
											</a>
											，可根据收货地址快速定位

										</div>
									</div>

								</form> 

							</div>
						</dd>
						<dd>
							<div class="jiaqian">
								<span class="price" id="price"><c:forEach items="${requestScope.ll }" var="list">
					${list.gprice }
					
					</c:forEach></span>
								<span class="danwei">元</span>
								<!-- <span class="oldprice">99元</span> -->
							</div>
						</dd>
						<dd class="lianjie">
							<a style="height: 50px;width: 263px;"   id="scar">
                                <img src="img/shoppingshow/2017-08-16_233109.png" />
							</a>
							<a style="height: 50px;" href="#">
                              <img src="img/shoppingshow/2017-08-16_233212.png" />
							</a>

						</dd>
						<dd>
							<img class="tuikuan" src="img/shoppingshow/2017-08-16_234222.png" />
						</dd>
						<dd>
							<p class="pingjia">
								<span>评价 751</span>
								<span style="border-left:  1px solid #E0E0E0;border-right:  1px solid #E0E0E0;">提问64</span>
								<span>满意度 92.8%</span>

							</p>
						</dd>
						<dd class="xiangqing-bottom">
							<a href="#">
								查看更多小米商品
							</a>
						</dd>
					</dl>

				</div>
			</div>
		</div>
		

		<div class="footer">
			<div class="foot">
				<div class="foot1">
					<ul>
						<li><img class="img1" />
							<a href="#">预约维修服务</a>
						</li>
						<li><img class="img1" />
							<a href="#">7天无理由退货</a>
						</li>
						<li><img class="img1" />
							<a href="#">15天免费换货</a>
						</li>
						<li><img class="img1" />
							<a href="#">满150元包邮</a>
						</li>
						<li style="border: none;">
							<a href="#">520余家售后网点</a>
						</li>
					</ul>
				</div>
				<div class="foot2">
					<ul>
						<li>
							<ul>
								<li class="dd">帮助中心</li>
								<li>
									<a href="#">账户管理</a>
								</li>
								<li>
									<a href="#">购物指南</a>
								</li>
								<li>
									<a href="#">订单操作</a>
								</li>
							</ul>
						</li>
						<li>
							<ul>
								<li class="dd">服务支持</li>
								<li>
									<a href="#">售后政策</a>
								</li>
								<li>
									<a href="#">自助服务</a>
								</li>
								<li>
									<a href="#">相关下载</a>
								</li>
							</ul>
						</li>
						<li>
							<ul>
								<li class="dd">线下门店</li>
								<li>
									<a href="#">小米之家</a>
								</li>
								<li>
									<a href="#">服务网点</a>
								</li>
								<li>
									<a href="#">零售网点</a>
								</li>
							</ul>
						</li>
						<li>
							<ul>
								<li class="dd">关于小米</li>
								<li>
									<a href="#">了解小米</a>
								</li>
								<li>
									<a href="#">加入小米</a>
								</li>
								<li>
									<a href="#">联系我们</a>
								</li>
							</ul>
						</li>
						<li>
							<ul>
								<li class="dd">关注我们</li>
								<li>
									<a href="#">新浪微博</a>
								</li>
								<li>
									<a href="#">小米部落</a>
								</li>
								<li>
									<a href="#">官方微信</a>
								</li>
							</ul>
						</li>
						<li>
							<ul>
								<li class="dd">特色服务</li>
								<li>
									<a href="#">F 码通道</a>
								</li>
								<li>
									<a href="#">礼物码</a>
								</li>
								<li>
									<a href="#">防伪查询</a>
								</li>
							</ul>
						</li>
					</ul>
					<div class="dianhua">
						<p class="p1">400-100-5678</p>
						<p class="p2">周一至周日 8:00-18:00 </p>

						<a href="#">
							<p class="p3">（仅收市话费）</p>
						</a>
					</div>
				</div>

			</div>
			<div class="bottom">
				<div class="bottom1">
					<div class="bottom-left">
						<div class="logo">
							<a href="#"><img src="img/shoppingshow/logo-footer.png" /> </a>
						</div>
						<ul>
							<li>
								<a href="#">小米商城</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">MIUI</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">米聊</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">多看书城</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">小米路由器</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">视频电话</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">小米天猫店</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">小米淘宝直营店</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">小米网盟</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">小米移动</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">隐私政策</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">Select Region</a>
							</li>
						</ul>
						<p class="bottom-jubao">©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号 </p>
						<p class="bottom-jubao">违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
					</div>
					<div class="bottom-img">
						<a href="#"><img src="img/shoppingshow/truste.png" width="83px" /></a>
						<a href="#"><img src="img/shoppingshow/v-logo-1.png" /></a>
						<a href="#"><img src="img/shoppingshow/v-logo-2.png" /></a>
						<a href="#"><img src="img/shoppingshow/v-logo-3.png" /></a>
					</div>

				</div>
				<div class="bottom-end">
					<p class="bottom-end-p" style="font-family:'仿宋';">探索黑科技，小米为发烧而生!</p>
				</div>
			</div>
		</div>
		
 
<script type="text/javascript">
			var address = document.querySelector(".address-v");
			var chacha = document.querySelector(".chacha");
			var motai = document.querySelector("#motai");
			address.onclick = function() {
				document.querySelector(".address-motai").style.display = "block";
				motai.style.display = "block";
			};
			chacha.onclick = function() {
				document.querySelector(".address-motai").style.display = "none";
				motai.style.display = "none";

			};
			document.querySelector(".address-search input").onfocus = function() {
				document.querySelector(".address-motai").style.height = "120px";
			};
			document.querySelector(".address-search input").onblur = function() {
				document.querySelector(".address-motai").style.height = "187px";
			};
			motai.onclick = function() {
				document.querySelector(".address-motai").style.display = "none";
				motai.style.display = "none";
			};
			var smallimgs = document.querySelectorAll(".small-imgmain");
			var bigimgs = document.querySelector(".big-img");

			smallimgs[0].onclick = function() {
				bigimgs.firstElementChild.src = "img/item-big1.jpg";
				this.style.borderColor = "red";

				this.parentNode.lastElementChild.style.borderColor = "#E0E0E0";

			};
			smallimgs[1].onclick = function() {
				bigimgs.firstElementChild.src = "img/item-big2.jpg";
				this.style.borderColor = "red";
				this.parentNode.firstElementChild.style.borderColor = "#E0E0E0";
			};
window.onscroll = function() {
				var top = document.body.scrollTop;

				if(top > 860) {
					document.querySelector(".xuanfu").style.display = "block";
				} else {
					document.querySelector(".xuanfu").style.display = "none";
				}
} 
</script>
	</body>
</html>
