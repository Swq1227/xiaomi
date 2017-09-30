package cn.coding52.CodingMart.util;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.coding52.CodingMart.model.Goods;

public class uploadUtil {
	private static final String UPLOAD_DIRECTORY = "upload";
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
	
	public static Goods uploadfile(HttpServletRequest request){
		Goods goods = new Goods();
		// 配置上传参数
				DiskFileItemFactory factory = new DiskFileItemFactory();
				String fileName = "";
				// 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
				factory.setSizeThreshold(MEMORY_THRESHOLD);
				// 设置临时存储目录
				factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

				ServletFileUpload upload = new ServletFileUpload(factory);

				// 设置最大文件上传值
				upload.setFileSizeMax(MAX_FILE_SIZE);

				// 设置最大请求值 (包含文件和表单数据)
				upload.setSizeMax(MAX_REQUEST_SIZE);

				// 中文处理
				upload.setHeaderEncoding("UTF-8");
				// 构造临时路径来存储上传的文件
				// 这个路径相对当前应用的目录
				String uploadPath = request.getServletContext().getRealPath("./")+ UPLOAD_DIRECTORY;
				// 如果目录不存在则创建
				File uploadDir = new File(uploadPath);
				if (!uploadDir.exists()) {
					uploadDir.mkdir();
				}

				try {
					// 解析请求的内容提取文件数据
					List<FileItem> formItems = upload.parseRequest(request);
					if (formItems != null && formItems.size() > 0) {
						// 迭代表单数据
						for (FileItem item : formItems) {
							// 处理不在表单中的字段
							if (!item.isFormField()) {
								fileName = new File(item.getName()).getName();
								System.out.println(fileName);
								String filePath= uploadPath+ File.separator+ fileName;
								File storeFile = new File(filePath);
								// 在控制台输出文件的上传路径
								System.out.println(filePath);
								// 保存文件到硬盘
								item.write(storeFile);
								request.setAttribute("message", "文件上传成功!");
							}else{
								if (item.getFieldName().equals("gname")) {
									String gname =new String ( item.getString().getBytes("ISO-8859-1"),"utf-8");
									goods.setGname(gname);
								} else if (item.getFieldName().equals("gcontent")) {
									String gcontent = item.getString();
									goods.setGcontent(new String(gcontent.getBytes("iso-8859-1"), "utf-8"));
								} else if (item.getFieldName().equals("gnum")) {
									int gnum =Integer.parseInt( item.getString());
									goods.setGnum(gnum);
								} else if (item.getFieldName().equals("gprice")) {
									double gprice =Double.parseDouble( item.getString());
									goods.setGprice(gprice);
								}else if (item.getFieldName().equals("tname")) {
									String  tname =item.getString() ;
									goods.setTname(new String(tname.getBytes("iso-8859-1"), "utf-8"));
								} else if(item.getFieldName().equals("newgname")){
									String  newgname =item.getString() ;
									goods.setNewName(new String(newgname.getBytes("iso-8859-1"), "utf-8"));
								}else if(item.getFieldName().equals("grate")){
									String  g_rate =item.getString() ;
									goods.setGrate(new String(g_rate.getBytes("iso-8859-1"), "utf-8"));
								}
							}
						}
					}
				} catch (Exception ex) {
					request.setAttribute("message", "错误信息: " + ex.getMessage());
				}
				
				goods.setGurl(UPLOAD_DIRECTORY + "/" + fileName);
				return goods;
	}
	
}
