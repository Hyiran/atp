package com.atp.service.intf;

import com.atp.common.MessageResp;
import com.atp.common.Result;
import com.atp.model.AtpTopCase;

import java.util.List;

/**
 * The interface Top case service.
 */
public interface ITopCaseService {


    /**
     * Query case list list.
     *
     * @param businType the busin type
     * @param instId    the inst id
     * @return the list
     */
    List<String> queryCaseList(String businType, String instId);

    /**
     * Convert case list list.
     *
     * @param businType the busin type
     * @param instId    the inst id
     * @return the list
     */
    List<Object> convertCaseList(String businType, String instId);


    /**
     * Convert case object.
     *
     * @param id the id
     * @return the object
     */
    Object convertCase(int id);

    /**
     * Run case message resp.
     *
     * @param obj       the obj
     * @param businType the busin type
     * @param instId    the inst id
     * @param url       the url
     * @return the message resp
     */
    MessageResp runCase(Object obj, String businType, String instId, String url);

    /**
     * Query case list list.
     *
     * @return the list
     */
    List<AtpTopCase> queryCaseList();

    /**
     * Add case result.
     *
     * @param record the record
     * @return the result
     */
    Result<Void> addCase(AtpTopCase record);

    /**
     * Class fields list.
     *
     * @param businType the busin type
     * @return the list
     */
     List classFields(String businType);


}
