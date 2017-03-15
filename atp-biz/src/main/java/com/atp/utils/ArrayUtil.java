/**
 * <p>Title: ArrayUtil.java</p>
 *
 * @Package com.uusoft.fundbase.util
 * <p>Description:数组操作工具类</p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 廖明华
 * @version V1.0
 * @since 2015年8月31日 下午2:11:53
 */
package com.atp.utils;

import org.apache.commons.lang.ArrayUtils;

/**
 * <p>Description:数组操作工具类</p> 
 * <p>Company:上海投投金融有限责任公司</p>
 * @author 廖明华
 * @version V1.0
 */
public class ArrayUtil {
    /**
     * <p>Description:判断数组是否非空</p>
     * @param array 数组对象
     * @return 如果array是空或者null，返回false；否则返回true
     * @author 廖明华
     * @date 2015年8月31日 下午2:12:43
     */
    public static boolean isNotEmpty(Object[] array) {
        return !ArrayUtils.isEmpty(array);
    }

    /**
     * <p>Description:判断数组是否是空或者null</p>
     * @param array 数组对象
     * @return 如果array是null或者空，返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月31日 下午2:15:42
     */
    public static boolean isEmpty(Object[] array) {
        return ArrayUtils.isEmpty(array);
    }

    /**
     * <p>Description:连接数组</p>
     * @param array1 数组1
     * @param array2 数组2
     * @return 数组1+数组2
     * @author 廖明华
     * @date 2015年8月31日 下午2:16:53
     */
    public static Object[] concat(Object[] array1, Object[] array2) {
        return ArrayUtils.addAll(array1, array2);
    }

    /**
     * <p>Description:判断对象是否在数组中</p>
     * @param array 数组
     * @param obj 对象
     * @return 存在返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月31日 下午2:17:29
     */
    public static <T> boolean contains(T[] array, T obj) {
        return ArrayUtils.contains(array, obj);
    }

}
