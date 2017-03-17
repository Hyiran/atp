/**
 * @Title: CommonUtils.java
 * @Package com.uusoft.fundbase.util
 * <p>Description: 通用工具类对象</p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 廖明华
 * @version V1.0
 * @since 2015年8月27日 上午1:22:30
 */
package com.atp.utils;

import java.text.Collator;
import java.util.*;
import java.util.regex.Pattern;

/**
 * <p>
 * Description: 通用工具类对象，可以统一对该类进行方法增加
 * </p>
 *
 * @author 廖明华
 * @version V1.0
 * @Company:上海投投金融有限责任公司
 */
@SuppressWarnings({"rawtypes", "unchecked"})
public class CommonUtils {
    /**
     * <p>
     * Description:校验参数是否存在空值
     * </p>
     *
     * @param params 多个参数信息
     * @return 其中一个参数存在空值返回tue，否则false
     * @author 廖明华
     * @date 2015年8月27日 上午1:14:15
     */
    public static boolean existEmpty(String... params) {
        for (String str : params)
            if (isEmpty(str))
                return true;

        return false;
    }

    /**
     * <p>
     * Description:传入参数缺少时，返回缺少主要参数错误信息
     * </p>
     *
     * @param t 返回对象 错误码为1111，对应code.xml中配置的错误描述信息
     * @return 参数缺少时的返回结果对象
     * @author 廖明华
     * @date 2015年8月27日 上午1:18:25
     */
/*    public static <T extends XBaseRes> T insuffcientArgsRes(T t)
    {
        t.setStatus(Integer.valueOf(AppConst.ILLEGALARGUMENTEXCEPTION_CODE));
        t.setMessage(Code.getResultCode(AppConst.ILLEGALARGUMENTEXCEPTION_CODE));
        return t;
    }*/

    /**
     * <p>
     * Description:生成流水号
     * </p>
     *
     * @return 流水号
     * @author 廖明华
     * @date 2015年8月26日 下午8:54:46
     */
    public static String generateSerialno() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    /**
     * <p>
     * Description:调用第三方支付时，需要在参数前增加in_前缀
     * </p>
     *
     * @param inParam 参数
     * @param prefix  前缀
     * @return 添加前缀后的参数key和value
     * @author 廖明华
     * @date 2015年8月27日 上午1:19:43
     */
    public static Map<String, Object> addPrefixInParam(
            Map<String, Object> inParam, String prefix) {
        Map resultMap = new HashMap();
        Collection names = inParam.keySet();
        Iterator loop = names.iterator();
        String key = "";
        while (loop.hasNext()) {
            key = (String) loop.next();
            String values = String.valueOf(inParam.get(key));
            if (key.startsWith(prefix)) {
                resultMap.put(key, values);
            } else {
                if (!resultMap.containsKey(prefix + key)) {
                    resultMap.put(prefix + key, values);
                }
            }
        }
        return resultMap;
    }

    /**
     * <p>
     * Description:判断银行端返回结果是否正确
     * </p>
     *
     * @param retno 返回结果
     * @return 校验通过返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月27日 上午1:24:01
     */
    public static boolean isSuccess(String retno) {
        return isComposeByChar(retno, '0');
    }

    /**
     * <p>
     * Description:判断字符串是否全为某字符组成
     * </p>
     * <p>
     * 例如："abc"包含'a',次方法返回true
     * </p>
     *
     * @param aStr  被比较字符串
     * @param aChar 比较字符串
     * @return 判断字符是否包含
     * @author 廖明华
     * @date 2015年8月27日 上午1:24:46
     */
    public static boolean isComposeByChar(String aStr, char aChar) {
        if ((aStr == null) || "".equals(aStr))
            return false;
        boolean flag = true;
        for (int i = 0; i < aStr.length(); i++) {
            if (aStr.charAt(i) != aChar) {
                flag = false;
                break;
            }
        }
        return flag;
    }

    /**
     * <p>
     * Description:判断字符是否为""、null、" "
     * </p>
     *
     * @param str 需要检验的字符串
     * @return ""、null、" "等字符串返回true；否则返回false
     * @author 廖明华
     * @date 2015年8月27日 上午1:07:14
     */
    public static boolean isEmpty(String str) {
        int strLen;
        if (str == null || (strLen = str.length()) == 0) {
            return true;
        }
        for (int i = 0; i < strLen; i++) {
            if ((Character.isWhitespace(str.charAt(i)) == false)) {
                return false;
            }
        }
        return true;
    }

    /**
     * <p>
     * Description:判断序列是否为空
     * </p>
     *
     * @param list 待判断序列
     * @return 为空返回真，不为空返回假
     * @author rainveno
     * @date 2015年9月11日 上午9:27:45
     */
    public static <T> boolean isEmpty(List<T> list) {
        if (list == null || list.size() == 0)
            return true;
        return false;
    }

    /**
     * <p>
     * Description:判断map是否为空
     * </p>
     *
     * @param map 待判断map
     * @return 为空返回真，不为空返回假
     * @author rainveno
     * @date 2015年9月11日 上午9:28:39
     */
    public static <K, V> boolean isEmpty(Map<K, V> map) {
        if (map == null || map.size() == 0)
            return true;
        return false;
    }

    /**
     * <p>
     * Description:判断集合collect是否为空
     * </p>
     *
     * @param collect 待判断集合
     * @return 为空返回真，不为空返回假
     * @author rainveno
     * @date 2015年9月11日 上午9:28:46
     */
    public static <T> boolean isEmpty(Collection<T> collect) {
        if (collect == null || collect.size() == 0)
            return true;
        return false;
    }

    /**
     * <p>
     * Description:判断字符不为""、null、" "
     * </p>
     *
     * @param str 字符串
     * @return ""、null、" "字符串返回false，否则返回true
     * @author 廖明华
     * @date 2015年8月27日 上午1:10:42
     */
    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    /**
     * <p>
     * Description: 过滤字符串中的空格、回车、换行符、制表符
     *
     * @param str 需要过滤的字符串
     * @return String 过滤后的字符串
     * @author 胡宗鹏
     * @date 2015年8月27日 上午10:10:42
     */
    public static String filterSpace(String str) {
        return Pattern.compile("\\s*|\t|\r|\n").matcher(str).replaceAll("");
    }

    /**
     * <p>
     * Description:圆转分
     * </p>
     *
     * @param applyAmount 金额(字符串)
     * @return
     * @author 周添军
     * @date 2015年8月27日 上午11:11:34
     */
    public static String yuan2Cent(String applyAmount) {
        double fltAppAmount = Double.valueOf(applyAmount).doubleValue();
        return yuan2Cent(fltAppAmount);
    }

    /**
     * <p>
     * Description:圆转分
     * </p>
     *
     * @param applyAmount 金额(double)
     * @return String
     * @author 周添军
     * @date 2015年8月27日 上午11:12:54
     */
    public static String yuan2Cent(double applyAmount) {
        double fltAppAmount = applyAmount;
        long lAppAmount = Math.round(fltAppAmount * 100);
        String applicationamountCent = String.valueOf(lAppAmount);// 交易金额(分)
        return applicationamountCent;
    }

    /**
     * <p>
     * Description: 集合判空
     *
     * @param collection 需要判空的集合
     * @return boolean 是否为空,true为非空,false为空
     * @author 胡宗鹏
     * @date 2015年8月27日 上午10:10:42
     */
    public static boolean isNotEmptyCollection(Collection collection) {
        return collection != null && !collection.isEmpty();
    }

    /**
     * <p>
     * Description: 集合判空
     *
     * @param collection 需要判空的集合
     * @return boolean 是否为空,true为空,false为非空
     * @author 胡宗鹏
     * @date 2015年8月27日 上午10:10:42
     */
    public static boolean isEmptyCollection(Collection collection) {
        return !isNotEmptyCollection(collection);
    }

    /**
     * <p>
     * Description: 检查手机号码，空值或者不合正则表达式的均返回false
     *
     * @param mobile 需要检查的号码
     * @return boolean 是手机号为true,否则false
     * @author 胡宗鹏
     * @date 2015年8月27日 上午10:10:42
     */
    public static boolean isMobile(String mobile) {
        if (isEmpty(mobile))
            return false;
        Pattern mobilePattern = Pattern.compile("1[345789]\\d{9}");
        if (!mobilePattern.matcher(mobile).find()) {
            return false;
        } else if (mobile.length() != 11) {
            return false;
        }

        return true;
    }

    /**
     * <p>Description:中文列表排序</p>
     *
     * @param list
     * @author 王家佳
     * @date 2016-1-20 上午11:15:39
     */
    public static void sortChnList(List<String> list) {

        Collections.sort(list, new Comparator<String>() {
            final Comparator cmp = Collator.getInstance(java.util.Locale.CHINA);

            @Override
            public int compare(String o1, String o2) {
                return cmp.compare(o1, o2);
            }

        });

    }

    /**
     * <p>Description:省份 按字母 进行排序</p>
     * @param provCitys
     * @author 王家佳
     * @date 2016-1-20 上午11:16:02
     */
 /*   public static void provSorts(List<String[]> provCitys)
    {
        Collections.sort(provCitys, new Comparator<String[]>()
        {
            Collator instance = Collator.getInstance(Locale.CHINA);

            public int compare(String[] str1, String[] str2)
            {
                int ret = 0;
                String prov1 = str1[0];
                String prov2 = str2[0];

                KeyValPair keyValuePair1 = rank(prov1);
                KeyValPair keyValuePair2 = rank(prov2);
                if (keyValuePair1.getVal().equals(keyValuePair2.getVal()))
                {
                    ret = instance.compare(prov1, prov2);
                }
                else
                {
                    ret = keyValuePair1.getVal().compareTo(keyValuePair2.getVal()) > 0 ? 1 : -1;
                }
                return ret;
            }

            private KeyValPair rank(String provName)
            {
                KeyValPair keyValPair = new KeyValPair();
                keyValPair.setKey(provName);
                if (provName.startsWith("安徽"))
                {
                    keyValPair.setVal("3");
                }
                else if (provName.startsWith("北京"))
                {
                    keyValPair.setVal("1");
                }
                else if (provName.startsWith("上海"))
                {
                	keyValPair.setVal("2");
                }
                else if (provName.endsWith("重庆"))
                {
                    keyValPair.setVal("4");
                }
                else
                {
                    keyValPair.setVal("5");
                }
                return keyValPair;
            }
        });
    }*/

    /**
     * <p>Description:根据基金状态码判断基金申购状态</p>
     *
     * @param resStatus 状态码
     * @return 业务代码
     * @author 李星星
     * @date 2016年7月15日 上午9:14:37
     */
    public static String subscribeBusinessCodeFalg(String resStatus) {
        String fundOperability = "";
        if (isEmpty(resStatus)) {
            return fundOperability;
        }
        String rg = "0,2,3,4,5,6,9,a";
        String sg = "1,3,4,5,9,a";
        if (rg.indexOf(resStatus) < 0) {
            if ("".equals(fundOperability.toString()))
                fundOperability = "20";
            else
                fundOperability = ",20";
        }
        if (sg.indexOf(resStatus) < 0) {
            if ("".equals(fundOperability.toString()))
                fundOperability = "22";
            else
                fundOperability = ",22";
        }
        return fundOperability;
    }

    /**
     * <p>Description:根据基金状态码判断基金赎回状态</p>
     *
     * @param resStatus 状态码
     * @return 业务代码
     * @author 李星星
     * @date 2016年7月15日 上午9:14:37
     */
    public static String redeemBusinessCodeFalg(String resStatus) {
        String fundOperability = "";
        if (isEmpty(resStatus)) {
            return fundOperability;
        }
        String sh = "1,2,3,4,6,9,a";
        if (sh.indexOf(resStatus) < 0) {
            if ("".equals(fundOperability.toString()))
                fundOperability = "24";
            else
                fundOperability = ",24";
        }
        return fundOperability;
    }


    /**
     * 查询金正风险等级说明
     * 风险等级 :01-低风险,02-中低风险,03-中风险,04-中高风险,05-高风险
     */
    public static String getRiskLevelMark(String riskLevel) {

        if ("01".equals(riskLevel)) {
            return "低风险";
        } else if ("02".equals(riskLevel)) {
            return "中低风险";
        } else if ("03".equals(riskLevel)) {
            return "中风险";
        } else if ("04".equals(riskLevel)) {
            return "中高风险";
        } else if ("05".equals(riskLevel)) {
            return "高风险";
        } else {
            return "";
        }
    }


}
