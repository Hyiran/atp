package com.atp.utils;

import net.sf.json.xml.XMLSerializer;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Node;


/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/4.
 */
public class XmlUtil {

    /**
     * Xmlto json string.
     * 将xml字符串<STRONG>转换</STRONG>为JSON字符串
     *
     * @param xml the xml
     * @return the string
     */
    public static String xmltoJson(String xml) {
        XMLSerializer xmlSerializer = new XMLSerializer();
        return xmlSerializer.read(xml).toString();
    }

    /**
     * 使用Dom4j将xml格式的字符串转换成可以解析的Document对象
     *
     * @param xml
     * @return doc
     */
    public static Document parseXml2Document(String xml) {
        Document doc = null;
        if (xml != null && xml.equals("")) {
            try {
                doc = DocumentHelper.parseText(xml);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return doc;
    }

    /**
     * 从xml文件中获取节点的值
     *
     * @param xml
     * @param NodeName
     */
    public static String getContentFromXml(String xml, String NodeName) {
        return getContentFromXml(xml, NodeName, 0);
    }

    public static String getContentFromXml(String xml, String NodeName, int index) {
        String value = "";
        try {
            Document document = XmlUtil.parseXml2Document(xml);
            if (document != null) {
                Node node = document.getRootElement();
                document.getNodeTypeName();
            }
        } catch (Exception e) {
            return null;
        }
        return value;

    }

}
