<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="../img/favicon.png">

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
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
	<link rel="stylesheet" href="../css/fullcalendar.css">
	<link href="css/widgets.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet">	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="../js/html5shiv.js"></script>
      <script src="../js/respond.min.js"></script>
      <script src="../js/lte-ie7.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$("#makesure").click(function() {
			alert($("#t_id").val());
			$.ajax({
				url : "upd_typesServletSure",
				data : {
					t_id : $("#t_id").val(),
					t_name:$("#t_name").val(),
				},
				type : "post",
				dataType : "text",
				success : function(res) {
				alert(res);
					if (res=="2") {
						alert("修改成功！");
						location.reload(); 
					
					}else{
						alert("请检查输入是否正确");
					}
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
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>
            <!--logo start-->
            <a href="link/admin_manager_main.html" class="logo">CodingMall <span class="lite">后台管理</span></a>
            <!--logo end-->

      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                    <a class="" href="link/admin_manager_main.html">
                          <i class="icon_house_alt"></i>
                          <span>后台管理</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>商品类别管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="link/admin_add_Types.html">商品类别添加</a></li>                          
                          <li><a class="" href="del_typesServlet">商品类别删除</a></li>
                          <li><a class="" href="upd_typesServlet">商品类别修改</a></li>
                          <li><a class="" href="sel_typesServlet">全部商品类别</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>商品管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                         	 <li><a class="" href="add_GoodsServlet">商品添加</a></li>                          
                          <li><a class="" href="del_GoodsServlet">商品删除</a></li>
                          <li><a class="" href="upd_GoodsServlet">商品修改</a></li>
                          <li><a class="" href="sel_GoodsServlet">全部商品</a></li>
                      </ul>
                  </li>
                  <li>
                      <a class="" href="manager_user_Servlet">
                          <i class="icon_genius"></i>
                          <span>用户管理</span>
                      </a>
                  </li>
                  <li>                     
                      <a class="" href="link/admin_manager_tips.html">
                          <i class="icon_piechart"></i>
                          <span>更多功能</span>
                          
                      </a>
                                         
                  </li>
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
						<li><i class="fa fa-home"></i><a href="link/admin_manager_main.html">后台管理</a></li>
						<li><i class="fa fa-laptop"></i>商品类别管理</li>
						<li><i class="fa fa-laptop"></i>商品类别修改</li>							  	
					</ol>
				</div>
			</div>
			
			 <div class="row">
				<!-- 修改前先展示 -->
					<div class="col-md-12">
						<div class="panel-body">
							<table class="table bootstrap-datatable countries">
								<thead>
									<tr>
										<th></th>
										<th>类别id</th>
										<th>类别名</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${requestScope.list }"
										varStatus="status">
										<tr>
											<td></td>
											<td>${list.getTid() }</td>
											<td>${list.getTname() }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>


					</div>

					<!-- 让用户去选择 -->
					<div class="col-md-12"></div>
					<hr>
					<div class="form-group">
						<div class="row"> 
						<label class="control-label col-lg-2" for="title">输入要修改类别的id</label>
						<div class="col-md-10">
							<input type="text" class="form-control" id="t_id">
						</div>
						</div>
						<div class="row"> 
						<label class="control-label col-lg-2" for="title">修改后的类别名称</label>
						<div class="col-md-10">
							<input type="text" class="form-control" id="t_name">
						</div>
						</div>
						<div class="col-md-10">
							<button type="submit" class="btn btn-primary" id="makesure">确认修改</button>
						</div>
					</div>
			</div>
       
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="../js/calendar-custom.js"></script>
	<script src="../js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js" ></script>
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
  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%');
          }
        });
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });
	  
	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});



  </script>

  </body>
</html>
