//文件上传
package com.example.demo.servlet;

import com.example.demo.serivice.UserService;
import com.example.demo.serivice.impl.DisplayServiceImpl;
import com.example.demo.serivice.impl.UserServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.UUID;

public class FileServlet extends HttpServlet {
    //处理表单
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //判断上传的文件是普通表单还是带文件的表单
        if (!ServletFileUpload.isMultipartContent(req)) {//是否包含文件
            return;
        }

        String uploadPath = this.getServletContext().getRealPath("WEB-INF/upload");
        //判断这个文件有没有
        File uploadFile = new File(uploadPath);
        if (!uploadFile.exists()) {
            uploadFile.mkdir();
        }

        //临时路径
        String tmpPath = this.getServletContext().getRealPath("WEB-INF/tmp");
        File file = new File(tmpPath);
        if (!file.exists()) {
            file.mkdir();
        }
   	 		/*
            流程：
            ServletFileUpload负责处理上传的文件数据，并将表单中每个输入项封装成一个Fileltem对象，
            在使用ServletFilelpload对象（上传）解析请求时，需要DiskFileltemFactory对象。
            所以，我们需要在进行解析工作前构造好DiskFileltemFactory对象，
            通过SevletFileUpload对象的构造方法或setFileltemFactory（）方法
            设置ServletFileUpload对象的fileltemFactory属性。
    		*/

        try {
            /*核心代码：处理这几个类*/
            //1.创建 DiskFileItemFactory（磁盘工厂）对象，处理文件上传路径或者大小限制
            DiskFileItemFactory factory = getDiskFileItemFactory(file);

            //2.获取 ServletFileUpload
            ServletFileUpload upload = getServletFileUpload(factory);//把 factory 类作为参数传递进来

            //3.处理上传的文件
            String msg = uploadParseRequest(upload, req, uploadPath);

            //servlet请求转发消息
            req.setAttribute("msg", msg);//存
            req.getRequestDispatcher("info.jsp").forward(req, resp);

        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    public static DiskFileItemFactory getDiskFileItemFactory(File file) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        //当上传的文件大于这个缓冲区的时候，将他放入到临时文件中
        factory.setSizeThreshold(1024 * 1024);//缓冲区为1M
        factory.setRepository(file);//临时目录的保存目录，需要一个File
        return factory;
    }

    public static ServletFileUpload getServletFileUpload(DiskFileItemFactory factory) {
        ServletFileUpload upload = new ServletFileUpload(factory);
        //监听文件的上传进度
        upload.setProgressListener(new ProgressListener() {
            @Override
            //pBytesRead：已经读取到的文件大小
            //pContentLength：文件大小
            public void update(long pBytesRead, long pContentLength, int pItems) {
                System.out.println("总大小：" + pContentLength + "已上传：" + pBytesRead);
            }
        });
        //处理乱码问题
        upload.setHeaderEncoding("UTF-8");
        //设置单个文件的最大值
        upload.setFileSizeMax(1024 * 1024 * 10);
        //设置总共能够上传文件的大小
        //1024 = 1kb * 1024 = 1M * 10 = 10M
        upload.setSizeMax(1024 * 1024 * 10);
        return upload;

    }

    public static String uploadParseRequest(ServletFileUpload upload, HttpServletRequest request, String uploadPath) throws IOException, FileUploadException {

        String msg = "";
        //3.把前端请求解析，封装成一个FileItem对象，需要从ServletFileUpload对象中获取
        List<FileItem> fileItems = upload.parseRequest(request);
        //fileItem 每一个表单对象
        for (FileItem fileItem : fileItems) {
            //判断上传的文件（控件）是普通的表单还是带文件的表单，判断是不是 input file
            if (fileItem.isFormField()) {//普通表单
                //getFieldName:前端表单控件的name
                String name = fileItem.getFieldName();
                String value = fileItem.getString("UTF-8");//处理乱码
                System.out.println(name + ":" + value);

            } else { //文件表单 ，（用到工具类）
                //===============处理文件===================
                //拿到文件名字
                String uploadFileName = fileItem.getName();
                System.out.println("上传的文件名：" + uploadFileName);

                DisplayServiceImpl displayService = new DisplayServiceImpl();
                displayService.select(uploadFileName);

                //判断文件名
                if (uploadFileName.trim().equals("") || uploadFileName == null) {
                    continue;
                }
                //获得上传的文件名  /images/girl/paojie/png
                //字符串游戏
                String fileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);//最后一个 / +1
                //获得文件的后缀名
                String fileExtName = uploadFileName.substring(uploadFileName.lastIndexOf(".") + 1);
        /*
                        如果文件后缀名 fileExtName 不是我们需要的，
                        就直接return，不处理，告诉用户文件类型不对。
                     */
                System.out.println("文件信息[件名：" + fileName + "---文件类型" + fileExtName + "]");

                //UUID.randomUUID():随机生成一个唯一识别的通用码
                String uuidPath = UUID.randomUUID().toString();

                //===============处理文件完毕===================

                //文件真实存在的路径 realPath
                String realPath = uploadPath + "/" + uuidPath;

                //将文件路径存入数据库中
                UserService service = new UserServiceImpl();
                service.insertPath(realPath, uploadFileName);

                //给每个文件创建一个对应的文件夹
                File realPathFile = new File(realPath);
                if (!realPathFile.exists()) {//不存在
                    realPathFile.mkdir();//创建文件夹，保证不会重复
                }

                //===============存放地址完毕===================

                //获得文件上传的流
                InputStream inputStream = fileItem.getInputStream();

                //创建一个文件输出流
                FileOutputStream fos = new FileOutputStream(realPath + "/" + fileName);// 输出的地址

                //创建一个缓存区
                byte[] buffer = new byte[1024 * 1024];

                //判断是否读取完毕
                int len = 0;
                //如果大于0说明还存在数据
                while ((len = inputStream.read(buffer)) > 0) {
                    fos.write(buffer, 0, len);
                }
                //关闭流
                fos.close();
                inputStream.close();

                msg = "文件上传成功";
                fileItem.delete();//上传成功，清除临时文件
                //===============文件传输完毕===================

            }
        }
        return msg;


    }
}
