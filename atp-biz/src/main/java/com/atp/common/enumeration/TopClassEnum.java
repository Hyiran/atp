package com.atp.common.enumeration;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/16.
 */
public enum TopClassEnum {
    /**
     * 用途：通过businType,bean 确定需要初始化的bean
     */
    CH001("CH001", com.uusoft.top.model.query.fund.QueryUnionFundInfoReq.class),
    CH002("CH002", com.uusoft.top.model.query.common.QueryCustomerTotalAmountReq.class);


    private String businType;
    private Class bean;

    TopClassEnum(String businType, Class bean) {

        this.businType = businType;
        this.bean = bean;

    }

  
    public static Map<String, TopClassEnum> map;

    static {
        map = new HashMap<String, TopClassEnum>();
        for (TopClassEnum em : TopClassEnum.values()) {
            map.put(em.getBusinType(), em);
        }
    }

    public static TopClassEnum getByBusinType(String businType) {
        return map.get(businType);
    }

    public String getBusinType() {
        return businType;
    }


    public Class getbean() {
        return bean;
    }



}
