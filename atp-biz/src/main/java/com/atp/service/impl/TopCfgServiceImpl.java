package com.atp.service.impl;

import com.atp.dao.AtpTopCfgMapper;
import com.atp.model.AtpTopCfg;
import com.atp.service.intf.ITopCfgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.validation.OverridesAttribute;
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
    public List<AtpTopCfg> queryTopCfg(){
        return atpTopCfgMapper.queryTopCfg();
    }

}
