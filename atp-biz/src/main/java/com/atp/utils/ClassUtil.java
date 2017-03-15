/**
 * <p>Title: ClassUtil.java</p>
 *
 * @Package com.uusoft.fundbase.util
 * <p>Description:类操作工具类</p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 廖明华
 * @version V1.0
 * @since 2015年8月31日 下午2:18:37
 */
package com.atp.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URL;

/**
 * <p>Description:类操作工具类</p> 
 * <p>Company:上海投投金融有限责任公司</p>
 * @author 廖明华
 * @version V1.0
 */
public class ClassUtil {
    /**
     * 日志
     */
    private static Logger log = LoggerFactory.getLogger(ClassUtil.class);

    /**
     * 获取类加载器
     */
    public static ClassLoader getClassLoader() {
        return Thread.currentThread().getContextClassLoader();
    }

    /**
     * 获取类路径
     */
    public static String getClassPath() {
        String classpath = "";
        URL resource = getClassLoader().getResource("");
        if (resource != null) {
            classpath = resource.getPath();
        }
        return classpath;
    }

    /**
     * <p>Description:加载类（将自动初始化）</p>
     * @param className 类名字
     * @return 加载后的类对象
     * @author 廖明华
     * @date 2015年8月31日 下午2:20:09
     */
    public static Class<?> loadClass(String className) {
        return loadClass(className, true);
    }

    /**
     * <p>Description:加载类</p>
     * @param className 类对象
     * @param isInitialized 是否初始化
     * @return 加载类对象
     * @author 廖明华
     * @date 2015年8月31日 下午2:20:38
     */
    public static Class<?> loadClass(String className, boolean isInitialized) {
        Class<?> cls;
        try {
            cls = Class.forName(className, isInitialized, getClassLoader());
        } catch (ClassNotFoundException e) {
            log.error("加载类出错！", e);
            throw new RuntimeException(e);
        }
        return cls;
    }

    /**
     * <p>Description:是否为 int 类型（包括 Integer 类型）</p>
     * @param type 对象类型
     * @return true：int类型，否则：false
     * @author 廖明华
     * @date 2015年8月31日 下午2:21:21
     */
    public static boolean isInt(Class<?> type) {
        return type.equals(int.class) || type.equals(Integer.class);
    }

    /**
     * <p>Description:是否为 long 类型（包括 Long 类型）</p>
     * @param type 类对象
     * @return trye是long类型，返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月31日 下午2:21:53
     */
    public static boolean isLong(Class<?> type) {
        return type.equals(long.class) || type.equals(Long.class);
    }

    /**
     * <p>Description:是否为 double 类型（包括 Double 类型）</p>
     * @param type 类对象
     * @return trye是double类型或者Double，返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月31日 下午2:22:39
     */
    public static boolean isDouble(Class<?> type) {
        return type.equals(double.class) || type.equals(Double.class);
    }

    /**
     * <p>Description:是否为 String 类型</p>
     * @param type 类对象
     * @return trye是String，返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月31日 下午2:22:39
     */
    public static boolean isString(Class<?> type) {
        return type.equals(String.class);
    }
}
