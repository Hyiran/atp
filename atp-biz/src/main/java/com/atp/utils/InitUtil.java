package com.atp.utils;

import com.thoughtworks.xstream.XStream;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/16.
 */
public class InitUtil {

    XStream xstream = new XStream();

    /**
     * 反序列化VO为XML
     *
     * @param vo；
     * @return request
     */
    public String vo2Xml(Object vo) {
        return xstream.toXML(vo);
    }


}
