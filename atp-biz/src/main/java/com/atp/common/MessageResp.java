package com.atp.common;

import com.atp.utils.DateUtils;
import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 * 类描述：
 * 返回数据 实体类
 *
 * @author pc
 * @data 2014年10月14日
 */
@XmlRootElement(name = "Message")
@XStreamAlias("Message")
public class MessageResp extends MessageHead implements Serializable {

    private static final long serialVersionUID = 1L;
    @XStreamOmitField
    private Logger logger = LoggerFactory.getLogger(MessageResp.class);
    @XmlElement
    private String responseBody; //请求参数集合,经过加密/封装

    public enum DataFormatType  //数据格式
    {
        Xml, Json
    }

    ;

    public MessageResp(String id, int version, String instId, String transTime,
                       String extension, String sstoken, String businType,
                       String responseBody, String signature) {

        this.id = id;
        this.version = version;
        this.instId = instId;
        this.transTime = transTime;
        this.extension = extension;
        this.sstoken = sstoken;
        this.businType = businType;
        this.responseBody = responseBody;
        this.signature = signature;

    }

    public MessageResp() {
    }

    public String getResponseBody() {
        return responseBody;
    }

    @XmlElement
    public void setResponseBody(String responseBody) {
        this.responseBody = responseBody;
    }


    public static MessageResp getMessageResp(String id, int version, String instId, String businTpe) {
        return new MessageResp(id,
                version, instId, DateUtils.getStrDateByPattern(DateUtils.YYYY_MM_DD_HH_MM_SS_PATTERN_1), "", "no-sstoken", businTpe, "", "");
    }
}
