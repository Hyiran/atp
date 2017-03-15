package com.atp.utils;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigDecimal;

/***
 * <p>Description: 数据格式工具类 </p>
 * <p>Company:上海投投金融有限责任公司</p>
 *
 * @author xianlong@66money.com
 * @version V1.0
 */
public class NumberUtil {

    private static final Logger LOGGER = LoggerFactory.getLogger(NumberUtil.class);

    private static final int NUMBER_PERCISION_0 = 0;
    /**
     * 保留四位有效数字的静态值
     **/
    private static final int NUMBER_PERCISION_2 = 2;
    /**
     * 保留三位位有效数字的静态值
     **/
    private static final int NUMBER_PERCISION_3 = 3;
    /**
     * 保留四位有效数字的静态值
     **/
    private static final int NUMBER_PERCISION_4 = 4;

    /**
     * 格式化为指定两位小数的数字,返回未使用科学计数法表示的具有指定位数的字符串。
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。
     *
     * @param String类型的数字对象
     * @return 返回数字格式化后的字符串表示形式(注意返回的字符串未使用科学计数法)
     * 创建人: xianlong@66money.com
     */
    public static String stringNumber2(String number) {
        BigDecimal bg = new BigDecimal(number);
        return bg.setScale(NUMBER_PERCISION_2, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /**
     * 格式化为指定两位小数的数字,返回未使用科学计数法表示的具有指定位数的字符串。
     * 该方法舍入模式：直接截取的舍入模式。
     *
     * @param String类型的数字对象
     * @return 返回数字格式化后的字符串表示形式(注意返回的字符串未使用科学计数法)
     * 创建人: xianlong@66money.com
     */
    public static String stringNumber2ByRoundDown(String number) {
        BigDecimal bg = new BigDecimal(number);
        return bg.setScale(NUMBER_PERCISION_2, BigDecimal.ROUND_DOWN).toPlainString();
    }

    /**
     * 格式化为指定四位小数的数字,返回未使用科学计数法表示的具有指定位数的字符串。
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。
     *
     * @param String类型的数字对象
     * @return 返回数字格式化后的字符串表示形式(注意返回的字符串未使用科学计数法)
     * 创建人: xianlong@66money.com
     */
    public static String stringNumber4(String number) {
        BigDecimal bg = new BigDecimal(number);
        return bg.setScale(NUMBER_PERCISION_4, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /**
     * 格式化为指定位两小数的数字,返回未使用科学计数法表示的具有指定位数的字符串。<br>
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。<br>
     * 如果给定的数字没有小数，则转换之后将以0填充；例如：int 123  1 --> 123.0<br>
     *
     * @param String类型的数字对象
     * @return 返回数字格式化后的字符串表示形式(注意返回的字符串未使用科学计数法)
     * 创建人: xianlong@66money.com
     */
    public static String number2String2(Number number) {
        return stringNumber2(String.valueOf(number));
    }

    /**
     * 格式化为指定位四小数的数字,返回未使用科学计数法表示的具有指定位数的字符串。<br>
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。<br>
     * 如果给定的数字没有小数，则转换之后将以0填充；例如：int 123  1 --> 123.0<br>
     *
     * @param String类型的数字对象
     * @return 返回数字格式化后的字符串表示形式(注意返回的字符串未使用科学计数法)
     * 创建人: xianlong@66money.com
     */
    public static String number2String4(Number number) {
        return stringNumber4(String.valueOf(number));
    }

    /**
     * 对double类型的数值保留指定位数的小数。<br>
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。<br>
     *
     * @param number    要保留小数的数字
     * @param precision 小数位数
     * @return double 如果数值较大，则使用科学计数法表示
     * 创建人: xianlong@66money.com
     */
    public static double doubleNumber(double number, int precision) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     * 对float类型的数值保留指定位数的小数。<br>
     * 该方法舍入模式：向“最接近的”数字舍入，如果与两个相邻数字的距离相等，则为向上舍入的舍入模式。<br>
     *
     * @param number    要保留小数的数字
     * @param precision 小数位数
     * @return float 如果数值较大，则使用科学计数法表示
     * 创建人: xianlong@66money.com
     */
    public static float float2number(float number, int precision) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(precision, BigDecimal.ROUND_HALF_UP).floatValue();
    }

    /**
     * 对double类型的数值保留指定 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return double 如果数值较大，则使用科学计数法表示
     * 创建人: xianlong@66money.com
     */
    public static String double2Str(double number) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(NUMBER_PERCISION_0, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /**
     * 对double类型的数值保留指定2位数的小数 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return double 如果数值较大，则使用科学计数法表示
     * 创建人: xianlong@66money.com
     */
    public static String double2String2(Double number) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(NUMBER_PERCISION_2, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /**
     * 对double类型的数值保留指定4位数的小数 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return double 如果数值较大，则使用科学计数法表示
     * 创建人: xianlong@66money.com
     */
    public static String double2String4(Double number) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(NUMBER_PERCISION_4, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /***
     * BigDecimal 转换为 string 保留小数点后0位有效数字
     *
     * @param bigDecimal 表示十进制位的数
     * @return 创建人: xianlong@66money.com
     */
    public static String bigToString2(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(NUMBER_PERCISION_2, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "0.00";
    }

    /***
     * BigDecimal 转换为 string 保留小数点后两位有效数字
     *
     * @param bigDecimal 表示十进制位的数
     * @return 创建人: xianlong@66money.com
     */
    public static String bigToString(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(0, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "";
    }

    /***
     * BigDecimal 转换为 string 保留小数点后四位有效数字
     *
     * @param bigDecimal 表示十进制位的数
     * @return string 类型
     * 创建人: xianlong@66money.com
     */
    public static String bigToString4(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(NUMBER_PERCISION_4, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "";
    }

    /***
     * BigDecimal 转换为 double 保留小数点后两位有效数字
     *
     * @param bigDecimal 表示十进制位的数
     * @return string 类型
     * 创建人: xianlong@66money.com
     */
    public static double bigToDouble2(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(NUMBER_PERCISION_4, BigDecimal.ROUND_HALF_UP).doubleValue();
        }
        return 0.0;

    }

    /***
     * BigDecimal 转换为 double 保留小数点后四位有效数字
     *
     * @param bigDecimal 表示十进制位的数
     * @return double 类型
     * 创建人: xianlong@66money.com
     */
    public static double bigToDouble4(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(NUMBER_PERCISION_4, BigDecimal.ROUND_HALF_UP).doubleValue();
        }
        return 0.0;
    }

    /***
     * BigDecimal 转换为 double
     *
     * @param bigDecimal 表示十进制位的数
     * @return double 类型
     */
    public static double bigToDouble(BigDecimal bigDecimal) {
        return bigDecimal.doubleValue();
    }

    /**
     * 提供（相对）精确的除法运算。当发生除不尽的情况时，由scale参数指
     * 定精度，以后的数字四舍五入。
     *
     * @param number1 被除数
     * @param number2 除数
     * @param scale   表示需要精确到小数点以后几位。
     * @return 两个参数的商
     * 创建人: xianlong@66money.com
     */
    public static double div(double number1, double number2, int scale) {

        if (scale < 0) {
            LOGGER.error("The scale must be a positive integer or zero");
        }
        BigDecimal b1 = new BigDecimal(Double.toString(number1));
        BigDecimal b2 = new BigDecimal(Double.toString(number2));
        return b1.divide(b2, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     * 对double类型的数值保留指定2%位数的小数 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return String
     * 创建人: xianlong@66money.com
     */
    public static String double2Percentage(double number) {
        return Double.toString(div(number, 1, NUMBER_PERCISION_4) * 100);
    }


    /**
     * 对BigDecimal类型的数值保留指定2%位数的小数 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return String
     * 创建人: xianlong@66money.com
     */
    public static String big2Percent(BigDecimal bigDecimal) {

        double number = 0.0;
        if (bigDecimal == null) {
            return "";
        } else {
            number = bigToDouble4(bigDecimal);
            return Double.toString(div(number, 1, NUMBER_PERCISION_4) * 100);
        }
    }

    /***
     * @param str
     * @return 创建人: xianlong@66money.com
     */
    public static double string2Double(String str) {
        double d = 0.0;
        try {
            d = Double.parseDouble(str);
        } catch (Exception e) {
            LOGGER.error("String2Double出错str[{}]", str, e);
        }
        return d;
    }

    /***
     * @param str
     * @return 创建人: xianlong@66money.com
     */
    public static long string2Long(String str) {
        long l = 0l;
        try {
            l = Long.parseLong(str);
        } catch (Exception e) {
            LOGGER.error("String2Long出错str[{}]", str, e);
        }
        return l;
    }

    /***
     * @param str
     * @return 创建人: xianlong@66money.com
     */
    public static int string2Int(String str) {
        int i = 0;
        try {
            double d = Double.parseDouble(str);
            i = (int) d;
        } catch (Exception e) {
            LOGGER.error("String2Int出错str[{}]", str, e);
        }
        return i;
    }

    /**
     * 对double类型的数值保留指定3位数的小数 转为 String类型。<br>
     *
     * @param number 要保留小数的数字
     * @return double 如果数值较大，则使用科学计数法表示
     */
    public static String doubleString3(Double number) {
        BigDecimal bg = BigDecimal.valueOf(number);
        return bg.setScale(NUMBER_PERCISION_3, BigDecimal.ROUND_HALF_UP).toPlainString();
    }

    /**
     * <p>Description:String型数据 转 BigDecimal格式数据 </p>
     *
     * @param data
     * @return
     * @author 陈姣姣
     * @date 2016年2月1日 下午4:05:02
     */
    public static BigDecimal bigDecimalString(String data) {
        LOGGER.info("String型数据 转 BigDecimal格式数据data[[{}]", data);
        try {
            if (StringUtils.isBlank(data)) {
                return BigDecimal.ZERO;
            } else {
                return new BigDecimal(data);
            }
        } catch (Exception e) {
            LOGGER.error("String型数据 转 BigDecimal格式数据失败data[[{}]", data, e);
            return BigDecimal.ZERO;
        }

    }

    public static String bigDecimal2String(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            return val.setScale(2, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "0.00";
    }

    public static String bigDecimal2StringByRoundNown(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            return val.setScale(2, BigDecimal.ROUND_DOWN).toString();
        }
        return "0.00";
    }

    public static String multiply2(BigDecimal val, BigDecimal val1) {
        if (val != null && val1 != null) {
            BigDecimal result = val.multiply(val1);
            return result.setScale(2, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "0.00";
    }

    public static String bigDecimalStringByMoney(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            if (val.compareTo(BigDecimal.ONE) > 0) {
                return val.setScale(0, BigDecimal.ROUND_HALF_UP).toString();

            }
            return val.setScale(2, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "0.00";
    }

    /**
     * <p>Description:BigDecimal亿为单位，并保留2位小数</p>
     *
     * @param val 以元为单位的数据
     * @return
     * @author 陈姣姣
     * @date 2016年8月18日 下午7:16:52
     */
    public static String bigDecimal2StringByBillion(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            return val.divide(new BigDecimal(100000000)).setScale(2, BigDecimal.ROUND_HALF_UP).toString() + "亿";
        }
        return "0.00";
    }

    /**
     * <p>Description:BigDecimal亿为单位，并保留2位小数</p>
     *
     * @param val 以万为单位的数据
     * @return
     * @author 陈姣姣
     * @date 2016年8月18日 下午7:16:52
     */
    public static String bigDecimal2StringByHhousand(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            return val.divide(new BigDecimal(10000)).setScale(2, BigDecimal.ROUND_HALF_UP).toString() + "亿份";
        }
        return "0.00";
    }

    /**
     * <p>Description:bigDecimal转String，保留size位小数，当数据为空是返回 "--"</p>
     *
     * @param val  需要转换的值
     * @param size 保留的小数位数
     * @return
     * @author 陈姣姣
     * @date 2016年8月17日 下午4:58:34
     */
    public static String bigDecimalStr(BigDecimal val, int size) {
        if (val != null) {
            return val.setScale(size, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "--";
    }

    /**
     * @param val
     * @return boolean
     * @throws
     * @Title: isNotZero
     * @Description: 判断BigDecimal数据是否为0, 不为0返回true，否则返回false
     */
    public static boolean isNotZero(BigDecimal val) {
        if (val != null && val.compareTo(BigDecimal.ZERO) != 0) {
            return true;
        }
        return false;

    }


    /**
     * @param val
     * @return String
     * @throws
     * @Title: String2Percentage
     * @Description: 把String类型的值转百分数
     */
    public static String string2Percentage(String val) {
        LOGGER.info("把String类型的数据转百分数保留2位小数 val：{}", val);
        try {
            if (val == null && "".equals(val)) {
                return "0.00";
            }
            return String.format("%.2f", new BigDecimal(val).multiply(new BigDecimal(100)));
        } catch (Exception e) {
            LOGGER.error("把String类型的数据转百分数保留2位小数 val[{}]", val, e);
            return "0.00";
        }
    }

    /**
     * @param val
     * @return String
     * @throws
     * @Title: StringPercentage
     * @Description: 把String类型的值转百分数
     */
    public static String stringPercentage(String val) {
        LOGGER.info("把String类型的数据转百分数 val[{}]", val);
        try {
            if (val == null && "".equals(val)) {
                return "0";
            }
            return String.format("%.0f", new BigDecimal(val).multiply(new BigDecimal(100)));
        } catch (Exception e) {
            LOGGER.error("把String类型的值转百分数 val[{}]", val, e);
            return "0";
        }
    }

    /**
     * <p>Description:把String类型的值转折扣数</p>
     *
     * @param val
     * @param val1
     * @return
     * @author 陈姣姣
     * @date 2016年8月26日 下午6:22:20
     */
    public static String stringPercentage(BigDecimal val, BigDecimal val1) {
        LOGGER.info("把String类型的数据转百分数 val[{}]", val);
        try {
            if (val == null || val1 == null || val1.compareTo(BigDecimal.ZERO) == 0) {
                return "";
            }
            if (val.compareTo(val1) == 0) {
                return "";
            }
            return String.format("%.0f", val.divide(val1, 4).multiply(new BigDecimal(10)));
        } catch (Exception e) {
            LOGGER.error("把String类型的值转百分数 val[{}]", val, e);
            return "";
        }
    }

    /**
     * <p>
     * Description: 把String类型的值转2位小数
     * </p>
     *
     * @param val
     * @return
     * @author 陈姣姣
     * @date 2016年5月6日 下午6:29:25
     */
    public static String string2Digits(String val) {

        if (val == null || "".equals(val)) {
            return "0.00";
        } else {
            try {
                BigDecimal bg = new BigDecimal(val);
                return bg.setScale(2, BigDecimal.ROUND_HALF_UP).toString();
            } catch (Exception e) {
                LOGGER.error("把String类型的值转2位小数", e);
            }
        }
        return "0.00";
    }

    public static String stringDigits(String val) {

        if (val == null || "".equals(val)) {
            return "0";
        } else {
            try {
                BigDecimal bg = new BigDecimal(val);
                return bg.setScale(0, BigDecimal.ROUND_HALF_UP).toString();
            } catch (Exception e) {
                LOGGER.error("把String类型的值转整数", e);
            }
        }
        return "0";
    }

    /**
     * @param val
     * @param bankRate
     * @return BigDecimal
     * @throws
     * @Title: getDepositMulriple
     * @Description: 获得银行活期的倍数
     */
    public static String getDepositMulriple(String val, String bankRate) {
        try {
            if (StringUtils.isNotBlank(bankRate) && StringUtils.isNotBlank(val)) {
                BigDecimal rate = new BigDecimal(bankRate);
                BigDecimal v = new BigDecimal(val);
                if (rate != null && rate.compareTo(BigDecimal.ZERO) != 0 && v != null) {
                    return String.format("%.2f", v.divide(rate, 2, BigDecimal.ROUND_HALF_UP));
                }
            }
        } catch (Exception e) {
            LOGGER.error("查询银行活期的倍数bankRate[{}],val[{}]", bankRate, val, e);
        }
        return "0.00";

    }

    /***
     * BigDecimal 转换为 string 保留小数点后保留整数
     *
     * @param bigDecimal 表示十进制位的数
     * @return 创建人: xianlong@66money.com
     */
    public static String bigToStr(BigDecimal bigDecimal) {
        if (null != bigDecimal) {
            return bigDecimal.setScale(0, BigDecimal.ROUND_HALF_UP).toString();
        }
        return "0";
    }
}
