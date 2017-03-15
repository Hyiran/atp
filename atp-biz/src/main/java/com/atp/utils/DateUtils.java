package com.atp.utils;

/**
 * 文件描述：
 * 文件的作用
 */

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.StringUtils;

/**
 * 类描述： 日期工具类
 *
 * @author zhouhui
 * @createTime Mar 13, 2014
 * @version 1.0
 * @modify Mar 13, 2014
 */
public class DateUtils {
    public static final String YYYY_PATTERN = "yyyy";
    public static final String YYYY_MM_PATTERN = "yyyyMM";
    public static final String YYYY_MM_DD_PATTERN = "yyyy-MM-dd";
    public static final String YYYY_MM_DD_PATTERN_1 = "yyyyMMdd";
    public static final String YYYY_MM_DD_HH_MM_SS_PATTERN = "yyyy-MM-dd HH:mm:ss";
    public static final String YYYY_MM_DD_HH_MM_SS_PATTERN_1 = "yyyyMMddHHmmss";
    public static final String YYYY_MM_DD_HH_MM_SS_SSSS_PATTERN = "yyyyMMddHHmmssSSSS";
    public static final String YYYY_MM_DD_HH_MM_PATTERN = "yyyyMMddHHmm";
    public static final String YYYYMMDD_HH_MM_SS_PATTERN = "yyyyMMdd HH:mm:ss";
    public static final String START_TIME = " 00:00:00";
    public static final String END_TIME = " 23:59:59";

    private static SimpleDateFormat sdf = new SimpleDateFormat();

    public static int getYear(boolean current) {

        sdf.applyPattern(YYYY_PATTERN);

        if (current) {
            return Integer.parseInt(sdf.format(System.currentTimeMillis()));
        }
        return Integer.parseInt(sdf.format(System.currentTimeMillis())) - 1;

    }

    public static int getYearAndMonth(boolean current) {

        sdf.applyPattern(YYYY_MM_PATTERN);

        if (current) {
            return Integer.parseInt(sdf.format(System.currentTimeMillis()));
        }
        return Integer.parseInt(sdf.format(System.currentTimeMillis())) - 1;

    }

    public static SimpleDateFormat getDateFormat(String pattern) {
        sdf.applyPattern(pattern);
        return sdf;

    }

    public static Date getDate() {
        return new Date();
    }

    public static Date getDateByPattern(String date, String pattern) {
        sdf.applyPattern(pattern);
        try {
            return sdf.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }

    public static String formatStrDate(String datestr, String srcFormat, String targetFormat) {
        try {
            sdf.applyPattern(srcFormat);
            datestr = StringUtils.trim(datestr);
            Date date = sdf.parse(datestr);
            sdf.applyPattern(targetFormat);
            return sdf.format(date);
        } catch (ParseException e) {
            return datestr;
        }

    }

    public static String getStrDateByPattern(Date date, String pattern) {
        sdf.applyPattern(pattern);
        try {
            return sdf.format(date);
        } catch (Exception e) {
            return sdf.format(date);
        }
    }

    public static String getStrDateByPattern(String pattern) {
        sdf.applyPattern(pattern);
        try {
            return sdf.format(new Date());
        } catch (Exception e) {
            return sdf.format(new Date());
        }
    }

    public static String conventDate(String date, boolean begin) {
        if (date == null || date.isEmpty()) {
            return date;
        }
        if (begin) {
            return date + START_TIME;
        } else {
            return date + END_TIME;
        }
    }

    /**
     * @param data
     *            yyyyMMdd格式日期20150211
     * @return 例：2014年12月24日
     */
    /**
     * <p>
     * Description:日期格式转换带中文年月日
     * </p>
     *
     * @param data
     *            yyyyMMdd格式日期20150211
     * @return 例：2014年12月24日
     * @author 庞子运
     * @date 2016年5月9日 下午2:43:38
     */
    public static String formatData(String data) {
        String dataFormat = "";
        if (data != null && !"".equals(data)) {
            dataFormat = data.substring(0, 4) + "年";
            if (data.substring(4, 5).equals("1"))
                dataFormat += data.substring(4, 5);
            dataFormat += data.substring(5, 6) + "月";
            if (!data.substring(6, 7).equals("0"))
                dataFormat += data.substring(6, 7);
            dataFormat += data.substring(7, 8) + "日";
        }
        return dataFormat;
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

    public static String convertDate(String date) {
        if (date.length() == 8) {
            date = stringInsert(date, "-", 4);
            date = stringInsert(date, "-", 7);
        } else if (date.length() == 10) {
            date = date.replace("-", "");
        }
        return date;
    }

    public static String stringInsert(String a, String b, int t) {
        return a.substring(0, t) + b + a.substring(t, a.length());
    }

    public static int getLastMonthDays() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, -1);
        return cal.getActualMaximum(Calendar.DATE);

    }

    public static void main(String[] args) {
    }
}
