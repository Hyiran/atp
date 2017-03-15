package com.atp.common;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/16.
 */
public enum Enums {
    /**
     * 用途：通过businType,bean 确定需要初始化的bean
     */
    CH001("CH001", "com.uusoft.top.model.query.fund.QueryUnionFundInfoReq"),
    CH002("CH002", "com.uusoft.top.model.query.common.QueryCustomerTotalAmountReq");


    private String businType;
    private String bean;

    private Enums(String businType, String bean) {

        this.businType = businType;
        this.bean = bean;

    }

    public static Map<String, Enums> map;

    static {
        map = new HashMap<String, Enums>();
        for (Enums em : Enums.values()) {
            map.put(em.getBusinType(), em);
        }
    }

    public static Enums getByBusinType(String businType) {
        return map.get(businType);
    }

    public String getBusinType() {
        return businType;
    }

    public void setBusinType(String businType) {
        this.businType = businType;
    }

    public String getbean() {
        return bean;
    }

    public void setbean(String bean) {
        this.bean = bean;
    }


}
