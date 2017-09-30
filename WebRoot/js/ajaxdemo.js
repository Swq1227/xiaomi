
$(function() {
	
			$.ajax({
				url : "TypesServlet",
				data : {},
				type : "post",
				dataType : "json",
				success : function(data) {
					var datas=data;
				alert(datas);
					  
							/*<li>
					<a href="#">手机 电话卡<span>></span></a>
					<ul class="impor">
						<li class="menu-nonegoods">
							<div>
								<ul class="sub-menu">*/
						
							//将数据增加到页面中，这里设置数据显示样式
							var cHtml = "";
							$.each(datas, function(index, value) {
								cHtml += "<li><a href='#'>" +value.tname+ " style='width:160px;heigth:200px'>"+"<br> 书名：" 
								+value.name +"<br>作者："+value.author+"<br>价格："+value.price+"<br>销量："+value.sale+"<br>库存："+ 
								value.num+"<a href=''><br><br>加入购物车</a>"+"</div></li>";//处理数据
							});

							$("#demo").html(cHtml);//将数据增加到页面中
						
					
					
				},
				error : function() {
					alert("错误，请检查代码");
				}
			});
			
		});
