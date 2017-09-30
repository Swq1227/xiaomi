<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/zhuye.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript">
		$(function() {
	
			var a=[];
			//头部标题数据拿取
			$.ajax({
				url : "Type_TYServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml = "";
							$.each(datas, function(index, value) {
								cHtml += "<li><a href='#'>" +value.tname+ "<span>></span></a>"+"<ul class='impor'>"+
						"<li class='menu-nonegoods'><div>"+
							
								"<ul class='sub-menu' id='ss"+index+"'>"+"</ul></div></li></ul></li>";//处理数据
								a[index] = value.tid;
								
							});
							

							$(".menu").html(cHtml);//将数据增加到页面中
					
					showList();
				},
				error : function() {
				}
			});
			
			function showList() {
			//头部标题商品内容拿取
			$.ajax({
				url : "GoodsServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
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
						
							
							if(value.tid==a[0]){
							
							cHtml0 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								}
								else if(value.tid==a[1]){
								cHtml1 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								}
								
								
								else if(value.tid==a[2]){
								cHtml2 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								}else if(value.tid==a[3]){
								cHtml3 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[4]){
								cHtml4 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[5]){
								cHtml5 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[6]){
								cHtml6 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[7]){
								cHtml7 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[8]){
								cHtml8 += "<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
								else if(value.tid==a[9]){
								cHtml9 +="<li><a href='homeServlet?id="+value.gid+"'><img src='"+value.gurl+"'style='width:40px;heugth:40px;' />"+"<span>" +value.gname
								+ "</span></a><span class='xuangou'>选购</span></li>";
								
								}
							 
								
								//处理数据
							});

							$("#ss0").html(cHtml0);//将数据增加到页面中
							$("#ss1").html(cHtml1);
							$("#ss2").html(cHtml2);
							$("#ss3").html(cHtml3);
							$("#ss4").html(cHtml4);
							$("#ss5").html(cHtml5);
							$("#ss6").html(cHtml6);
							$("#ss7").html(cHtml7);
							$("#ss8").html(cHtml8);
							$("#ss9").html(cHtml9);
							
						
					
					
				},
				error : function() {
				}
			});
			}
			//小米明星商品拿取
			$.ajax({
				url : "GoodsServlet1",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml10 = "";
							$.each(datas, function(index, value) {
							
							if(value.tid==1){
								
								
								cHtml10 += "<li style='border-top: 1px solid #FFAC13;'><a href='homeServlet?id="+value.gid+"'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='homeServlet?id="+value.gid+"'>" +value.gname
								+ "</a></h3><p><br>"+value.gcontent+"</p><h1><br>"+value.gprice+"元</h1></li>";
								
								} 
								
								//处理数据
							});
							$("#sssss").html(cHtml10);
						
					
					
				},
				error : function() {
				}
			});
			//家电商品内容拿取
			 $.ajax({
				url : "Goods_HotServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml22 = "";
							$.each(datas, function(index, value) {
							if(value.tid==2){
								cHtml22 += "<li><a href='homeServlet?id="+value.gid+"'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='#'>" 
								+value.gname+ "</a></h3><p>"+value.gcontent+
								"</p><p style='color: #FF6700;'>"+value.gprice+
								"元</p><div class='box-goodstop'>新品 </div>"+
								"<div class='box-goodsnone'><a href='#'>"+value.grate+
								"<span>来自于 天空才是极限 的评价  </span></a></div></li>";
								} 
								//处理数据
							});
							$("#hot").html(cHtml22);	
				},
				error : function() {
				}
			}); 
			//电视影音
			 $.ajax({
				url : "Goods_TvServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml33 = "";
							$.each(datas, function(index, value) {
							if(value.tid==3){
								cHtml33 += "<li><a href='#'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='#'>" 
								+value.gname+ "</a></h3><p>"+value.gcontent+
								"</p><p style='color: #FF6700;'>"+value.gprice+
								"元</p><div class='box-goodstop'>新品 </div>"+
								"<div class='box-goodsnone'><a href='#'>"+value.grate+
								"<span>来自于 天空才是极限 的评价  </span></a></div></li>";
								} 
								//处理数据
							});
							$("#tv").html(cHtml33);	
				},
				error : function() {
				}
			}); 
			//电脑
			 $.ajax({
				url : "Goods_PcServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml44 = "";
							$.each(datas, function(index, value) {
							if(value.tid==4){
								cHtml44 += "<li><a href='#'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='#'>" 
								+value.gname+ "</a></h3><p>"+value.gcontent+
								"</p><p style='color: #FF6700;'>"+value.gprice+
								"元</p><div class='box-goodstop'>新品 </div>"+
								"<div class='box-goodsnone'><a href='#'>"+value.grate+
								"<span>来自于 天空才是极限 的评价  </span></a></div></li>";
								} 
								//处理数据
							});
							$("#pc").html(cHtml44);	
				},
				error : function() {
				}
			});
			//家居
			 $.ajax({
				url : "Goods_HomeServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml55 = "";
							$.each(datas, function(index, value) {
							if(value.tid==5){
								cHtml55 += "<li><a href='#'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='#'>" 
								+value.gname+ "</a></h3><p>"+value.gcontent+
								"</p><p style='color: #FF6700;'>"+value.gprice+
								"元</p><div class='box-goodstop'>新品 </div>"+
								"<div class='box-goodsnone'><a href='#'>"+value.grate+
								"<span>来自于 天空才是极限 的评价  </span></a></div></li>";
								} 
								//处理数据
							});
							$("#home").html(cHtml55);	
				},
				error : function() {
				}
			});
			
			
			
							
			//推荐				
		 $.ajax({
				url : "Goods_ForServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml66 = "";
							$.each(datas, function(index, value) {
							if(value.tid==6){
							
							
			/* <li>
								<a href="#">
									<img src="weinituijian/1.jpg" />
								</a>
								<h3>
						<a href="#">贝医生巴氏牙刷(四色装)</a>
					</h3>
								<p>德日进口刷毛，专利科学布局</p>
								<h1>39.9元</h1>
							</li> */
								cHtml66 += "<li><a href='#'>"+
								"<img src='"+value.gurl+"' />"+"</a><h3><a href='#'>" 
								+value.gname+ "</a></h3><p><br>"+value.gcontent+
								"</p><h1><br>"+value.gprice+
								"元</h1></li>";
								} 
								//处理数据
							});
							$("#for").html(cHtml66);	
				},
				error : function() {
				}
			});
			//轮播图
			 $.ajax({
				url : "PhotosServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml77 = "";
							$.each(datas, function(index, value) {
							if(value.tid==7){
						
							/* <li data-index="0" data-href="" data-img="img/lunbo/lunbo1.jpg"></li>
				<li data-index="1" data-href="" data-img="img/lunbo/luono3.jpg"></li>
				<li data-index="2" data-href="" data-img="img/lunbo/luobo4.jpg"></li>
				<li data-index="3" data-href="" data-img="img/lunbo/luobo5.jpg"></li>
				<li data-index="4" data-href="" data-img="img/lunbo/luobo6.jpg"></li>
				<li data-index="5" data-href="" data-img="img/lunbo/luobo7.jpg"></li> */
							
								cHtml77 += "<li data-index='"+value.pid+
								"' data-href='' data-img='"+value.purl+"'></li>";
								} 
								
								//处理数据
							});
							
							$("#lunbo").html(cHtml77);	
				},
				error : function() {
				}
			});
			
			
		});
		</script>
		
	</head>

	<body>
		<div>
			<div class="head-all">
				<div class="head">
					<div class="head1">

						<a href="#">CodingMart</a><span>|</span>

						<a href="#">CoMa</a><span>|</span>

						<a href="#">蔻丁</a><span>|</span>

						<a href="#">游戏</a><span>|</span>

						<a href="#">多看阅读</a><span>|</span>

						<a href="#">云服务</a><span>|</span>

						<a href="#">金融 </a><span>|</span>

						<a href="#">小米商城移动版 </a><span>|</span>

						<a href="#">问题反馈 </a><span>|</span>

						<a href="#">Select Region </a>

					</div>
					<div class="head2">
						<a class="denglu"><%=session.getAttribute("name")%></a>
						<a href="#" class="xiaoxi">消息通知</a>
						<a href="link/ShoppingCar.html" class="gouwuche">购物车</a>
					</div>
					<div class="head2">
					<img src="img/user22.png" style="width:25px;heigth:25px;margin-top:10px;border-radius:10px">
					</div>
					

				</div>

			</div>
			<div class="head-nav">
				<div class="nav">
					<div class="nav-logo">
						<a href="#"><img src="img/mi-logo.png" style="width: 55px; height: 55px; background-color: #FF6700;"> </a>
					</div>
					<ul class="nav-list">
						<li style="padding-right: 15px; text-align: right;width: 121px;">
							<a href="#">
								<span></span>
							</a>

							<li class="nav-list-li">
								<a href="#">
									<span>小米手机</span>
								</a>
								<div class="subnav">
									<div class="subnav-ulwrap">
										<ul>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi1.png" /> </a>
													<p>
														<a>小米MIX2</a>
													</p>
													<p>3299元起</p>
													<div class="activity">
														新品
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi2.png" /> </a>
													<p>
														<a>小米Note3</a>
													</p>
													<p>2499元起</p>
													<div class="activity">
														新品
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi3.png" /> </a>
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
													<a><img src="img/mipho/mi4.png" /> </a>
													<p>
														<a>小米Max2</a>
													</p>
													<p>1399元起</p>
													<div class="activity">
														享多重优惠
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi5.jpg" /> </a>
													<p>
														<a>小米5X</a>
													</p>
													<p>1299元起</p>
													<div class="activity">
														现货
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi6.jpg" /> </a>
													<p>
														<a>小米Note2</a>
													</p>
													<p>2099元起</p>
													<div class="activity">
														最高减700
													</div>
												</div>
											</li>

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
													<a><img src="img/mipho/mi7.png" /> </a>
													<p>
														<a>红米Note 5A标准版</a>
													</p>
													<p>699元</p>
													<div class="activity">
														新品
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi8.jpg" /> </a>
													<p>
														<a>小米Note 5A高配版</a>
													</p>
													<p>899元</p>
													<div class="activity">
														新品
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi9.jpg" /> </a>
													<p>
														<a>红米Note4X</a>
													</p>
													<p>999元</p>
													<div class="activity">
														享免息
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/mi10.jpg" /> </a>
													<p>
														<a>红米4X</a>
													</p>
													<p>699元</p>
													<div class="activity">
														享免息
													</div>
												</div>
											</li>
											
											

										</ul>
									</div>
								</div>
							</li>
							<li class="nav-list-li">
								<a href="#">
									<span>平板 ·笔记本</span>
								</a>
								<div class="subnav">
									<div class="subnav-ulwrap">
										<ul>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/pc1.png" /> </a>
													<p>
														<a>小米平板3 64GB</a>
													</p>
													<p>1499元</p>
													<div class="activity">
														现货
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/pc2.jpg" /> </a>
													<p>
														<a>小米笔记本Air 12.5</a>
													</p>
													<p>3599元</p>
													<div class="activity">
														现货
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/pc3.jpg" /> </a>
													<p>
														<a>小米笔记本Air 13.3</a>
													</p>
													<p>4999元</p>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/pc4.png" /> </a>
													<p>
														<a>小米笔记本Pro 15.6</a>
													</p>
													<p>5599元起</p>
													<div class="activity">
														新品
													</div>
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
													<a><img src="img/mipho/tv1.png" /> </a>
													<p>
														<a>小米电视4 49英寸</a>
													</p>
													<p>2999元</p>
													<div class="activity">
														超薄旗舰
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/tv2.png" /> </a>
													<p>
														<a>小米电视4 55英寸</a>
													</p>
													<p>3999元</p>
													<div class="activity">
														超薄旗舰
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/tv3.png" /> </a>
													<p>
														<a>小米电视4 65英寸</a>
													</p>
													<p>8999</p>
													<div class="activity">
														超薄旗舰
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/tv4.png" /> </a>
													<p>
														<a>小米电视4A 43英寸</a>
													</p>
													<p>1899元</p>
													<div class="activity">
														热卖
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/tv5.png" /> </a>
													<p>
														<a>小米电视4A 49英寸</a>
													</p>
													<p>2099元起</p>
													<div class="activity">
														热卖
													</div>
												</div>
											</li>

										</ul>
									</div>
								</div>
							</li>
							<li class="nav-list-li">
								<a href="#">
									<span>盒子</span>
								</a>
								<div class="subnav">
									<div class="subnav-ulwrap">
										<ul>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/hzi1.png" /> </a>
													<p>
														<a>小米盒子3s</a>
													</p>
													<p>299元</p>
													<div class="activity">
														现货
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/hzi1.png" /> </a>
													<p>
														<a>小米盒子3c</a>
													</p>
													<p>299元</p>
													<div class="activity">
														现货
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/hzi2.jpg" /> </a>
													<p>
														<a>小米盒子3 增强版</a>
													</p>
													<p>399元</p>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/hzi3.png" /> </a>
													<p>
														<a>小米家庭影院</a>
													</p>
													<p>1999元</p>
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
													<a><img src="img/mipho/lyou1.png" /> </a>
													<p>
														<a>小米6路由器3A</a>
													</p>
													<p>139元</p>
													<div class="activity">
														新品
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/lyou2.jpg" /> </a>
													<p>
														<a>小米路由器HD/Pro</a>
													</p>
													<p>499元起</p>
													<div class="activity">
														大容量
													</div>
												</div>
											</li>

											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/lyou3.png" /> </a>
													<p>
														<a>小米路由器3G</a>
													</p>
													<p>249元</p>
													<div class="activity">
														双千兆
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/lyou3.png" /> </a>
													<p>
														<a>小米路由器3C</a>
													</p>
													<p>99元</p>
													<div class="activity">
														双频
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
													<a><img src="img/mipho/yinj1.jpg" /> </a>
													<p>
														<a>小米无人机</a>
													</p>
													<p>2999元</p>
													<div class="activity">
														航拍利器
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/yinj2.png" /> </a>
													<p>
														<a>小米手环2</a>
													</p>
													<p>149元</p>
													<div class="activity">
														包邮
													</div>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/yinj3.png" /> </a>
													<p>
														<a>小米净水器</a>
													</p>
													<p>1499元起</p>
												</div>
											</li>
											<li>
												<div class="subnav-goods">
													<a><img src="img/mipho/yinj4.jpg" /> </a>
													<p>
														<a>米家扫地机器人</a>
													</p>
													<p>1699元</p>
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

							</li>
							<li class="nav-list-li">
								<a href="#">
									<span>社区</span>
								</a>
								<form action="" method="get">
									<input id="sousuo" value="" name="sousuo" />

									<input type="image" src="img/head/head5.png" id="submit" value="" />
									<a href="xiaomiliebiao/yaokong.html" class="a1">电视4A 55"</a>
									<a href="shangp/new_file.html" class="a2">小米Note 2 特惠</a>
								</form>

							</li>

					</ul>

				</div>

			</div>
		</div>
		<div class="body">
			<div class="lunbo-img">
				<a href="#">
					<img src="img/lunbo/lunbo1.jpg" />
				</a>
			</div>
			<ul class="menu">
				
				</ul>
				<ul class="dian">
				<li class="active" data-index="0" data-href="" data-img="img/lunbo/lunbo1.png"></li>
				<li data-index="1" data-href="" data-img="img/lunbo/luobo2.jpg"></li>
				<li data-index="2" data-href="" data-img="img/lunbo/luono3.jpg"></li>
				<li data-index="3" data-href="" data-img="img/lunbo/luobo4.jpg"></li>
				<li data-index="4" data-href="" data-img="img/lunbo/luobo5.jpg"></li>
				<li data-index="5" data-href="" data-img="img/lunbo/luobo6.jpg"></li>
			</ul>
			<div class="jiantou">
				<a class="left" href="#"></a>
				<a class="right" href="#"></a>

			</div>
			
		</div>
		<div class="main-foot">
			<div class="main-footmain">
				<ul>
					<li>
						<a href="#">
							<img src="img/head/head1.png" />
						</a>
					</li>
					<li class="img">
						<a href="#">
							<img class="img1" src="img/head/head2.jpg" />
						</a>
					</li>
					<li class="img">
						<a href="#">
							<img class="img1" src="img/head/head3.jpg" />
						</a>
					</li>
					<li class="img">
						<a href="#">
							<img class="img1" src="img/head/head4.jpg" />
						</a>
					</li>

				</ul>
			</div>
		</div>
		<div class="mingxin">
			<div class="mingxingdanping">
				<h2 id="h2">
					小米明星单品
					<a  >&gt;</a>
					<a >&lt;</a>
					
				</h2>
				<ul class="mingxin-ul" id="sssss">
					
				</ul>

			</div>
		</div>
		<div class="boxs">
			<div class="box">
				<div class="jiadian">
					<h2 class="title">家电
						<div class="goods-list">
							<ul>
								<li data-number = "0">热门
								</li>
								<li data-number = "1">电视影音</li>
								<li data-number = "2">电脑</li>
								<li data-number = "3">家居</li>
								
							</ul>
						</div>
					</h2>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/jiadian/jiadian.jpg" style="width: 234px; height: 614px;" /></a>
						</div>
						<div class="box-goods">
						
							<ul id="hot">
							
								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">盒子3 增强版</a></h5>
										<p class="p1">399元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="xiaodiv-img/xmad_14988107613863_SWjuV.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电视影音</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="xiaodiv-img/2017-08-14_221248.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/jiadian/jiadian.jpg" style="width: 234px; height: 614px;" /></a>
						</div>
						<div class="box-goods">
							<ul id="tv">
								

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">盒子3 增强版</a></h5>
										<p class="p1">399元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="xiaodiv-img/xmad_14988107613863_SWjuV.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电视影音</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="xiaodiv-img/2017-08-14_221248.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/jiadian/jiadian.jpg" style="width: 234px; height: 614px;" /></a>
						</div>
						<div class="box-goods">
							<ul id="pc">
								

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">盒子3 增强版</a></h5>
										<p class="p1">399元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="xiaodiv-img/pms_1468806372.46368911!220x220.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电视影音</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="xiaodiv-img/2017-08-14_221248.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/jiadian/jiadian.jpg" style="width: 234px; height: 614px;" /></a>
						</div>
						<div class="box-goods">
							<ul id="home">
								
								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">盒子3 增强版</a></h5>
										<p class="p1">399元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="xiaodiv-img/xmad_14988107613863_SWjuV.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电视影音</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="xiaodiv-img/2017-08-14_221248.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="zhineng">

					<h2 class="title">智能
						<div class="goods-list">
							<ul>
								<li data-number = "4">热门
								</li>
								<li data-number = "5">出行</li>
								<li data-number = "6">健康</li>
								<li data-number = "7">酷玩</li>
							
								
							</ul>
						</div>
					</h2>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhineng/zn1.jpg" />
								<img src="img/zhineng/zn2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhineng/znhot1.jpg" /></a>
									<h3><a href="">米家扫地机器人</a></h3>
									<p>智能路径规划，扫的干净扫的快</p>
									<p style="color: #FF6700; ">1699元</p>
							<!--  		<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">送货速度快，产品质量好准备回国送给父母，听说客服妹...
											<span> 来自于苏渤海 的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot2.jpg" /></a>
									<h3><a href="">米家感应夜灯</a></h3>
									<p>超低功耗，亮度双档调节，可贴可挂</p>
									<p style="color: #FF6700; ">49元</p>
								 	<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">非常不错，强烈推荐
											<span> 来自于 lzg21st 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot3.jpg" /></a>
									<h3><a href="">小方摄像机</a></h3>
									<p>1080p好清晰，看家看娃看宠物</p>
									<p style="color: #FF6700; ">119元<del style="color:gray">129元</del></p>
									<div class="box-goodstop" style="background-color:red" >享9.3折 </div>
									<div class="box-goodsnone">
										<a href="#">不错！！！我的小目标就是打造小米的家庭智能生活，现在...
											<span> 来自于 以为从天而降的胖子的... </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot4.jpg" /></a>
									<h3><a href="">米家IH电饭煲3L</a></h3>
									<p>IH电磁环绕加热，3000+煮米方案</p>
									<p style="color: #FF6700; ">399元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">电饭煲很精巧，外观高大上，煮饭香又香。客服妹子，我叫...
											<span> 来自于 BOBO 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot5.jpg" /></a>
									<h3><a href="">Yeelight床头灯</a></h3>
									<p>触摸式操作体验，给卧室1600万种颜色</p>
									<p style="color: #FF6700; ">199元<del style="color:gray">240元</del></p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">哈哈，快齐了所有套装万事俱备只差客服妹子！客服大汉也...
											<span> 来自于 夏柒帅 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot6.jpg" /></a>
									<h3><a href="">米家小相机</a></h3>
									<p>清晰捕捉美好瞬间</p>
									<p style="color: #FF6700; ">699元</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">小，但是很大，很强大。
											<span> 来自于风雪夜行人的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znhot7.jpg" /></a>
									<h3><a href="">米家iHealth血压计</a></h3>
									<p>爸妈上手就会用的智能血压计</p>
									<p style="color: #FF6700; ">349元<del style="color:gray">399元</del></p>
									<div class="box-goodstop">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">送给老爸 老妈的礼物，不错不错，虽然还没来得及用。看...
											<span> 来自于心悟的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米VR眼镜</a></h5>
										<p class="p1">299元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhineng/znhot8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">热门</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhineng/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhineng/zn1.jpg" />
								<img src="img/zhineng/zn2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhineng/zncx1.jpg" /></a>
									<h3><a href="">小米米家电动滑板车</a></h3>
									<p>极简几何设计，1分钟轻松上手</p>
									<p style="color: #FF6700; ">1999元</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">灵的不得了！超级拉风
											<span> 来自于 MINIMIMINI_S的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx2.jpg" /></a>
									<h3><a href="">电助力折叠自行车</a></h3>
									<p>力矩传感电助力，折叠便携设计</p>
									<p style="color: #FF6700; ">2999元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">喜欢的不得了！一直支持小米产品
											<span> 来自于德德的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx3.jpg" /></a>
									<h3><a href="">小米米家对讲机</a></h3>
									<p>8天超长待机，位置共享，FM收音机</p>
									<p style="color: #FF6700; ">229元<del style="color:gray">249元</del></p>
									<div class="box-goodstop"style="background-color:red">享9.2折 </div>
									<div class="box-goodsnone">
										<a href="#">好漂亮！客服妹纸有她漂亮嘛
											<span> 来自于赵伟的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx4.jpg" /></a>
									<h3><a href="">米家车载空气净化器</a></h3>
									<p>双风机循环气流，高效净化车内空气</p>
									<p style="color: #FF6700; ">399元<del style="color:gray">449元</del></p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">东西总体满意，头枕卡扣会滑松，松了就会发出碰撞声...
											<span> 来自于权真的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx5.jpg" /></a>
									<h3><a href="">Amazfit运动手表</a></h3>
									<p>蓝牙听歌，运动心率，智能通知提醒</p>
									<p style="color: #FF6700; ">799元</p>
								<!-- 	<div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">很好，昨天下单，今天就到，小米的粉丝，感觉还行，就不...
											<span> 来自于926889026的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx6.jpg" /></a>
									<h3><a href="">小蚁微单相机MI双镜头套机</a></h3>
									<p>2016万有效像素，4K视频录制</p>
									<p style="color: #FF6700; ">2799元<del style="color:gray">2999元</del></p>
									<div class="box-goodstop" style="background-color:red">享9.4折 </div>
									<div class="box-goodsnone">
										<a href="#">小米客服美眉，给我作一首藏头诗可好，我爱钱天玉
											<span> 来自于布衣小刚子的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/zncx7.jpg" /></a>
									<h3><a href="">小米手环2</a></h3>
									<p>OLED显示屏幕，升级计步算法</p>
									<p style="color: #FF6700; ">149元</p>
									<div class="box-goodstop"style="background-color:orange">免邮费 </div>
									<div class="box-goodsnone">
										<a href="#">想问客服妹纸这个防水吗？比如洗衣服呀什么的
											<span> 来自于凍結回憶的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">米家车载空气...</a></h5>
										<p class="p1">69元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhineng/zncx8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">出行</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhineng/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhineng/zn1.jpg" />
								<img src="img/zhineng/zn2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhineng/znjk1.jpg" /></a>
									<h3><a href="">米家飞利浦智睿台灯二代</a></h3>
									<p>感知环境光，主动优化场景照明</p>
									  <p style="color: #FF6700; ">199元</p>
								<!--	<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">很好(两字言之精辟484)，共同上镜的是我的船和耳机...
											<span> 来自于冰峰的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk2.jpg" /></a>
									<h3><a href="">Yeelight床头灯</a></h3>
									<p>触摸式操作体验，给卧室1600万种颜色</p>
									<p style="color: #FF6700; ">199元<del style="color:gray">249元</del></p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">哈哈，快齐了所有套装万事俱备只差客服妹子，客服大汉也...
											<span> 来自于夏柒帅的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk3.jpg" /></a>
									<h3><a href="">小米体重秤</a></h3>
									<p>100克，喝杯水都能感知的精准</p>
									<p style="color: #FF6700; ">99元</p>
								<!--  	<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">去快递的时候被快递包装惊艳到了 同学都说 这是血书吗？
											<span> 来自于炙夏~_~ 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk4.jpg" /></a>
									<h3><a href="">米家智能摄像机 1080P</a></h3>
									<p>10米红外夜视范围，双向语音沟通</p>
									<p style="color: #FF6700; ">199元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">一级棒，有妹纸在不？
											<span> 来自于毕重阳的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk5.jpg" /></a>
									<h3><a href="">米家iHealth血压计</a></h3>
									<p>爸妈上手就会用的智能血压计</p>
									<p style="color: #FF6700; ">349元<del style="color:gray">399元</del></p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">送给老爸 老妈的礼物，不错不错，虽然还没来得及用。看...
											<span> 来自于心悟的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk6.jpg" /></a>
									<h3><a href="">米家PM2.5检测仪</a></h3>
									<p>一体黑OLED屏，智能联动</p>
									<p style="color: #FF6700; ">399元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">实时了解空气质量，再也不怕忘拆滤芯塑料袋了
											<span> 来自于那爱的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znjk7.jpg" /></a>
									<h3><a href="">空气净化器滤芯</a></h3>
									<p>高效净化，可吸入颗粒物、甲醛</p>
									<p style="color: #FF6700; ">149元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">还真是不错，自己买了个小风扇放上去了，然后做了一个...
											<span> 来自于yqlyql的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米水质TDS...</a></h5>
										<p class="p1">39元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhineng/znjk8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">健康</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhineng/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhineng/zn1.jpg" />
								<img src="img/zhineng/zn2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhineng/znkw1.jpg" /></a>
									<h3><a href="">米兔儿童手表Q</a></h3>
									<p>11重安全设计，五重精准定位</p>
									<p style="color: #FF6700; ">249元<del style="color:gray">299元</del></p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">这个需要买什么样套餐的卡??需要剪卡嘛？
											<span> 来自于坚坚的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw2.jpg" /></a>
									<h3><a href="">米兔智能故事机</a></h3>
									<p>微信远程互动，智能语音交互</p>
									<p style="color: #FF6700; ">189元<del style="color:gray">199元</del></p>
									<div class="box-goodstop" style="backgroundcolor:red">享9.5折 </div>
									<div class="box-goodsnone">
										<a href="#">妹子你家兔子长得真蠢
											<span> 来自于吃大米的孩子的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw3.png" /></a>
									<h3><a href="">米家智能家庭礼品装</a></h3>
									<p>智能联动，让生活更健康</p>
									<p style="color: #FF6700; ">299元<del style="color:gray">329元</del></p>
									<div class="box-goodstop" style="background-color:red">享9.1折 </div>
									<div class="box-goodsnone">
										<a href="#">同一天收到两个快递，现代与历史共呈，完美！
											<span> 来自于林野晨曦的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw4.jpg" /></a>
									<h3><a href="">米家多功能网关</a></h3>
									<p>米家智能配件控制中心</p>
									<p style="color: #FF6700; ">149元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">非常满意，是我想要的，没让我失望，希望小米能保持一个...
											<span> 来自于jackson的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw5.jpg" /></a>
									<h3><a href="">小米无人机4K版套装</a></h3>
									<p>探索触手可及的新视角</p>
									<p style="color: #FF6700; ">2999元</p>
								<!--  	<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">装了20分钟才组装好，好喜欢啊，现在充电中，等飞过再...
											<span> 来自于最冷的昨天的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw6.jpg" /></a>
									<h3><a href="">米兔积木机器人</a></h3>
									<p>978个零件，享受挑战双手的乐趣</p>
									<p style="color: #FF6700; ">449元<del style="color:gray">499元</del></p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">孩子天天要电脑，或者看平板，要么就看电视，买个积木分...
											<span> 来自于高粱王子 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhineng/znkw7.jpg" /></a>
									<h3><a href="">米家网络收音机增强版</a></h3>
									<p>蓝牙Wi-Fi双无线，专业扬声器</p>
									<p style="color: #FF6700; ">149元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">外观惊艳，音质很好，快递速度很快，心情很好。请客服美...
											<span> 来自于零度~~的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小白摄像机</a></h5>
										<p class="p1">399元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhineng/znkw8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">酷玩</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhineng/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

				</div>
				<div class="dapei">

					<h2 class="title">搭配
						<div class="goods-list">
							<ul>
								<li data-number = "8">热门
								</li>
								<li data-number = "9">耳机音箱</li>
								<li data-number = "10">电源</li>
								<li data-number = "11">电池存储卡</li>
							
								
							</ul>
						</div>
					</h2>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/dapei/dp1.jpg" />
								<img src="img/dapei/dp2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/dapei/dphot1.jpg" /></a>
									<h3><a href="">10000mAh小米移动电源2</a></h3>
									
									<p style="color: #FF6700; ">79元</p>
									<p>5.6万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">充电快，容量大，我的手机充三次满电
											<span> 来自于小白 的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot2.jpg" /></a>
									<h3><a href="">小米活塞耳机 清新版</a></h3>
									
									<p style="color: #FF6700; ">29元</p>
									<p>6.1万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">我就喜欢小米耳塞，音质没的说，杠杠滴...
											<span> 来自于建的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot3.jpg" /></a>
									<h3><a href="">小米移动电源10000mAh高配版</a></h3>
									
									<p style="color: #FF6700; ">149元</p>
									<p>1.3万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">特意为亮蓝陶瓷尊享版米6买的，评价我只打4星，之所以...
											<span> 来自于随&缘的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot4.jpg" /></a>
									<h3><a href="">小米运动蓝牙耳机</a></h3>
									
									<p style="color: #FF6700; ">129元<del style="color:gray">149元</del></p>
									<p>1.6万人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">戴上这副耳机能约到妹纸吗？
											<span> 来自于 为命名_的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot5.jpg" /></a>
									<h3><a href="">小米运动蓝牙耳机mini</a></h3>
									
									<p style="color: #FF6700; ">169元</p>
									<p>1176人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">不错，音质也不错，感觉就ktv一样。
											<span> 来自于孟凡双的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot6.jpg" /></a>
									<h3><a href="">小米降噪耳机Type-C版</a></h3>
								
									<p style="color: #FF6700; ">279元<del style="color:gray">299元</del></p>
										<p>3030人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">包装的很好，第一次用降噪耳机，开启后，全世界都安静了。
											<span> 来自于容我来打一炮的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dphot7.jpg" /></a>
									<h3><a href="">小米蓝牙音频接收器</a></h3>
								
									<p style="color: #FF6700; ">99元</p>
										<p>2020人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">带线控，语音通话功能！试了书桌音响后音质满意！再试试...
											<span> 来自于 叶穗蓉的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米胶囊耳机</a></h5>
										<p class="p1">69元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/dapei/dphot8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">热门</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/dapei/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/dapei/dp1.jpg" />
								<img src="img/dapei/dp2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/dapei/dpear1.jpg" /></a>
									<h3><a href="">小米头戴式耳机 轻松版</a></h3>
									
									<p style="color: #FF6700; ">189元<del style="color:gray">199元</del></p>
									<p>2555人评价</p>
									<div class="box-goodstop" style="background-color:red">享9.5折 </div>
									<div class="box-goodsnone">
										<a href="#">物流超快，不到一天就到了，听着耳机里的告白气球...
											<span> 来自于甘振的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear2.jpg" /></a>
									<h3><a href="">小米胶囊耳机</a></h3>
									
									<p style="color: #FF6700; ">69元</p>
									<p>4.2万人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">一如既往的好！女汉子可以撩下客服妹子嘛
											<span> 来自于失控的疯子的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear3.png" /></a>
									<h3><a href="">小米圈铁耳机Pro</a></h3>
									
									<p style="color: #FF6700; ">149元</p>
									<p>2.4万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">我要客服小姐姐给我一个吻就完美了
											<span> 来自于李松的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear4.jpg" /></a>
									<h3><a href="">小米随身蓝牙音箱</a></h3>
								
									<p style="color: #FF6700; ">69元</p>
										<p>2.1万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">小东西，大声音，很喜欢，听说客服妹子很有才，帮我作个...
											<span> 来自于永夜未央 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear5.jpg" /></a>
									<h3><a href="">小米小钢炮蓝牙音箱2</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>2.9万人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">超爱，客服妹子，可以请你跳支舞吗？
											<span> 来自于赵至江的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear6.jpg" /></a>
									<h3><a href="">1MORE好声音入耳式耳机 金色</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>2478人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">失恋了，买个耳机陶醉，但是耳机的音效让我又有了重新面...
											<span> 来自于小史的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpear7.jpg" /></a>
									<h3><a href="">小米米兔音箱</a></h3>
									
									<p style="color: #FF6700; ">99元</p>
									<p>2240人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">我没别的要求，就希望客服妹子回复我，不要是抠脚大...
											<span> 来自于杨再清 的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米蓝牙音箱</a></h5>
										<p class="p1">199元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/dapei/dpear8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">耳机音箱</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/dapei/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/dapei/dp1.jpg" />
								<img src="img/dapei/dp2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/dapei/dpdy1.jpg" /></a>
									<h3><a href="">小米移动电源10000mAh高配版</a></h3>
									
									<p style="color: #FF6700; ">149元</p>
									<p>1.2万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">手感很好，总体都不错，下次出门再也不怕没电了
											<span> 来自于美好的回忆的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy2.jpg" /></a>
									<h3><a href="">小米移动电源2C  20000mAh</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>410人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">比我用的第一代20000毫安的清了，也能快充了，很...
											<span> 来自于1179189545 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy3.jpg" /></a>
									<h3><a href="">小米移动电源5000mAh</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>10.5万人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">炒鸡喜欢，又薄，电量一天又完全足够，就是冬天握着有点...
											<span> 来自于蒋明亮的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy4.jpg" /></a>
									<h3><a href="">小米移动电源2C  20000mAh</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>410人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">比我用的第一代20000毫安的清了，也能快充了，很...
											<span> 来自于1179189545 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy5.jpg" /></a>
									<h3><a href="">10000mAh小米移动电源2</a></h3>
									
									<p style="color: #FF6700; ">79元</p>
									<p>5.5万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">这充电宝实在是太精致了，非常赞。。看我这么认真评价还..
											<span> 来自于董奔奔的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy6.jpg" /></a>
									<h3><a href="">小米二合一数据线</a></h3>
									
									<p style="color: #FF6700; ">19.9元</p>
									<p>1.2万人评价</p>
								<!--  	<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">简洁清晰，精致，性价比高，最爱小米
											<span> 来自于 704450093 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdy7.jpg" /></a>
									<h3><a href="">USB Type-C充电套装</a></h3>
									<!--  <p>8月10日-16日限时特惠，立减400元</p>
									<p style="color: #FF6700; ">49元</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<!--  <div class="box-goodsnone">
										<a href="#">简洁清晰，精致，性价比高，最爱小米
											<span> 来自于 704450093 的评价 </span>
										</a>
										

									</div>
									-->
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米智能插线..</a></h5>
										<p class="p1">69元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/dapei/dpdy8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电源</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/dapei/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/dapei/dp1.jpg" />
								<img src="img/dapei/dp2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/dapei/dpdc1.jpg" /></a>
									<h3><a href="">ROIDMI音乐蓝牙车充</a></h3>
									
									<p style="color: #FF6700; ">99元</p>
									<p>2367人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">非常非常喜欢，就是有个毛病，太耐用，上次买那个1不带..
											<span> 来自于陈汝杰的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc2.jpg" /></a>
									<h3><a href="">小米USB充电器（二口）</a></h3>
								
									<p style="color: #FF6700; ">49元</p>
										<p>1.3万人评价</p>
								<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">此时此刻，我想让客服妹子吟诗一首，我先起个头：啊~......
											<span> 来自于叫我跃跃的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc3.jpg" /></a>
									<h3><a href="">彩虹5号电池（10粒装）</a></h3>
									
									<p style="color: #FF6700; ">9.9元</p>
									<p>11万人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">小米电池太惊艳了，很漂亮，值得买。
											<span> 来自于MR.ZHAO的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc4.jpg" /></a>
									<h3><a href="">睿米一分二点烟器</a></h3>
									
									<p style="color: #FF6700; ">79元</p>
									<p>959人评价</p>
								<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">车载蓝牙充电器的娘子来了
											<span> 来自于珅庆的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc5.jpg" /></a>
									<h3><a href="">小米USB充电器(4口)</a></h3>
									<p>1.4万人评价</p>
									<p style="color: #FF6700; ">69元</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">小身材，大能量！精致优雅的做工，风驰电掣的速度，真让...
											<span> 来自于叫小喜的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc6.png" /></a>
									<h3><a href="">SanDisk 32GB存储卡</a></h3>
									
									<p style="color: #FF6700; ">89元<del style="color:gray">98元</del></p>
									<p>2046人评价</p>
									 <div class="box-goodstop">享9.1折 </div> 
									<div class="box-goodsnone">
										<a href="#">有了好的SD卡 相机才发挥它的作用啦！帅不帅！
											<span> 来自于virgil的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/dapei/dpdc7.jpg" /></a>
									<h3><a href="">小米车载充电器</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>5.2万人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">怎么办？怎么办？入手好滑好细腻，做工超精致，怎么办？...
											<span> 来自于房超的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">SanDisk 16G..</a></h5>
										<p class="p1">44.9元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/dapei/dpdc8.png" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">电池存储卡</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/dapei/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

				</div>
				<div class="zhoubian" style="margin-top: 630px;">
					<h2 class="title">周边
						<div class="goods-list">
							<ul>
								<li data-number = "12">热门
								</li>
								<li data-number = "13">服装</li>
								<li data-number = "14">米兔</li>
								<li data-number = "15">箱包</li>
							
								
							</ul>
						</div>
					</h2>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhoubian/zb1.jpg" />
								<img src="img/zhoubian/zb2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot1.jpg" /></a>
									<h3><a href="">知吾煮715+1100ml</a></h3>
									
									<p style="color: #FF6700; ">108元</p>
									<p>56人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">好东西，看得见，用的好，赞一个
											<span> 来自于文刀锟的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot2.jpg" /></a>
									<h3><a href="">8H懒人舒适沙发</a></h3>
									
									<p style="color: #FF6700; ">629元 <del style="color:gray"> 649元</del></p>
									<p>31人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">真的喜欢，设计独特！坐着舒适！！
											<span> 来自于1068740318的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot3.jpg" /></a>
									<h3><a href="">8H乳胶床垫</a></h3>
									
									<p style="color: #FF6700; ">949元  <del style="color:gray"> 999元</del></p>
									<p>1077人评价</p>
									<div class="box-goodstop" style="background-color:red">享9.5折 </div>
									<div class="box-goodsnone">
										<a href="#">回家看到好大一个箱子，吓一跳啊，家里没人，我只能当..
											<span>蓝鲸的泪珠 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot4.jpg" /></a>
									<h3><a href="">贝医生巴氏牙刷(单支装)</a></h3>
									
									<p style="color: #FF6700; ">9.9元</p>
									<p>3人评价</p>
									<div class="box-goodstop">新品 </div>
								<!--  	<div class="box-goodsnone">
										<a href="#">简洁清晰，精致，性价比高，最爱小米
											<span> 来自于 704450093 的评价 </span>
										</a>

									</div>
									-->
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot5.jpg" /></a>
									<h3><a href="">经典百搭连帽卫衣</a></h3>
								
									<p style="color: #FF6700; ">149元</p>
										<p>563人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">质量很好，穿上也很舒服，就是下摆有点短。。。问题不大...
											<span> 来自于露洋的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot6.jpg" /></a>
									<h3><a href="">8H护颈乳胶枕</a></h3>
									
									<p style="color: #FF6700; ">199元  <del style="color:gray"> 239元</del></p>
									<p>1.4万人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">评价之后会不会有抠脚大汉冒充回复啊，还没有用，感...
											<span> 来自于冯虎的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbhot7.jpg" /></a>
									<h3><a href="">iHealth体温计</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>257人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">一直在苦恼买什么体温计给刚出生的宝宝...哈哈 作为一...
											<span> 来自于黄梓洋的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">90分旅行箱2..</a></h5>
										<p class="p1">499元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhoubian/zbhot8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">热门</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhoubian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhoubian/zb1.jpg" />
								<img src="img/zhoubian/zb2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz1.png" /></a>
									<h3><a href="">Free Tie真皮板鞋</a></h3>
									
									<p style="color: #FF6700; ">199元</p>
									<p>278人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">这是我的滑板鞋，在光滑的地上摩擦，摩擦，摩擦啊！！！
											<span> 来自于齐大力的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz2.jpg" /></a>
									<h3><a href="">米家运动鞋(智能版男款)</a></h3>
									
									<p style="color: #FF6700; ">219元<del style="color:gray"> 249元</del></p>
									<p>1.9万人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">小米妹纸，你知道这是什么吗?才买的，猜出来有奖
											<span> 来自于火 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz3.jpg" /></a>
									<h3><a href="">经典百搭连帽卫衣</a></h3>
									
									<p style="color: #FF6700; ">149元</p>
									<p>563人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">质量很好，穿上也很舒服，就是下摆有点短。。。问题不大...
											<span> 来自于露洋的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz4.png" /></a>
									<h3><a href="">小米V领短袖T桖 女款</a></h3>
									
									<p style="color: #FF6700; ">39元<del style="color:gray"> 49元</del></p>
									<p>706人评价</p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">之前买了件看看质量，很不错，给媳妇买了三件，自己又...
											<span> 来自于丿程阳、 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz5.png" /></a>
									<h3><a href="">小米短袖T桖 米兔昆仑游 女款</a></h3>
									
									<p style="color: #FF6700; ">39元 <del style="color:gray"> 49元</del></p>
									<p>651人评价</p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">尺码标准，穿起来舒服
											<span> 来自于 757693167 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz6.png" /></a>
									<h3><a href="">小米V领短袖T桖 男款</a></h3>
									
									<p style="color: #FF6700; ">39元 <del style="color:gray"> 49元</del></p>
									<p>6369人评价</p>
									<div class="box-goodstop"style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">不错！一下买了六件！全家人
											<span> 来自于906084083 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbfz7.png" /></a>
									<h3><a href="">小米V领短袖T桖  科技艺术</a></h3>
									
									<p style="color: #FF6700; ">39元<del style="color:gray"> 49元</del></p>
									<p>15124人评价</p>
									<div class="box-goodstop"style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">准备留着开学穿，哈哈哈哈，客服小姐姐，到时候我们一起...
											<span> 来自于施凯斌的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米短袖T桖</a></h5>
										<p class="p1">39元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhoubian/zbfz8.png" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">服装</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhoubian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhoubian/zb1.jpg" />
								<img src="img/zhoubian/zb2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt1.jpg" /></a>
									<h3><a href="">60cm柔软米兔抱枕</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>1366人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">哈哈哈哈哈哈哈哈哈，他在鄙视我
											<span> 来自于爱笑不代表脾气好的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt2.jpg" /></a>
									<h3><a href="">13cm皮质米兔挂饰</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>412人评价</p>
								<!--  	<div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">太实在了，我本来是买来当钥匙扣的，没想到辣么大
											<span> 来自于温小暖的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt3.jpg" /></a>
									<h3><a href="">米兔儿童书包</a></h3>
								
									<p style="color: #FF6700; ">249元</p>
										<p>401人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">不错，今年刚要上一年级，小时候希望自己有个好的书包，...
											<span> 来自于辰长之所的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt4.jpg" /></a>
									<h3><a href="">经典款米兔(25cm)</a></h3>
								
									<p style="color: #FF6700; ">49元</p>
										<p>338人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">完美的外形，细腻的品质，一直支持国产支持小米！加油！...
											<span> 来自于1191976691的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt5.png" /></a>
									<h3><a href="">小米短袖T桖 扑克脸</a></h3>
								
									<p style="color: #FF6700; ">39元<del style="color:gray"> 49元</del></p>
										<p>1100人评价</p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">我穿的是不是很帅，客服MM要不要跟我一起过七夕
											<span> 来自于千古的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt6.png" /></a>
									<h3><a href="">小米短袖T桖 程序艺术</a></h3>
									
									<p style="color: #FF6700; ">39元<del style="color:gray"> 49元</del></p>
									<p>1137人评价</p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">收到货穿了一下，三个字，好好好！客服妹子回复一下呗，...
											<span> 来自于漂泊侠士的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbmt7.png" /></a>
									<h3><a href="">小米短袖T桖  吃豆人</a></h3>
									
									<p style="color: #FF6700; ">39元<del style="color:gray"> 49元</del></p>
									<p>1540人评价</p>
									<div class="box-goodstop" style="background-color:red">享8折 </div>
									<div class="box-goodsnone">
										<a href="#">不知不觉买了很多小米产品了！感谢小米！
											<span> 来自于 相濡以沫~的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米V领短袖...</a></h5>
										<p class="p1">39元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhoubian/zbmt8.png" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">米兔</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhoubian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/zhoubian/zb1.jpg" />
								<img src="img/zhoubian/zb2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb1.jpg" /></a>
									<h3><a href="">90分旅行包 20寸</a></h3>
									
									<p style="color: #FF6700; ">299元</p>
									<p>2.4万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">一直想买个属于自己的行李箱，碰上小米816多好，妹...
											<span> 来自于谢同林的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb2.jpg" /></a>
									<h3><a href="">90分旅行包  24寸</a></h3>
								
									<p style="color: #FF6700; ">349元</p>
										<p>2.4万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">听说 客服妹子特别有才，能歌能舞能作诗啊！给...
											<span> 来自于※YQY...@的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb3.jpg" /></a>
									<h3><a href="">90分轻户外旅行洗漱包</a></h3>
									
									<p style="color: #FF6700; ">39元</p>
									<p>4668人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">这么可爱的小包包，真是让人欲罢不能啊~客服妹纸，我带...
											<span> 来自于MaxLee的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb4.jpg" /></a>
									<h3><a href="">小米简约头层小牛皮钱包</a></h3>
									
									<p style="color: #FF6700; ">129元</p>
									<p>5743人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">完美
											<span> 来自于珅度 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb5.jpg" /></a>
									<h3><a href="">小米经典商务双肩包</a></h3>
								
									<p style="color: #FF6700; ">89元<del style="color:gray"> 99元</del></p>
									<p>1.3万人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">听说客服妹子无所不能，麻烦给我讲讲5-3题，我快受不了
											<span> 来自于良平臣的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb6.jpg" /></a>
									<h3><a href="">小米极简都市双肩包</a></h3>
									
									<p style="color: #FF6700; ">149元</p>
									<p>2.6万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">据说，小黄车和小米包包是绝配哦，你觉得呢客服姐姐
											<span> 来自于何世林的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/zhoubian/zbxb7.jpg" /></a>
									<h3><a href="">小米多功能都市休闲胸包</a></h3>
									
									<p style="color: #FF6700; ">69元</p>
									<p>3.4万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">任你名牌成群，奢侈无双，也不及我帅气逼人，灵动张扬...
											<span> 来自于上课不睁眼的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米学院休闲...</a></h5>
										<p class="p1">79元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/zhoubian/zbxb8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">箱包</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/zhoubian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

				</div>
				<div class="peijian" style="margin-top: 630px;">

					<h2 class="title">配件
						<div class="goods-list">
							<ul>
								<li data-number = "16">热门
								</li>
								<li data-number = "17">保护套</li>
								<li data-number = "18">贴膜</li>
								<li data-number = "19">其他配件</li>
							
								
							</ul>
						</div>
					</h2>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/peijian/pj1.jpg" />
								<img src="img/peijian/pj2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/peijian/pjhot1.jpg" /></a>
									<h3><a href="">小米6 超薄皮质保护套</a></h3>
									
									<p style="color: #FF6700; ">39元</p>
									<p>1239人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">套套到手了！就是还缺个小米6和女朋友！客服聊不聊？
											<span> 来自于叫哥刺猬的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot2.jpg" /></a>
									<h3><a href="">小米6 硅胶保护套</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>6854人评价 </p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">蛮好，手感不错哦，里面也很好
											<span> 来自于结婚后 再改昵称 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot3.jpg" /></a>
									<h3><a href="">小米6 弧边高透膜</a></h3>
									
									<p style="color: #FF6700; ">29元</p>
									<p>6684人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">在车里贴的，一次成功，哈哈哈哈
											<span> 来自于刘宁的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot4.jpg" /></a>
									<h3><a href="">小米6 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">19元</p>
										<p>8071人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">倒是有三张膜，就是贴不好。。。
											<span> 来自于泛泛的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot5.jpg" /></a>
									<h3><a href="">小米 Max 2 智能翻盖支架保护套></h3>
								
									<p style="color: #FF6700; ">59元</p>
										<p>360人评价</p>
									<div class="box-goodstop">新品 </div>
									<div class="box-goodsnone">
										<a href="#">手感很好，看着大手机，老爹喜欢~~
											<span> 来自于*危* 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot6.jpg" /></a>
									<h3><a href="">红米4X 天鹅绒质感保护壳</a></h3>
									
									<p style="color: #FF6700; ">29元</p>
									<p>2860人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">里面毛茸茸的，设计不错
											<span> 来自于李秋咨的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjhot7.jpg" /></a>
									<h3><a href="">小米6 高透软胶保护套</a></h3>
								
									<p style="color: #FF6700; ">19元</p>
										<p>1685人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">还没打开，米6里面有赠送同款，我望着这个包装盒，无言...
											<span> 来自于179079849的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米Max 2 级..</a></h5>
										<p class="p1">49元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/peijian/pjhot8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">热门</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/peijian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/peijian/pj1.jpg" />
								<img src="img/peijian/pj2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/peijian/pjbh1.jpg" /></a>
									<h3><a href="">小米6 硅胶保护套</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>8649人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">手感超好 就差小米6了 快让我抢到手吧
											<span> 来自于丝概造型_小明的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh2.jpg" /></a>
									<h3><a href="">红米Note 4X 高透软胶保护套 透明</a></h3>
									
									<p style="color: #FF6700; ">19元</p>
									<p>6666人评价</p>
									<!-- <div class="box-goodstop">享9折 </div> -->
									<div class="box-goodsnone">
										<a href="#">什么玩意儿啊？孔都错位了，失望了
											<span> 来自于刘军的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh3.jpg" /></a>
									<h3><a href="">小米 Note 2 高透软胶保护套</a></h3>
								
									<p style="color: #FF6700; ">9.9元<del style="color:gray"> 19元</del></p>
										<p>2576人评价</p>
									<div class="box-goodstop" style="background-color:red">享6折 </div>
									<div class="box-goodsnone">
										<a href="#">非常匹配，手感一级棒，满意的一次购物
											<span> 来自于走马的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh4.jpg" /></a>
									<h3><a href="">小米5S plus 智能翻盖保护套</a></h3>
									
									<p style="color: #FF6700; ">49元</p>
									<p>3724人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">很漂亮精致，顺丰第二天就送到了，但是我的手机什么时候...
											<span> 来自于174226723的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh5.jpg" /></a>
									<h3><a href="">小米5S 智能立显点阵式保护套</a></h3>
									
									<p style="color: #FF6700; ">49元<del style="color:gray"> 79元</del></p>
									<p>4095人评价</p>
									<div class="box-goodstop" style="background-color:red">享7折 </div>
									<div class="box-goodsnone">
										<a href="#">外形漂亮，前面对着灯光，灯光透过点面，看着晶莹闪亮，...
											<span> 来自于dyj的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh6.jpg" /></a>
									<h3><a href="">小米Max 超薄肤感软胶保护套</a></h3>
									
									<p style="color: #FF6700; ">29元</p>
									<p>1.2万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">还不错喜欢，客服可以给我介绍一个妹子不？给我介绍一...
											<span> 来自于清晨的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjbh7.jpg" /></a>
									<h3><a href="">红米4高配版 超薄肤感软胶保护套</a></h3>
									
									<p style="color: #FF6700; ">19元</p>
									<p>1031人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">一如既往喜欢小米，外观漂亮，手感超棒！就是不知道客服妹...
											<span> 来自于朕.惊天下的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">红米Note4 智..</a></h5>
										<p class="p1">39元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/peijian/pjbh8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">保护套</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/peijian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/peijian/pj1.jpg" />
								<img src="img/peijian/pj2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/peijian/pjtm1.jpg" /></a>
									<h3><a href="">红米Note 4X 标准高透贴膜</a></h3>
									
									<p style="color: #FF6700; ">9.9元<del style="color:gray"> 19元</del></p>
									<p>1.2万人评价</p>
									<div class="box-goodstop"style="background-color:red">享折 </div>
									<div class="box-goodsnone">
										<a href="#">质量真的不错，不会贴，客服姐姐来教教我呗
											<span> 来自于笑~笑的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm2.jpg" /></a>
									<h3><a href="">小米平板2 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">29元</p>
										<p>1839人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">小米平板最好也是必须的保护神奇
											<span> 来自于Zdz的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm3.jpg" /></a>
									<h3><a href="">小米手机5 钢化玻璃贴膜</a></h3>
									
									<p style="color: #FF6700; ">29元</p>
									<p>4.8万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">客服妹子钢化膜怎么贴啊？
											<span> 来自于吧hill里的老K的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm4.jpg" /></a>
									<h3><a href="">小米5S plus 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">9.9元<del style="color:gray"> 19元</del></p>
										<p>5637人评价</p>
									<div class="box-goodstop" style="background-color:red">享6折 </div>
									<div class="box-goodsnone">
										<a href="#">同时付款的手机没有到，膜却先到了，客服妹子，你让我贴...
											<span> 来自于李某某的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm5.jpg" /></a>
									<h3><a href="">小米5S 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">19元</p>
										<p>7320人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">嗯贴歪了
											<span> 来自于U宇 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm6.jpg" /></a>
									<h3><a href="">红米4 高配版 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">19元</p>
										<p>3423</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">服务非常好，对顾客非常负责，服务质量上乘，在这里祝...
											<span> 来自于WSJ建軍的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjtm7.jpg" /></a>
									<h3><a href="">小米Max 标准高透贴膜</a></h3>
								
									<p style="color: #FF6700; ">19元</p>
										<p>1.4万人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">膜与手机不一样大 小了点
											<span> 来自于饶坤的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">红米Pro 标准..</a></h5>
										<p class="p1">19元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/peijian/pjtm8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">贴膜</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/peijian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="box-allgoods">
						<div class="box-bigimg">
							<a href="#"> <img src="img/peijian/pj1.jpg" />
								<img src="img/peijian/pj2.jpg" />
							</a>
						</div>
						<div class="box-goods">
							<ul>
								<li>
									<a href="#"> <img src="img/peijian/pjqt1.png" /></a>
									<h3><a href="">悦迷机械键盘</a></h3>
									
									<p style="color: #FF6700; ">299元</p>
									<p>1142人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">本想试试运气，没想到真的中奖了。质量是真的不错，手感...
											<span> 来自于王立强的评价 </span>
										</a>

									</div>

								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt2.jpg" /></a>
									<h3><a href="">小米指环支架  金色</a></h3>
									
									<p style="color: #FF6700; ">19元</p>
									<p>1.9万人评价</p>
								<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">只羡鸳鸯不羡仙，客服妹妹是否单身呢？希望与客服妹妹有...
											<span> 来自于总统的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt3.jpg" /></a>
									<h3><a href="">小米USB-C电源适配器(45W)</a></h3>
								
									<p style="color: #FF6700; ">94元<del style="color:gray"> 99元</del></p>
										<p>898人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">超酷的充电器留在家里用
											<span> 来自于惜言犀语的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt4.jpg" /></a>
									<h3><a href="">蓝牙语音体感遥控器</a></h3>
								
									<p style="color: #FF6700; ">99元</p>
										<p>3976人评价</p>
									<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">不问你为何流眼泪
											<span> 来自于一休 的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt5.jpg" /></a>
									<h3><a href="">小米便携鼠标</a></h3>
									
									<p style="color: #FF6700; ">94元<del style="color:gray"> 99元</del></p>
									<p>1.1万人评价</p>
									<div class="box-goodstop" style="background-color:red">享9.5折 </div>
									<div class="box-goodsnone">
										<a href="#">第一次召唤客服妹子了，有点小激动
											<span> 来自于喜欢的让你总是万般好的...的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt6.jpg" /></a>
									<h3><a href="">USB-C至HDMI多功能转接器</a></h3>
									
									<p style="color: #FF6700; ">129元<del style="color:gray"> 149元</del></p>
									<p>1762人评价</p>
									<div class="box-goodstop" style="background-color:red">享9折 </div>
									<div class="box-goodsnone">
										<a href="#">功能没得说，直接666，唯一一点就是外观没那么大气...
											<span> 来自于小管的评价 </span>
										</a>

									</div>
								</li>
								<li>
									<a href="#"> <img src="img/peijian/pjqt7.jpg" /></a>
									<h3><a href="">USB Type-C 转接头</a></h3>
									
									<p style="color: #FF6700; ">5元</p>
									<p>7.6万人评价</p>
										<!--  <div class="box-goodstop">享9折 </div>-->
									<div class="box-goodsnone">
										<a href="#">物流超级快！次日达！客服小姐姐，别害羞，跟我回家
											<span> 来自于梦里、花落的评价 </span>
										</a>

									</div>
								</li>

								<li id="li-allsmalldiv">
									<div class="li-smalldiv">
										<h5><a href="#">小米二合一数..</a></h5>
										<p class="p1">24.9元</p>
										<div class="li-smalldivimg">
											<a href="#"> <img src="img/peijian/pjqt8.jpg" /></a>
										</div>
									</div>
									<div class="li-smalldiv">
										<h2>
										<a href="#">浏览更多</a></h2>
										<p class="p2">
											<a href="#">其他配件</a>
										</p>
										<div class="li-smalldiv2">
											<a href="#"><img src="img/peijian/more.png" /></a>
										</div>

									</div>
								</li>

							</ul>
						</div>
					</div>

				</div>
				<div class="weimi">
					<div class="tuijian" style=" margin-top: 630px;">
						<h2 id="h22">
					为你推荐
					<a>&gt;</a>
					<a>&lt;</a>
					
				</h2>
						<ul class="tuijian-ul" id="for">
							
							
							
							
						</ul>

					</div>
				</div>
				<div class="reping" style="height: 475px;">
					<h2 class="title">热评产品</h2>
					<div>
						<a href="">
							<img src="img/reping/2017-08-17_140316.png" />
						</a>
					</div>
					<div>
						<a href="">
							<img src="img/reping/2017-08-17_140420.png" />
						</a>
					</div>
					<div>
						<a href="">
							<img src="img/reping/2017-08-17_140507.png" />
						</a>
					</div>
					<div style="margin-right: 0;">
						<a href="">
							<img src="img/reping/2017-08-17_140526.png" />
						</a>
					</div>

				</div>
				<div class="neirong">
					<h1 class="title">内容</h1>
					<div style="border-top:1px solid;color:orange">
						<div id="hali1">
							<span class="span1">&lt;</span>
							<span class="span2">&gt;</span>
						</div>
						<ul>
							<li>
								<h2><a href="" style="color:orange">图书</a></h2>
								<h1><a href="#">哈利·波特与被诅咒的孩子</a></h1>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="img/mipho/nr4.png" /></a>

							</li>
							<!-- <li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li>
							<li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li> -->
						</ul>
					</div>
					<div style="border-top:1px solid;color:green">
						<div id="hali2">
							<span class="span1">&lt;</span>
							<span class="span2">&gt;</span>
						</div>
						<ul>
							<li>
								<h2><a href="" style="color:green">COUI主题</a></h2>
								<h1><a href="#">蔻丁定制主题</a></h1>
								<p>
									<a href="#">6张锁屏壁纸，给每天不同的心情 </a>
								</p>
								<h5><a href="#">免费</a></h5>
								<a href="#"><img src="img/mipho/nr3.jpg" /></a>

							</li>
							<!-- <li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li>
							<li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li> -->
						</ul>
					</div>
					<div style="border-top:1px solid;color:red">
						<div id="hali3">
							<span class="span1">&lt;</span>
							<span class="span2">&gt;</span>
						</div>
						<ul>
							<li>
								<h2><a href="" style="color:red">游戏</a></h2>
								<h1><a href="#">蔻丁手游模拟器</a></h1>
								<p>
									<a href="#">在电脑上玩遍所有蔻丁游戏 </a>
								</p>
								<h5><a href="#">免费</a></h5>
								<a href="#"><img src="img/mipho/nr2.png" /></a>

							</li>
							<!-- <li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li>
							<li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li> -->
						</ul>
					</div>
					<div style="margin-right: 0; border-top:1px solid;color:blue">
						<div id="hali4">
							<span class="span1">&lt;</span>
							<span class="span2">&gt;</span>
						</div>
						<ul>
							<li>
								<h2><a href="" style="color:blue">应用</a></h2>
								<h1><a href="#">2017金米奖</a></h1>
								<p>
									<a href="#">最优秀的应用和游戏 </a>
								</p>
								<h5><a href="#"></a></h5>
								<a href="#"><img src="img/mipho/nr1.png" /></a>

							</li>
							<!-- <li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li>
							<li>
								<h2><a href="">图书</a></h2>
								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </a>
								</p>
								<h5><a href="#">29.37元</a></h5>
								<a href="#"><img src="foot/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" /></a>
							</li> -->
						</ul>
					</div>
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
							<a href="#"><img src="img/foot/logo-footer.png" /> </a>
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
						<a href="#"><img src="img/foot/truste.png" width="83px" /></a>
						<a href="#"><img src="img/foot/v-logo-1.png" /></a>
						<a href="#"><img src="img/foot/v-logo-2.png" //></a>
						<a href="#"><img src="img/foot/v-logo-3.png" //></a>
					</div>

				</div>
				<div class="bottom-end">
					<p class="bottom-end-p" style="font-family:'仿宋';">探索黑科技，小米为发烧而生!</p>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			window.onload = function() {
				//轮播
				var index = 0;
				var lis = document.querySelectorAll(".dian li");
				var lunboa = document.querySelector(".lunbo-img>a");
				for(var i = 0; i < lis.length; i++) {
					lis[i].onclick = function() {
						for(var i = 0; i < lis.length; i++) {
							lis[i].removeAttribute("class");
						}
						var href = this.getAttribute("data-href");
						var img = this.getAttribute("data-img");
						lunboa.href = href;
						lunboa.firstElementChild.src = img;
						this.className = "active"
						index = this.getAttribute("data-index") * 1;
					}

				}
				var jiantou = document.querySelectorAll(".jiantou a")
				jiantou[0].onclick = function() {
					if(index == 0) {
						index = lis.length;
					}
					lis[index - 1].click();
				}

				jiantou[1].onclick = function() {
					if(index == lis.length - 1) {
						index = -1;
					}
					lis[index + 1].click();
				}
				//								setInterval(function(){
				//									jiantou[1].click();
				//								},4000);
				//								

				//明星单品	
				setInterval(function() {
					spans[0].click();
				}, 5000)
				setInterval(function() {
					spans[1].click();
				}, 5000)
				var spans = document.querySelectorAll("#h2 a");
				var ul = document.querySelector(".mingxin-ul");
				spans[0].style.color = "#33333F"
				spans[0].className = "active";
				spans[1].onclick = function() {
					if(parseInt(ul.style.marginLeft) < 0) {
						spans[1].style.color = "#E0E0E0"
						spans[0].style.color = "#33333F"
						spans[1].className = "";
						spans[0].className = "active";
						var marginleft = parseInt(ul.style.marginLeft);
						var left = -1240;
						var donghua2 = setInterval(function() {
							left += 20;
							ul.style.marginLeft = left + "px";
							if(left > 0) {
								clearInterval(donghua2);
							}
						}, 10)
					}

				}
				spans[0].onclick = function() {
					if(parseInt(ul.style.marginLeft) != -1240) {
						spans[0].style.color = "#E0E0E0"
						spans[1].style.color = "#33333F"
						spans[0].className = "";
						spans[1].className = "active";
						var marginleft = parseInt(ul.style.marginLeft);
						var left = 0;
						var donghua2 = setInterval(function() {
							left -= 20;
							ul.style.marginLeft = left + "px";

							if(left < -1226) {
								clearInterval(donghua2);

							}
						}, 10)
					}

				}
				//为你推荐
				var spanss = document.querySelectorAll("#h22 a");
				var ulss = document.querySelector(".tuijian-ul")
				ulss.style.marginLeft = 0;
				spanss[0].style.color = "#33333F"
				spanss[0].className = "active";
				spanss[1].onclick = function() {
					if(parseInt(ulss.style.marginLeft) < 0) {
						var marginleft = parseInt(ulss.style.marginLeft);
						if(marginleft > -1250) {

							spanss[1].style.color = "#E0E0E0"
							spanss[0].style.color = "#33333F"
							spanss[1].className = "";
							spanss[0].className = "active";
						}
						var left = 0;
						var donghua3 = setInterval(function() {
							left += 20;
							ulss.style.marginLeft = marginleft + left + "px";
							if(left > 1220) {
								clearInterval(donghua3);
							}
						}, 10)
					}
				}
				spanss[0].onclick = function() {
					var marginleft = parseInt(ulss.style.marginLeft);
					var left = 0;
					if(marginleft < -1240) {
						spanss[0].className = "";
						spanss[0].style.color = "#E0E0E0"
						spanss[1].style.color = "#33333F"
						spanss[1].className = "active";
					}

					if(parseInt(ulss.style.marginLeft) > -3720) {
						var donghua4 = setInterval(function() {
							left -= 20;
							ulss.style.marginLeft = marginleft + left + "px";
							if(left < -1220) {
								clearInterval(donghua4);
							}
						}, 10)
					}

				}
				//商品			
				var goods = document.querySelectorAll(".goods-list li")
				for(var i = 0; i < goods.length; i++) {
					//可以用let规定i，这样可以直接获取到i；
					goods[i].parentNode.parentNode.parentNode.parentNode.children[1].style.display = "block";
					goods[i].onmouseover = function() {
						var numbers = this.getAttribute("data-number");
						var n = parseInt(numbers) + 1;
						if(numbers >= 0 && numbers <= 3) {
							var k = 0;
						}
						if(numbers >= 4 && numbers <= 7) {
							var k = 4;
						}
						if(numbers >= 8 && numbers <= 11) {
							var k = 8;
						}
						if(numbers >= 12 && numbers <= 15) {
							var k = 12;
						}
						if(numbers >= 16 && numbers <= 19) {
							var k = 16;
						}
						for(var l = k; l < k + 4; l++) {
							goods[l].style.color = "#333333";
							goods[l].style.borderColor = "#F5F5F0";
							goods[l].parentNode.parentNode.parentNode.parentNode.children[l - k + 1].style.display = "none";
						}

						this.style.color = "#ff6700"
						this.style.borderBottomColor = "#ff6700"

						this.parentNode.parentNode.parentNode.parentNode.children[n - k].style.display = "block"

					}

				}
			}
			var inputas = document.querySelectorAll("form>a");

			document.getElementById("sousuo").onfocus = function() {
				for(var i = 0; i < inputas.length; i++) {
					inputas[i].style.display = "none";
				}
			}
			document.getElementById("sousuo").onblur = function() {
				for(var i = 0; i < inputas.length; i++) {
					inputas[i].style.display = "block";
				}
			}
		</script>

	</body>

</html>