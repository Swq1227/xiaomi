<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>后台管理</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">
<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link href="css/widgets.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link href="css/xcharts.min.css" rel=" stylesheet">
<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
	$(function() {
		$("#makesure").click(function() {
		alert($("#goodsopt").find("option:selected").text());
			$.ajaxFileUpload({
				url : "upd_GoodsServletSure",
				secureuri : false,
				data : {
					newgname : $("#g_name").val(),
					gcontent : $("#g_content").val(),
					gnum : $("#g_num").val(),
					gprice : $("#g_price").val(),
					tname : $("#opt").find("option:selected").text(),
					gname:$("#goodsopt").find("option:selected").text(),
					grate:$("#g_rate").val(),
				},
				fileElementId : "file",
				dataType : "text",
				success : function(res) {
					alert("修改成功！");
					location.reload();
				},
			});
		});
		
		
		
	});
</script>


</head>

<body>
	<!-- container section start -->
	<section id="container" class="">

		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom"></div>
			</div>
			<!--logo start-->
			<a href="link/admin_manager_main.html" class="logo">CodingMall <span
				class="lite">后台管理</span></a>
			<!--logo end-->

		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class="" href="link/admin_manager_main.html">
							<i class="icon_house_alt"></i> <span>后台管理</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>商品类别管理</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							 <li><a class="" href="link/admin_add_Types.html">商品类别添加</a></li>                          
                          <li><a class="" href="del_typesServlet">商品类别删除</a></li>
                          <li><a class="" href="upd_typesServlet">商品类别修改</a></li>
                          <li><a class="" href="sel_typesServlet">全部商品类别</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>商品管理</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
								<li><a class="" href="add_GoodsServlet">商品添加</a></li>                          
                          <li><a class="" href="del_GoodsServlet">商品删除</a></li>
                          <li><a class="" href="upd_GoodsServlet">商品修改</a></li>
                          <li><a class="" href="sel_GoodsServlet">全部商品</a></li>
						</ul></li>
					<li><a class="" href="manager_user_Servlet"> <i
							class="icon_genius"></i> <span>用户管理</span>
					</a></li>
					<li><a class="" href="link/admin_manager_tips.html"> <i
							class="icon_piechart"></i> <span>更多功能</span>

					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a
								href="link/admin_manager_main.html">后台管理</a></li>
							<li><i class="icon_document_alt"></i>商品管理</li>
							<li><i class="fa fa-file-text-o"></i>修改商品</li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="">
						<!-- Edit profile form (not working)-->
						<form class="form-horizontal">
							<!-- Cateogry -->
							<div class="form-group">
								<label class="control-label col-lg-2">选择要修改的商品</label>
								<div class="col-lg-10">
									<select id="goodsopt" class="form-control">
										<!--  <option>- 请选择商品类别 -</option>-->
										<c:forEach var="list1" items="${requestScope.list1 }"
											varStatus="status">
											<option value="">${list1.getGname() }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!-- g_name -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="g_name">修改商品名</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="g_name">
								</div>
							</div>
							<!-- g_content -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="g_content">修改商品简介</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="g_content">
								</div>
							</div>
							<!-- g_content -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="g_content">修改商品热门评价</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="g_rate">
								</div>
							</div>
							<!-- g_num -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="g_num">修改商品库存</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="g_num">
								</div>
							</div>
							<!-- g_price -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="g_price">商品价格：￥</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="g_price">
								</div>
							</div>

							<!-- Cateogry -->
							<div class="form-group">
								<label class="control-label col-lg-2">修改商品类别</label>
								<div class="col-lg-10">
									<select id="opt" class="form-control">
										<!--  <option>- 请选择商品类别 -</option>-->
										<c:forEach var="list" items="${requestScope.list }"
											varStatus="status">
											<option value="">${list.getTname() }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!-- Tags -->
							<div class="form-group">
								<label class="control-label col-lg-2" for="exampleInputFile">修改商品图像</label>
								<input class="col-lg-10" name="file" type="file" id="file">
							</div>
							<!-- Buttons -->
							<div class="form-group">
								<!-- Buttons -->
								<div class="col-lg-offset-2 col-lg-9">
									<button type="submit" id="makesure" class="btn btn-primary">确认修改</button>
									<button type="reset" class="btn btn-default">重置</button>
								</div>
							</div>
						</form>
					</div>
				</div>

			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<!-- jQuery full calendar -->
	<script src="js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="js/sparkline-chart.js"></script>
	<script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
</body>
</html>
