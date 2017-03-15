/**
 * <p>Title: MessageHead.java</p>
 *
 * @Package com.uusoft.optt.message
 * <p>Description: TODO(用一句话描述该文件做什么)</p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 周辉
 * @version V1.0
 * @since 2016年4月19日 下午4:14:08
 */
package com.atp.common;

import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 * <p>Description: 基类：报文头</p>
 * <p>Company:上海投投金融有限责任公司</p>
 *
 * @author 周辉/zhouhui@66money.com
 * @version V1.0
 * @since 2016年4月19日 下午4:14:08
 */
public class MessageHead {
    @XStreamAsAttribute
    protected String id;
    protected int version;
    protected String instId;
    protected String transTime;
    protected String extension;
    protected String sstoken;
    protected String businType;
    protected String signature;
    @XStreamOmitField
    protected Object body = null;

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public String getInstId() {
        return instId;
    }

    public void setInstId(String instId) {
        this.instId = instId;
    }

    public String getTransTime() {
        return transTime;
    }

    public void setTransTime(String transTime) {
        this.transTime = transTime;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public String getSstoken() {
        return sstoken;
    }

    public void setSstoken(String sstoken) {
        this.sstoken = sstoken;
    }

    public String getBusinType() {
        return businType;
    }

    public void setBusinType(String businType) {
        this.businType = businType;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getId() {
        return id;
    }

    public Object getBody() {
        return body;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setBody(Object body) {
        this.body = body;
    }

    public MessageHead() {
    }
}
