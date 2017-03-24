package com.atp.service.impl;

import com.atp.common.ErrorEnum;
import com.atp.common.Result;
import com.atp.dao.AtpTopCfgMapper;
import com.atp.model.AtpTopCfg;
import com.atp.service.intf.ITopCfgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by hanminglu on 2017/3/18.
 */

@Service
public class TopCfgServiceImpl implements ITopCfgService {

    private static final Logger logger = LoggerFactory.getLogger(TopCfgServiceImpl.class);
    @Resource
    public AtpTopCfgMapper atpTopCfgMapper;

    @Override
    public List<AtpTopCfg> queryTopCfg() {
        logger.info("**********开始查询topconfig信息**********");
        return atpTopCfgMapper.queryTopCfg();
    }


    @Override
    public Result<Void> cfgStatus(Map map) {
        logger.info("**********更新topconfig状态信息,ID:{}", map.get("id"));
        int num = atpTopCfgMapper.cfgStatus(map);
        if (num != 1) {
            return Result.fail(ErrorEnum.ERR_DISABLE_FAILUER.getCode(), ErrorEnum.ERR_DISABLE_FAILUER.getDesc(), null);
        }
        return Result.succeed(null);
    }

    @Override
    public Result<Void> cfgAdd(AtpTopCfg record) {
        logger.info("**********新增topconfig信息：{}", record.toString());
        List<AtpTopCfg> list = atpTopCfgMapper.queryTopCfg();
        for(AtpTopCfg atc : list){
            if(record.getConfig() == atc.getConfig()){
                return Result.fail(ErrorEnum.ERR_ADDCONFIG_REPEAT.getCode(), ErrorEnum.ERR_ADDCONFIG_REPEAT.getDesc(), null);
            }
        }
        int num = atpTopCfgMapper.insert(record);
        if (num != 1) {
            return Result.fail(ErrorEnum.ERR_ADDCONFIG_FAILUER.getCode(), ErrorEnum.ERR_ADDCONFIG_FAILUER.getDesc(), null);
        }
        return Result.succeed(null);
    }


}
