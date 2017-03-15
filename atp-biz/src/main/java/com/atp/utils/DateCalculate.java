/**
 * @Title: DateCalculate.java
 * @Package com.uusoft.fundbase.util
 * @Description: 时间工具类
 * @Company:上海投投金融信息服务有限公司
 * @author 刘论
 * @date 2015年8月26日 上午11:45:37
 * @version V1.0
 */
package com.atp.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * @Description: 时间工具类
 * @Company:上海投投金融有限责任公司
 * @author 刘论
 * @version V1.0
 */
public class DateCalculate {


    /**
     * title :isSupportT0
     * @Description: 获取当前时间工具类
     * @return
     * @author 刘论
     * @date 2015年8月26日 上午11:46:54
     */
    public static String getCurrDateStr(String format) {
        Calendar c = java.util.Calendar.getInstance();
        return format(c.getTime(), format);
    }

    /**
     *
     * 一个java.util.Date类型的对象 变成一个字符串
     * @param date
     *            日期
     * @param format
     *            格式
     * @return String  返回字符型日期
     * @author 刘论
     * @date 2015年8月26日 上午11:46:54
     */
    public static String format(Date date, String format) {

        String result = "";

        try {
            if (date != null) {
                DateFormat df = new SimpleDateFormat(format);
                result = df.format(date);
            }
        } catch (Exception e) {
        }

        return result;
    }


    private static final Logger logger = LoggerFactory.getLogger(DateCalculate.class);

    public static final String C_TIME_PATTON_DEFAULT = "yyyy-MM-dd HH:mm:ss";
    public static final String C_TIME_PATTON_DEFAULT_1 = "yyyy-MM-dd HH:mm";
    public static final String C_TIME_PATTON_DEFAULT_2 = "yyyyMMddHHmm";
    public static final String C_TIME_PATTON_DEFAULT_4 = "yyyyMMdd HH:mm:ss";
    public static final String C_TIME_PATTON_DEFAULT_5 = "HH:mm:ss";
    public static final String C_MONTH_PATTON_DEFAULT = "yyyyMMdd";
    public static final String DATE_FORMAT_YYYY_MM_DD = "yyyy-MM-dd";


    /**
     * 把一个字符串变成  一个java.util.Date类型的对象
     *
     * @param dateStr 日期字符串
     *
     * @param format
     *               格式字符串
     *
     * 说明 这俩个参数必须相对应;
     * @return 返回日期
     */
    public static Date parseDate(String dateStr, String format) {

        dateStr = dateStr.replaceAll("/", "-");
        Date date = null;
        Locale locale = new Locale("en", "US");    //美国人的习惯 要不然那种 zzz EEE 无法转过去
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format, locale);

        // 必须捕获异常
        try {
            date = simpleDateFormat.parse(dateStr);
        } catch (ParseException e) {
            logger.error("String转date失败 date：{}", dateStr, e);
        }

        return date;
    }

    /**
     * 返回年份
     *
     * @param date
     *            日期
     * @return 返回年份
     */
    public static int getYear(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.YEAR);
    }

    /**
     * 返回月份
     *
     * @param date
     *            日期
     * @return 返回月份
     */
    public static int getMonth(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.MONTH) + 1;
    }

    /**
     * 返回月份中的某一日
     *
     * @param date
     *            日期
     * @return 返回月份中的某一日
     */
    public static int getDay(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 返回小时
     *
     * @param date
     *            日期
     * @return 返回小时
     */
    public static int getHour(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.HOUR_OF_DAY);
    }

    /**
     * 返回分钟
     *
     * @param date
     *            日期
     * @return 返回分钟
     */
    public static int getMinute(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.MINUTE);
    }

    /**
     * 返回秒钟
     *
     * @param date
     *            日期
     * @return 返回秒钟
     */
    public static int getSecond(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.SECOND);
    }

    /**
     * 返回毫秒
     *
     * @param date
     *            日期
     * @return 返回毫秒
     */
    public static long getMillis(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.getTimeInMillis();
    }

    /**
     * 返回格式化的字符串日期yyyy-MM-dd
     *
     * @param date
     *            日期
     * @return 返回字符串日期
     */
    public static String getStringDate(Date date) {
        return format(date, DATE_FORMAT_YYYY_MM_DD);
    }

    /**
     * 返回格式化的字符串日期yyyyMMdd
     *
     * @param date
     *            日期
     * @return 返回字符串日期
     */
    public static String getShortStringDate(Date date) {
        return format(date, C_MONTH_PATTON_DEFAULT);
    }

    /**
     * 返回格式化的字符串时间HH:mm:ss
     *
     * @param date
     *            日期
     * @return 返回字符串时间
     */
    public static String getStringTime(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT);
    }

    /**
     * 返回格式化的字符串时间MM-dd(yyyy-MM-dd)[DATE_FORMAT_YYYY_MM_DD]
     * @param date 日期
     * @return 返回字符串时间
     */
    public static String date2Time(Date date) {
        return format(date, "MM-dd");
    }

    /**
     * 返回格式化的字符串时间MM-dd(yyyy-MM-dd)[DATE_FORMAT_YYYY_MM_DD]
     * @param date 日期
     * @return 返回字符串时间
     */
    public static String date2Time(String date) {
        return format(parse2Date(date), "MM-dd");
    }

    /**
     * 返回格式化的字符串时间MM-dd(yyyy-MM-dd)[DATE_FORMAT_YYYY_MM_DD]
     * @param date 日期
     * @return 返回字符串时间
     */
    public static String date2Times(Date date) {
        return format(date, DATE_FORMAT_YYYY_MM_DD);
    }

    /**
     * 返回格式化的字符串时间yyyy-MM-dd HH:mm:ss
     *
     * @param date
     *            日期
     * @return 返回字符型日期时间
     */
    public static String getStringDateTime(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT);
    }

    /**
     * 返回格式化的字符串时间yyyy-MM-dd HH:mm
     *
     * @param date
     *            日期
     * @return 返回字符型日期时间
     */
    public static String getStringDateMinTime(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT_1);
    }

    /**
     * @Title:getShortStringDateMinTime
     * @Description: 返回格式化的字符串时间yyyyMMddHHmm
     * @param date 日期类型
     * @return
     */
    public static String getShortStringDateMinTime(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT_2);
    }

    /**
     *
     * @Title:getShortTime
     * @Description: 格式化返回字符串HHmmss
     */
    public static String getShortTime(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT_5);
    }

    /**
     * @Title:getDateTime
     * 今年返MM-dd HH:mm
     * 以前返yyyy-MM-dd HH:mm
     * @Description: 返回格式化的字符串时间为
     * @param date 日期
     * @return
     */
    public static String getDateTime(Date date) {
        if (getYear(new Date()) == getYear(date)) {
            return format(date, "M月d日  HH:mm");
        } else {
            return format(date, C_TIME_PATTON_DEFAULT_1);
        }
    }

    /**
     * 日期加天数
     *
     * @param date
     *            日期
     * @param day
     *            天数
     * @return 返回相加后的日期
     */
    public static Date addDate(Date date, int day) {
        Calendar c = java.util.Calendar.getInstance();
        c.setTimeInMillis(getMillis(date) + ((long) day) * 24 * 3600 * 1000);
        return c.getTime();
    }

    /**
     * @Description: 返回下一日期
     * @param dateStr
     * @return
     * @author 王家佳
     * @date 2015-11-12 下午4:38:42
     */
    public static String getNextDateStr(String dateStr, String format) {
        Date date = parseDate(dateStr, format);
        Calendar c = java.util.Calendar.getInstance();
        c.setTimeInMillis(date.getTime() + (24 * 3600 * 1000));
        return format(c.getTime(), format);
    }

    public static Date addDate(String date, int day) {
        Calendar c = java.util.Calendar.getInstance();
        c.setTimeInMillis(getMillis(DateCalculate.parseShortDate(date)) + ((long) day) * 24 * 3600 * 1000);
        return c.getTime();
    }

    /**
     * 日期减日期
     * 求相差几天的问题
     * @param date1
     *            日期
     * @param date2
     *            日期
     * @return 返回相减后的日期
     */
    public static int diffDate(Date date1, Date date2) {
        return (int) ((getMillis(date1) - getMillis(date2)) / (24 * 3600 * 1000));
    }


    /**
     * @Title:parseDate
     * @Description: 字符串日期转Date型日期
     * @param dateStr 格式如：yyyy-MM-dd
     * @return Date日期
     */
    public static Date parseDate(String dateStr) {
        return parseDate(dateStr, DATE_FORMAT_YYYY_MM_DD);
    }

    /**
     * @Title:parseDate
     * @Description: 字符串日期转Date型日期
     * @param dateStr 格式如：yyyyMMdd
     * @return Date日期
     */
    public static Date parseDateToNumber(String dateStr) {
        return parseDate(dateStr, C_MONTH_PATTON_DEFAULT);
    }

    /**
     * @Title:parseDate
     * @Description: 字符串日期转Date型日期
     * @param dateStr 格式如：yyyy-MM-dd
     * @return Date日期
     */
    public static Date parse2Date(String dateStr) {
        return parseDate(dateStr, C_TIME_PATTON_DEFAULT);
    }


    /**
     * @Title:parseDate
     * @Description: 字符串日期转Date型日期
     * @param dateStr 格式如：yyyyMMdd HH:mm:ss
     * @return Date日期
     */
    public static Date parse4Date(String dateStr) {
        return parseDate(dateStr, C_TIME_PATTON_DEFAULT_4);
    }

    /**
     * @Title:parseShortDate
     * @Description: 字符串日期转Date型日期
     * @param dateStr 格式如：yyyyMMdd
     * @return Date日期
     */
    public static Date parseShortDate(String dateStr) {
        logger.info("方法名：parseShortDate, dateStr[{}]", dateStr);
        return parseDate(dateStr, C_MONTH_PATTON_DEFAULT);
    }

    /**
     * @Title:getDate
     * @Description: 日期转换2014-11-28转20141128 20141128转2014-11-28
     * @param date - 日期（如：20141128或2014-11-28）
     * @return yyyy-MM-dd或yyyyMMdd
     */
    public static String getDate(String date) {
        logger.info("方法名：getDate, date[{}]", date);

        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        String result = "";
        if (date.length() == 8) {
            result = stringInsert(date, '-', 4);
            result = stringInsert(result, '-', 7);
        } else if (date.length() == 10) {
            result = date.replace("-", "");
        }
        return result;
    }

    /**
     * @Title:getTime
     * @Description: 时间转换15:12:02转151202 151202转15:12:02
     * @param time - 日期（如：15:12:02或151202）
     * @return HH:mm:ss或HHmmss
     */
    public static String getTime(String time) {
        if (CommonUtils.isEmpty(time)) {
            return "";
        }
        String result = "";
        if (time.length() == 6) {
            result = stringInsert(time, ':', 2);
            result = stringInsert(result, ':', 5);
        } else if (time.length() == 8) {
            result = time.replace(":", "");
        }
        return result;
    }

    public static String stringInsert(String a, char b, int t) {
        return a.substring(0, t) + b + a.substring(t, a.length());
    }

    public static String stringInsert(String a, String b, int t) {
        return a.substring(0, t) + b + a.substring(t, a.length());
    }

    /**
     * 取得指定月份的第一天
     *
     * @param strdate yyyy-MM
     *            String
     * @return String
     */
    public static String getMonthBegin(String strdate) {
        logger.info("方法名：getMonthBegin, strdate[{}]", strdate);

        if (CommonUtils.isEmpty(strdate)) {
            return "";
        }
        Date date = parseDate(strdate);//注意这时候的格式 要按"yyyy-MM-dd"
        return format(date, "yyyy-M") + "-01";//最后得到的  本来是可以任意格式的;   但是考虑到下一方法调用到这一方法的结果;
    }

    /**
     * 取得指定月份的最后一天
     *
     * @param strdate
     *            String
     * @return String
     */
    public static String getMonthEnd(String strdate) {
        logger.info("方法名：getDateAndWeek, strdate[{}]", strdate);

        if (CommonUtils.isEmpty(strdate)) {
            return "";
        }
        Date date = parseDate(getMonthBegin(strdate));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1);//加一个月
        calendar.add(Calendar.DAY_OF_YEAR, -1);//减一天
        return getStringDate(calendar.getTime());
    }


    /**
     * @Title:getDateAndWeek
     * @Description: 根据日期类型转换为日期星期，转换后格式如：03月26日 星期四
     * @param date 日期类型
     * @return MM月dd日 EE
     */
    public static String getDateAndWeek(Date date) {
        DateFormat dateFormat = new SimpleDateFormat("M月d日 EE", Locale.CHINA);
        return dateFormat.format(date);
    }

    /**
     * @Title:getDateAndWeek
     * @Description: 根据日期类型转换为日期星期，转换后格式如：2016-03-04 星期四
     * @param date 日期类型(yyyy-MM-dd)
     * @return MM月dd日 EE
     */
    public static String getYMDAndWeek(String date) {
        logger.info("方法名：getYMDAndWeek, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd EE", Locale.CHINA);
        return dateFormat.format(parseDate(date));
    }

    /**
     * @Title:getDateAndWeek
     * @Description: 根据日期类型转换为日期星期，转换后格式如：2016-03-04 星期四
     * @param date 日期类型(yyyyMMdd)
     * @return MM月dd日 EE
     */
    public static String getYMDAndWeekToNumber(String date) {
        logger.info("方法名：getYMDAndWeek, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd EE", Locale.CHINA);
        return dateFormat.format(parseShortDate(date));
    }

    /**
     * @Title:getDateAndWeek
     * @Description: 根据字符串日期转换为日期星期，转换后格式如：03-26 星期四
     * @param date - 字符串日期类型，日期格式如：20150326
     * @return MM月dd日 EE
     */
    public static String getDateAndWeek(String date) {
        logger.info("方法名：getDateAndWeek, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("M月d日 EE", Locale.CHINA);
        return dateFormat.format(DateCalculate.parseShortDate(date));
    }

    /**
     * <p>Description:yyyyMMdd型日期转为M月d日(EE)</p>
     * @param date yyyyMMdd
     * @return
     * @author 陈姣姣
     * @date 2016年6月14日 下午4:12:52
     */
    public static String dateAndWeekByYYYYMMDD(String date) {
        logger.info("方法名：dateAndWeek, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("M月d日(EE)", Locale.CHINA);
        return dateFormat.format(parseShortDate(date));
    }

    /**
     *
     * <p>Description:yyyy-MM-dd型日期转为M月d日(EE</p>
     * @param date
     * @return
     * @author 陈姣姣
     * @date 2016年6月22日 下午2:24:44
     */
    public static String dateAndWeek(String date) {
        logger.info("方法名：dateAndWeek, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("M月d日(EE)", Locale.CHINA);
        return dateFormat.format(parseDate(date));
    }

    public static String getMonthUnderlineDayAndWeek(String date) {
        logger.info("方法名：getMonthUnderlineDayAndWeek, date[{}]", date);

        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        DateFormat dateFormat = new SimpleDateFormat("M-d EE", Locale.CHINA);
        return dateFormat.format(DateCalculate.parseShortDate(date));
    }

    /**
     * @Title:getDateToWeek
     * @Description: 根据字符串日期转换为日期星期，转换后格式如：星期四
     * @param date - 字符串日期类型，日期格式如：20150326
     * @return MM月dd日 EE
     */
    public static String getDateToWeek(Date date) {
        DateFormat dateFormat = new SimpleDateFormat("EE", Locale.CHINA);
        return dateFormat.format(date);
    }

    /**
     * @Title:getMonthDate
     * @Description: 根据日期类型转换为-月-日
     * @param date 日期类型
     * @return M月d日
     */
    public static String getMonthDate(String date) {
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        String result = date;
        if (date.length() == 8) {
            result = stringInsert(date, '-', 4);
            result = stringInsert(result, '-', 7);
        } else if (date.length() == 10) {
            result = date.replace("-", "");
        }
        DateFormat dateFormat = new SimpleDateFormat("M月d日");
        return dateFormat.format(parseDate(result));
    }

    public static String getMonthUnderlineDay(String date) {
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        String result = date;
        if (date.length() == 8) {
            result = stringInsert(date, '-', 4);
            result = stringInsert(result, '-', 7);
        }
        DateFormat dateFormat = new SimpleDateFormat("M-d");
        return dateFormat.format(parseDate(result));
    }

    /**
     * @Title:getMonthDate
     * @Description: 根据字符串日期转换为-月-日
     * @param date 日期类型
     * @return M月d日
     */
    public static String getMonthDate(Date date) {
        DateFormat dateFormat = new SimpleDateFormat("M月d日");
        return dateFormat.format(date);
    }

    /**
     *
     * @Title: getDateTime
     * @Description: 根据字符串时间转换为日期时间，转换后格式如：2015年5月11日 10:14
     * @param time 字符串时间
     * @return String(yyyy年M月d日 HH:mm)
     * @throws
     */
    public static String getDateTime(String time) {
        if (CommonUtils.isEmpty(time)) {
            return "";
        }
        String result = time;
        DateFormat dateFormat = new SimpleDateFormat("yyyy年M月d日 HH:mm");
        if (time.length() >= 8) {
            result = stringInsert(time, '-', 4);
            result = stringInsert(result, '-', 7);
            result = stringInsert(result, ' ', 10);
        }
        return dateFormat.format(DateCalculate.parse2Date(result));
    }

    /**
     *
     * @Title: getDate
     * @Description: 根据字符串时间(20150511)转换为日期，转换后格式如：2015年5月11日
     * @param date 字符串时间
     * @return String String(yyyy年M月d日 )
     * @throws
     */
    public static String dateString(String date) {
        logger.info("方法名：DateString, date[{}]", date);
        if (CommonUtils.isEmpty(date)) {
            return "";
        }
        String result = date;
        DateFormat dateFormat = new SimpleDateFormat("yyyy年M月d日");
        if (date.length() == 8) {
            result = stringInsert(date, '-', 4);
            result = stringInsert(result, '-', 7);
        } else if (date.length() == 10) {
            result = date.replace("-", "");
        }
        return dateFormat.format(parseDate(result));

    }

    /**
     * 返回格式化的字符串日期yyyyMMddHH
     *
     * @param date
     *            日期
     * @return 返回字符串日期
     */
    public static String date2String(String date) {
        return format(DateCalculate.parseDate(date), C_TIME_PATTON_DEFAULT_2);
    }

    /**
     * 返回格式化的字符串日期yyyyMMddHH
     *
     * @param date
     *            日期
     * @return 返回字符串日期
     */
    public static String date2String(Date date) {
        return format(date, C_TIME_PATTON_DEFAULT_2);
    }

    //
    public static String getTodayStr() {
        Calendar calendar = Calendar.getInstance(); // 得到日历
        calendar.setTime(new Date());// 把当前时间赋给日历
        //calendar.add(Calendar.DATE, -1); // 设置为前一天
        return new SimpleDateFormat("yyyyMMdd").format(calendar.getTime());
    }

    public static Date plusDate(String dateStr, int day) {
        Calendar calendar = java.util.Calendar.getInstance();
        Date date = DateCalculate.parseDate(dateStr);
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, day);
        return calendar.getTime();
    }

    /**
     * @Title:getShortDay
     * @Description: 格式化返回字符串yyyyMMdd
     */
    public static String getShortDay(Date date) {
        return format(date, C_MONTH_PATTON_DEFAULT);
    }

    /**
     * <p>Description:获得月份和天数</p>
     * @param str yyyyMMdd
     * @return
     * @author yuanyiping
     * @date 2016年11月1日 下午6:12:55   
     */
    public static String getMonthAndDate(String str) {
        Date date = parseDate(str, C_MONTH_PATTON_DEFAULT);
        String format = "MM-dd";
        return format(date, format);
    }

}
