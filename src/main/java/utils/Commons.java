package utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class Commons {
	public static final String UPLOAD_PATH = "c:/upload";
	private static final Gson GSON = new GsonBuilder().registerTypeAdapter(Date.class, new DateEpochSerializer()).create();
	
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
					Object convertedValue = convertToType(value, field, clazz);
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
	private static <T> Object convertToType(String value, Field field, Class<T> originClass) {
		Class<?> fieldType = field.getType();
	    try {
	        if (fieldType == String.class) {
	            return value;
	        } else if (fieldType == Integer.class || fieldType == int.class) {
	            return Integer.parseInt(value);
	        } else if (fieldType == Long.class || fieldType == long.class) {
	            return Long.parseLong(value);
	        } else if (fieldType == Boolean.class || fieldType == boolean.class) {
	            return Boolean.parseBoolean(value);
	        } else if (fieldType == java.util.Date.class) {
	            // 예: SimpleDateFormat을 사용하여 날짜 변환
	        	Field fieldTmp = originClass.getDeclaredField(field.getName());
	        	String dateFormat = "yyyy-MM-dd";
	        	if(fieldTmp.isAnnotationPresent(CookieDateFormat.class)) {
	        		dateFormat = fieldTmp.getAnnotation(CookieDateFormat.class).value();
	        	}
	            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(dateFormat);
	            return sdf.parse(value);
	        } else if (fieldType == Double.class || fieldType == double.class) {
	            return Double.parseDouble(value);
	        } else if (fieldType == Float.class || fieldType == float.class) {
	            return Float.parseFloat(value);
	        } else {
	            return null; // 변환 불가능한 타입은 무시
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public static void respJson(HttpServletResponse resp, Object obj) throws IOException {
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(GSON.toJson(obj));
	}
	public static <T> T reqJson(HttpServletRequest req, Class<T> clazz) throws IOException {
		return GSON.fromJson(req.getReader(), clazz); 
	}
}
