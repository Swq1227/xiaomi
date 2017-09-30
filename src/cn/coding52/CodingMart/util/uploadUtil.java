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
		// �����ϴ�����
				DiskFileItemFactory factory = new DiskFileItemFactory();
				String fileName = "";
				// �����ڴ��ٽ�ֵ - �����󽫲�����ʱ�ļ����洢����ʱĿ¼��
				factory.setSizeThreshold(MEMORY_THRESHOLD);
				// ������ʱ�洢Ŀ¼
				factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

				ServletFileUpload upload = new ServletFileUpload(factory);

				// ��������ļ��ϴ�ֵ
				upload.setFileSizeMax(MAX_FILE_SIZE);

				// �����������ֵ (�����ļ��ͱ�����)
				upload.setSizeMax(MAX_REQUEST_SIZE);

				// ���Ĵ���
				upload.setHeaderEncoding("UTF-8");
				// ������ʱ·�����洢�ϴ����ļ�
				// ���·����Ե�ǰӦ�õ�Ŀ¼
				String uploadPath = request.getServletContext().getRealPath("./")+ UPLOAD_DIRECTORY;
				// ���Ŀ¼�������򴴽�
				File uploadDir = new File(uploadPath);
				if (!uploadDir.exists()) {
					uploadDir.mkdir();
				}

				try {
					// ���������������ȡ�ļ�����
					List<FileItem> formItems = upload.parseRequest(request);
					if (formItems != null && formItems.size() > 0) {
						// ����������
						for (FileItem item : formItems) {
							// �����ڱ��е��ֶ�
							if (!item.isFormField()) {
								fileName = new File(item.getName()).getName();
								System.out.println(fileName);
								String filePath= uploadPath+ File.separator+ fileName;
								File storeFile = new File(filePath);
								// �ڿ���̨����ļ����ϴ�·��
								System.out.println(filePath);
								// �����ļ���Ӳ��
								item.write(storeFile);
								request.setAttribute("message", "�ļ��ϴ��ɹ�!");
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
					request.setAttribute("message", "������Ϣ: " + ex.getMessage());
				}
				
				goods.setGurl(UPLOAD_DIRECTORY + "/" + fileName);
				return goods;
	}
	
}
