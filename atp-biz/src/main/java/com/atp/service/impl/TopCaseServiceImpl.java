package com.atp.service.impl;


import com.atp.common.enumeration.TopClassEnum;
import com.atp.common.enumeration.ErrorEnum;
import com.atp.common.MessageResp;
import com.atp.common.Result;
import com.atp.dao.AtpTopCaseMapper;
import com.atp.model.AtpTopCase;
import com.atp.service.intf.ITopCaseService;
import com.atp.utils.Helper;
import com.atp.utils.HttpClientUtil;
import com.atp.utils.JsonCastUtil;
import com.atp.utils.XmlUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/21.
 */
@Service
public class TopCaseServiceImpl implements ITopCaseService {

    public static final Logger logger = LoggerFactory.getLogger(TopCaseServiceImpl.class);

    @Resource
    public AtpTopCaseMapper atpTopCaseMapper;

    @Override
    public List<String> queryCaseList(String businType, String instId) {

        List<String> caseList = atpTopCaseMapper.queryCaseList(businType, instId);
        if (caseList == null || caseList.isEmpty()) {
            logger.info("*****查询businType=[{}],instId=[{}]，对应的测试用例为空*****", businType, instId);
            return null;
        }
        return caseList;
    }

    @Override
    public List<Object> convertCaseList(String businType, String instId) {

        List<Object> objectList = new ArrayList<>();
        Class clazz = TopClassEnum.getByBusinType(businType).getbean();

        List<String> caseList = queryCaseList(businType, instId);
        for (String json : caseList) {
            Map<String, String> map = JsonCastUtil.jsonStrToMap(json);
            try {
                //2.生成该字节码的一个对象
                Object obj;
                obj = clazz.newInstance();
                //3.使用BeanUtils对对象进行赋值
                BeanUtils.copyProperties(map, obj);
                if (null != obj) {
                    objectList.add(obj);
                } else {
                    logger.info("**********使用BeanUtils进行赋值失败**********");
                }
            } catch (IllegalAccessException | InvocationTargetException | InstantiationException e) {
                e.printStackTrace();
            }
        }

        return objectList;
    }

    @Override
    public Object convertCase(int id) {
        Object obj = null;
        AtpTopCase atpTop = atpTopCaseMapper.selectByPrimaryKey(id);
        if (null != atpTop) {
            String caseData = atpTop.getRequestData();
            String businType = atpTop.getBusinType();
            Map<String, String> map = JsonCastUtil.jsonStrToMap(caseData);
            Class clazz = TopClassEnum.getByBusinType(businType).getbean();
            //1.得到javaBean的一个字节码对象
            try {
                //2.生成该字节码的一个对象
                obj = clazz.newInstance();
                //3.使用BeanUtils对对象进行赋值
                BeanUtils.copyProperties(map, obj);
            } catch (IllegalAccessException | InvocationTargetException | InstantiationException e) {
                e.printStackTrace();
            }
        } else {
            logger.info("**********通过ID=[{}],查询数据失败！**********", id);
            return null;
        }
        return obj;
    }

    @Override
    public MessageResp runCase(Object obj, String businType, String instId, String url) {

        Class clazz = TopClassEnum.getByBusinType(businType).getbean();
        logger.info("*********开始初始化请求数据*********");
        String reqData = Helper.getReqData(businType, instId, clazz, obj);
        logger.info("*********初始化请求数据完毕，初始化结果为：[{}]", reqData);
        String result = HttpClientUtil.postXml(url, reqData);
        MessageResp messageResp = Helper.getMessageResp(result);
        String response = XmlUtil.xmltoJson(result);
        atpTopCaseMapper.updateResponse(response);

        return messageResp;
    }

    @Override
    public List<AtpTopCase> queryCaseList() {
        logger.info("**********开始查询用例列表**********");
        List<AtpTopCase> caseList;
        caseList = atpTopCaseMapper.queryCaseList();
        return caseList;
    }

    @Override
    public Result<Void> addCase(AtpTopCase record) {
        logger.info("**********新增Case：[{}]**********", record);
        int num = atpTopCaseMapper.insertSelective(record);
        if (num != 1) {
            Result.fail(ErrorEnum.ERR_ADDCASE_FAILUER.getCode(), ErrorEnum.ERR_ADDCASE_FAILUER.getDesc(), null);
        }
        return Result.succeed(null);
    }

    @Override
    public List classFields(String businType) {

        logger.info("*********开始查询类属性信息*********");
        Class clazz = TopClassEnum.getByBusinType(businType).getbean();
        Field[] fields = clazz.getDeclaredFields();
        List fieldList = new ArrayList();
        for (int i = 0; i < fields.length; i++) {
            Field fld = fields[i];
            fieldList.add(fld.getName());
        }
        logger.info("**********查询属性Class：[{}],属性信息：[{}]", clazz, fieldList.toString());

        return fieldList;
    }


}
