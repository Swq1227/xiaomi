
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
					<a href="#">�ֻ� �绰��<span>></span></a>
					<ul class="impor">
						<li class="menu-nonegoods">
							<div>
								<ul class="sub-menu">*/
						
							//���������ӵ�ҳ���У���������������ʾ��ʽ
							var cHtml = "";
							$.each(datas, function(index, value) {
								cHtml += "<li><a href='#'>" +value.tname+ " style='width:160px;heigth:200px'>"+"<br> ������" 
								+value.name +"<br>���ߣ�"+value.author+"<br>�۸�"+value.price+"<br>������"+value.sale+"<br>��棺"+ 
								value.num+"<a href=''><br><br>���빺�ﳵ</a>"+"</div></li>";//��������
							});

							$("#demo").html(cHtml);//���������ӵ�ҳ����
						
					
					
				},
				error : function() {
					alert("�����������");
				}
			});
			
		});
