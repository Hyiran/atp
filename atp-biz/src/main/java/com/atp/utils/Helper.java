package com.atp.utils;

import com.atp.common.Constants;
import com.atp.common.MessageReq;
import com.atp.common.MessageResp;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;
import com.uusoft.top.utils.RSAHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.MessageFormat;
import java.util.Random;
import java.util.UUID;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/22.
 */
public class Helper {

    public static final Logger logger = LoggerFactory.getLogger(Helper.class);

    /**
     * Gets req data.
     * 方法描述：
     * 加密报文体，组装请求参数
     *
     * @param businType the busin type
     * @param instId    the inst id
     * @param clazz     the clazz
     * @param req       the req
     * @return the req data
     */
    public static String getReqData(String businType, String instId, Class<?> clazz, Object req) {  //获得请求报文头信息
        MessageReq messageReq = getMessageReq(businType, instId);
        String reqParmValue = RSAHelper.topEncrypt(getXStream(clazz, "Request").toXML(req), Constants.PUB_KEY, Constants.CHARSET, messageReq.getInstId());
        messageReq.setRequestBody(reqParmValue);
        messageReq.setSignature(RSAHelper.topSign(reqParmValue, Constants.PRI_KEY, messageReq.getInstId()));
        return getXStream(MessageReq.class, "Message").toXML(messageReq);

    }

    /**
     * 方法描述：
     * 报文头
     *
     * @param businType
     * @return MessageReq
     * @author 周辉
     */
    public static MessageReq getMessageReq(String businType, String instId) {
        MessageReq messageReq = new MessageReq();
        messageReq.setId(String.valueOf(new Random().nextInt(1000000000)));
        messageReq.setInstId(instId);//商户标识
        messageReq.setVersion(1);
        messageReq.setTransTime(DateUtils.getStrDateByPattern(DateUtils.YYYY_MM_DD_HH_MM_SS_PATTERN_1));
        messageReq.setExtension("nothing");
        messageReq.setSstoken(UUID.randomUUID().toString());
        messageReq.setBusinType(businType);
        messageReq.setRequestBody("");
        messageReq.setSignature("");

        return messageReq;
    }

    public static MessageResp getMessageResp(String result) {
        XStream xstream = new XStream(new DomDriver());
        MessageResp messageResp = new MessageResp();
        xstream.autodetectAnnotations(true);
        xstream.alias("Message", MessageResp.class);
        messageResp = (MessageResp) xstream.fromXML(result);
        String InsitId = messageResp.getInstId();
        logger.info("InsitId=" + InsitId);
        String ResponseValue = messageResp.getResponseBody();
        // 验证签名
        if (!RSAHelper.topVerify(ResponseValue, messageResp.getSignature(), Constants.PUB_KEY, messageResp.getInstId())) {
            System.out.println(MessageFormat.format("校验签名失败：请求功能号【{0}】，机构标识【{1}】", messageResp.getBusinType(),
                    messageResp.getInstId()));
        } else {
            logger.info("verify ok =" + "信息没被篡改，你可以校验 加密数据的机构ID和head的是否一致，来判断是否是你请求数据！");

            // 解密
            String resp = RSAHelper.topDecrypt(ResponseValue, Constants.PRI_KEY,
                    Constants.CHARSET, messageResp.getInstId());

            if (com.uusoft.top.utils.StringUtil.IsEmpty(resp)) {
                logger.error("Error: 解密失败!");
            } else {
                messageResp.setResponseBody(resp);
            }
        }
        return messageResp;
    }


    public static XStream getXStream(Class<?> clazz, String rootName) {
        /*if(xStream == null)
        {
			xStream = new XStream();
		}*/
        XStream xStream = new XStream();
        xStream.autodetectAnnotations(true);
        xStream.alias(rootName, clazz);
        return xStream;
    }

}
