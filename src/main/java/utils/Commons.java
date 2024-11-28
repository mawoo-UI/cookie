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
				if(value != null && !value.isEmpty()) {
					Object convertedValue = convertToType(value, field.getType());
					if(convertedValue != null) {
						findBy(methods, name).invoke(builder, convertedValue);
					}
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
	private static Object convertToType(String value, Class<?> type) {
	    try {
	        if (type == String.class) {
	            return value;
	        } else if (type == Integer.class || type == int.class) {
	            return Integer.parseInt(value);
	        } else if (type == Long.class || type == long.class) {
	            return Long.parseLong(value);
	        } else if (type == Boolean.class || type == boolean.class) {
	            return Boolean.parseBoolean(value);
	        } else if (type == java.util.Date.class) {
	            // 예: SimpleDateFormat을 사용하여 날짜 변환
	            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
	            return sdf.parse(value);
	        } else if (type == Double.class || type == double.class) {
	            return Double.parseDouble(value);
	        } else if (type == Float.class || type == float.class) {
	            return Float.parseFloat(value);
	        } else {
	            return null; // 변환 불가능한 타입은 무시
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}
}
