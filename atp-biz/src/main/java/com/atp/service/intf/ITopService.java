package com.atp.service.intf;

import com.atp.common.MessageResp;

import java.util.List;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/21.
 */
public interface ITopService {


    /**
     * <p>Description:(查询用例数据)</p>
     *
     * @param businType
     * @param instId
     * @return List<String>
     */
    List<String> queryCaseList(String businType, String instId);

    /**
     * <p>Description:(将查询到的数据转成map，并根据对应的Bean赋值给Object)</p>
     *
     * @param businType
     * @param instId
     * @return List<Object>
     */
    List<Object> convertCaseList(String businType, String instId);


    /**
     * <p>Description:(将查询到的数据转成map，并根据对应的Bean赋值给Object)</p>
     *
     * @param id
     * @return Object
     */
    Object convertCase(int id);

    /**
     * <p>Description:运行测试用例并返回结果</p>
     *
     * @param obj       the obj
     * @param businType the busin type
     * @param instId    the inst id
     * @param url       the url
     * @return the message resp
     */
    MessageResp runCase(Object obj, String businType, String instId, String url);


}
