package com.atp.service.intf;

import com.atp.common.Result;
import com.atp.model.AtpTopCfg;

import java.util.List;
import java.util.Map;

/**
 * Created by hanminglu on 2017/3/18.
 */
public interface ITopCfgService {

    /**
     * Query top cfg list.
     *
     * @return the list
     */
    public List<AtpTopCfg> queryTopCfg();


    /**
     * Cfg disable result.
     *
     * @param map the map
     * @return the result
     */
    public Result<Void> cfgStatus(Map map);


    /**
     * Cfg add result.
     *
     * @param record the record
     * @return the result
     */
    public Result<Void> cfgAdd(AtpTopCfg record);

}
