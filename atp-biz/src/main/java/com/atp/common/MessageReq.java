package com.atp.common;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.uusoft.top.utils.RSAHelper;
import org.apache.log4j.Logger;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.text.MessageFormat;

@XmlRootElement(name = "Message")
@XStreamAlias("Message")
public class MessageReq extends MessageHead implements Serializable {
    private static final long serialVersionUID = 628661233272326986L;
    private String requestBody;//
    private static Logger logger = Logger.getLogger(MessageReq.class);

    public String getRequestBody() {
        return requestBody;
    }

    @XmlElement
    public void setRequestBody(String requestBody) {
        this.requestBody = requestBody;
    }

    public MessageReq(String id, int version, String instId, String transTime,
                      String extension, String sstoken, String businType,
                      String requestBody, String signature) {

        this.id = id;
        this.version = version;
        this.instId = instId;
        this.transTime = transTime;
        this.extension = extension;
        this.sstoken = sstoken;
        this.businType = businType;
        this.requestBody = requestBody;
        this.signature = signature;

    }

    public MessageReq() {
    }

    /**
     * 方法描述：
     * 获取消息体对象
     *
     * @param bodyType
     * @return
     * @author 周辉
     */
    @SuppressWarnings("unchecked")
    public <T> T getBody(Class<T> bodyType) {
        if (body == null) {
            // 验证签名
            if (!RSAHelper.topVerify(this.requestBody, this.signature, Constants.PUB_KEY, this.instId)) {
                logger.error(MessageFormat.format("校验签名失败：请求功能号【{0}】，机构标识【{1}】", this.businType, this.instId));
                return null;
            }

            // 解密数据
            String plainbody = RSAHelper.topDecrypt(this.requestBody, Constants.PUB_KEY, Constants.CHARSET, this.instId);
            // 将数据反序列化为对象
            XStream xs = new XStream();
            xs.autodetectAnnotations(true);
            xs.alias("Request", bodyType);
            this.body = xs.fromXML(plainbody);
        }
        return (T) this.body;
    }

    /**
     * 方法描述：
     * 解析XML文件，反序列化为对象
     *
     * @param xml
     * @return
     * @author 周辉
     */
    public static MessageReq fromXml(String xml) {
        XStream xs = new XStream();
        xs.autodetectAnnotations(true);
        xs.alias("Message", MessageReq.class);
        return (MessageReq) xs.fromXML(xml);
    }

    /**
     *
     * 方法描述：
     *    解析json文件，反序列化为对象
     * @param xml
     * @return
     * @author 周辉
     */
//    public static MessageReq fromJson(String xml)
//    {
//
//        MessageReq obj = null;
//        System.out.println(xml);
//        ObjectMapper mapper = new ObjectMapper();
//        try
//        {
//            String ss = xml.substring(11, xml.length() - 1);
//            obj = mapper.readValue(ss, MessageReq.class);
//        }
//        catch (Exception e)
//        {
//            logger.error(e);
//        }
//
//        return (MessageReq) obj;
//    }
}
