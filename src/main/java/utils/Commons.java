package utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;

import vo.Member;

public class Commons {
	public static final String UPLOAD_PATH = "c:/upload";
	
	public static void printMsg(String msg, String url, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter pw = resp.getWriter();
		pw.println("<script>");
		pw.printf("alert('%s'); %n", msg);
		if(url == null) {
			pw.printf("hitory.back();");
		} else {
			pw.printf("location.href = '%s', %n", url);
		}
		pw.printf("location.href = '%s'; %n", url);
		pw.println("</script>");
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T param(HttpServletRequest req, Class<T> clazz) {
		T t = null;
		try {
			if(req == null) return null;
			Object builder = clazz.getMethod("builder").invoke(null);
			Field[] fields = builder.getClass().getDeclaredFields();
			Method[] methods = builder.getClass().getDeclaredMethods();
			for (Field field : fields) {
				String name = field.getName();
				String value = req.getParameter(field.getName());
				System.out.println(field.getName() + " :: " + value);
				if(value != null && !value.equals("")) {
					findBy(methods, name).invoke(builder, value);
				}
			}	
			t = (T) builder.getClass().getMethod("build").invoke(builder);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}
	
	private static Method findBy(Method[] methods, String name) {
		for(Method m : methods) {
			if(m.getName().equals(name)) {
				return m;
			}
		}
		return null;
	}
}
