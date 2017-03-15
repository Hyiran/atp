/**
 * <p>Title: CastUtil.java</p>
 *
 * @Package com.uusoft.fundbase.util
 * <p>Description:类型转换操作类</p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 廖明华
 * @version V1.0
 * @since 2015年8月31日 下午2:24:05
 */
package com.atp.utils;

import java.math.BigDecimal;

/**
 * <p>Description:类型转换工具类</p> 
 * <p>Company:上海投投金融有限责任公司</p>
 * @author 廖明华
 * @version V1.0
 */
public class CastUtil {

    /**
     * <p>Description:转为 String 型</p>
     * @param obj 对象
     * @return 字符串
     * @author 廖明华
     * @date 2015年8月31日 下午2:25:53
     */
    public static String castString(Object obj) {
        return CastUtil.castString(obj, "");
    }

    /**
     * <p>Description:转为 String 型（提供默认值）</p>
     * @param obj 对象
     * @param defaultValue 默认值
     * @return String字符串
     * @author 廖明华
     * @date 2015年8月31日 下午2:26:17
     */
    public static String castString(Object obj, String defaultValue) {
        return obj != null ? String.valueOf(obj) : defaultValue;
    }

    /**
     * <p>Description:转为 double 型</p>
     * @param obj 对象
     * @return double对象
     * @author 廖明华
     * @date 2015年8月31日 下午2:26:43
     */
    public static double castDouble(Object obj) {
        return CastUtil.castDouble(obj, 0);
    }

    /**
     * <p>Description:转为 double 型（提供默认值）</p>
     * @param obj 对象
     * @param defaultValue 默认值
     * @return double型
     * @author 廖明华
     * @date 2015年8月31日 下午2:27:10
     */
    public static double castDouble(Object obj, double defaultValue) {
        double doubleValue = defaultValue;
        if (obj != null) {
            String strValue = castString(obj);
            if (CommonUtils.isNotEmpty(strValue)) {
                try {
                    doubleValue = Double.parseDouble(strValue);
                } catch (NumberFormatException e) {
                    doubleValue = defaultValue;
                }
            }
        }
        return doubleValue;
    }

    /**
     * <p>Description:转为 long 型</p>
     * @param obj 对象
     * @return long型
     * @author 廖明华
     * @date 2015年8月31日 下午2:28:07
     */
    public static long castLong(Object obj) {
        return CastUtil.castLong(obj, 0);
    }

    /**
     * <p>Description:转为 long 型（提供默认值）</p>
     * @param obj 对象
     * @param defaultValue 默认值
     * @return Long对象
     * @author 廖明华
     * @date 2015年8月31日 下午2:28:55
     */
    public static long castLong(Object obj, long defaultValue) {
        long longValue = defaultValue;
        if (obj != null) {
            String strValue = castString(obj);
            if (CommonUtils.isNotEmpty(strValue)) {
                try {
                    longValue = Long.parseLong(strValue);
                } catch (NumberFormatException e) {
                    longValue = defaultValue;
                }
            }
        }
        return longValue;
    }

    /**
     * <p>Description:转为 int 型</p>
     * @param obj 对象
     * @return int类型
     * @author 廖明华
     * @date 2015年8月31日 下午2:29:23
     */
    public static int castInt(Object obj) {
        return CastUtil.castInt(obj, 0);
    }

    /**
     * <p>Description:转为 int 型（提供默认值）</p>
     * @param obj 对象
     * @param defaultValue 默认值
     * @return 如果不存在，返回默认值
     * @author 廖明华
     * @date 2015年8月31日 下午2:29:41
     */
    public static int castInt(Object obj, int defaultValue) {
        int intValue = defaultValue;
        if (obj != null) {
            String strValue = castString(obj);
            if (CommonUtils.isNotEmpty(strValue)) {
                try {
                    intValue = Integer.parseInt(strValue);
                } catch (NumberFormatException e) {
                    intValue = defaultValue;
                }
            }
        }
        return intValue;
    }

    /**
     * <p>Description:转为 boolean 型</p>
     * @param obj 对象
     * @return 对象转成boolean类型
     * @author 廖明华
     * @date 2015年8月31日 下午2:31:00
     */
    public static boolean castBoolean(Object obj) {
        return CastUtil.castBoolean(obj, false);
    }

    /**
     * <p>Description:转为 boolean 型（提供默认值）</p>
     * @param obj 对象
     * @param defaultValue 默认值
     * @return 如果转换对象为空或者null，返回默认值，否则返回转换后的值
     * @author 廖明华
     * @date 2015年8月31日 下午2:31:30
     */
    public static boolean castBoolean(Object obj, boolean defaultValue) {
        boolean booleanValue = defaultValue;
        if (obj != null) {
            booleanValue = Boolean.parseBoolean(castString(obj));
        }
        return booleanValue;
    }

    /**
     * <p>Description:转为 String[] 型</p>
     * @param objArray 对象数组
     * @return 转为 String[] 型
     * @author 廖明华
     * @date 2015年8月31日 下午2:33:23
     */
    public static String[] castStringArray(Object[] objArray) {
        if (objArray == null) {
            objArray = new Object[0];
        }
        String[] strArray = new String[objArray.length];
        if (ArrayUtil.isNotEmpty(objArray)) {
            for (int i = 0; i < objArray.length; i++) {
                strArray[i] = castString(objArray[i]);
            }
        }
        return strArray;
    }

    /**
     * <p>Description:转为 double[] 型</p>
     * @param objArray 数组
     * @return 转为 double[] 型
     * @author 廖明华
     * @date 2015年8月31日 下午2:33:47
     */
    public static double[] castDoubleArray(Object[] objArray) {
        if (objArray == null) {
            objArray = new Object[0];
        }
        double[] doubleArray = new double[objArray.length];
        if (!ArrayUtil.isEmpty(objArray)) {
            for (int i = 0; i < objArray.length; i++) {
                doubleArray[i] = castDouble(objArray[i]);
            }
        }
        return doubleArray;
    }

    /**
     * <p>Description:转为 long[] 型</p>
     * @param objArray 数组
     * @return 转为 long[] 型
     * @author 廖明华
     * @date 2015年8月31日 下午2:33:47
     */
    public static long[] castLongArray(Object[] objArray) {
        if (objArray == null) {
            objArray = new Object[0];
        }
        long[] longArray = new long[objArray.length];
        if (!ArrayUtil.isEmpty(objArray)) {
            for (int i = 0; i < objArray.length; i++) {
                longArray[i] = castLong(objArray[i]);
            }
        }
        return longArray;
    }

    /**
     * <p>Description:转为 int[] 型</p>
     * @param objArray 数组
     * @return 转为 int[] 型
     * @author 廖明华
     * @date 2015年8月31日 下午2:33:47
     */
    public static int[] castIntArray(Object[] objArray) {
        if (objArray == null) {
            objArray = new Object[0];
        }
        int[] intArray = new int[objArray.length];
        if (!ArrayUtil.isEmpty(objArray)) {
            for (int i = 0; i < objArray.length; i++) {
                intArray[i] = castInt(objArray[i]);
            }
        }
        return intArray;
    }

    /**
     * <p>Description:转为 boolean[] 型</p>
     * @param objArray 数组
     * @return 转为 boolean[] 型
     * @author 廖明华
     * @date 2015年8月31日 下午2:33:47
     */
    public static boolean[] castBooleanArray(Object[] objArray) {
        if (objArray == null) {
            objArray = new Object[0];
        }
        boolean[] booleanArray = new boolean[objArray.length];
        if (!ArrayUtil.isEmpty(objArray)) {
            for (int i = 0; i < objArray.length; i++) {
                booleanArray[i] = castBoolean(objArray[i]);
            }
        }
        return booleanArray;
    }

    /**
     * @Title: bigDecimal2String
     * @Description: 把bigDecimal2String类型的值转2位小数
     * @param val
     * @return String
     * @throws
     */
    public static String bigDecimal2String(BigDecimal val) {

        if (null == val) {
            return "0.00";
        } else {
            return String.format("%.2f", val);
        }
    }


    /**
     * <p>Description:String类型的数据转为BigDecimal型</p>
     * @param val
     * @return
     * @author 陈姣姣
     * @date 2016年7月26日 上午11:10:20
     */
    public static BigDecimal bigDecimalString(String val) {
        if (CommonUtils.isNotEmpty(val)) {
            return new BigDecimal(val);
        }
        return null;
    }

    public static BigDecimal bigToBig2(BigDecimal val) {
        if (val != null) {
            return val.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return null;
    }


}
