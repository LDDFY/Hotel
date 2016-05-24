package cn.edu.whut.hotelsystem.basedao;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ImageUtil {

	// 增加图片
	public String addImage(MultipartFile file, HttpServletRequest request) {

		if (file.isEmpty()) {
			return "";
		} else {

			String fileName = new Date().getTime()
					+ file.getOriginalFilename().substring(
							file.getOriginalFilename().length() - 4);

			String path = request.getSession().getServletContext()
					.getRealPath("/resourse/images/items2/");

			String Address = request.getContextPath()
					+ "/resourse/images/items2/" + fileName;

			File targetFile = new File(path, fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			try {
				file.transferTo(targetFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return Address;
		}
	}

	// 修改图片
	public String updateImage(MultipartFile file, HttpServletRequest request,
			String address) {
		if (!file.isEmpty()) {
			// 先删除原来图片
			try {
			
				deleteFile(address, request);
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String fileName = new Date().getTime()
					+ file.getOriginalFilename().substring(
							file.getOriginalFilename().length() - 4);

			String path = request.getSession().getServletContext()
					.getRealPath("/resourse/images/items2/");

			String Address = request.getContextPath() + "/resourse/images/items2/" + fileName;
			System.out.println("realpath-=-=-==-=-=" + Address);
			
			File targetFile = new File(path, fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			try {
				file.transferTo(targetFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("修改picture成功！");
			return Address;
		}
		return "";

	}

	// 删除之地ing文件夹的文件
	public boolean deleteFile(String delpath, HttpServletRequest request)
			throws FileNotFoundException, IOException {
		// 获取绝对路径
		String path = request.getSession().getServletContext()
				.getRealPath("/resourse/images/items2/");
		String name = "\\" + delpath.substring(delpath.lastIndexOf('/') + 1);
		delpath = path + name;
		System.out.println(delpath);
		try {
			File file = new File(delpath);
			// 一级删除
			if (!file.isDirectory()) {
				System.out.println("1");
				file.delete();
				System.out.println("delete success!");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		return true;
	}

}
