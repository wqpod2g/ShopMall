package com.netease.shopmall.utils;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * @author mrpod2g
 *
 */
public class CommonUtil {

	/**
	 * 保存图片
	 * @param picFile
	 * @param path
	 * @return
	 */
	public static String savePic(MultipartFile picFile, String path) {
		String filename = null;
		if (picFile != null && picFile.getSize() > 0) {
			// 生成文件名
			filename = UUID.randomUUID().toString()
					+ picFile.getOriginalFilename().substring(
							picFile.getOriginalFilename().lastIndexOf("."));
			File tempFile = new File(path, filename);
			// 保存文件
			try {
				picFile.transferTo(tempFile);
			} catch (IOException e) {
				e.printStackTrace();
				return null;
			}
		}
		return filename;
	}

}
