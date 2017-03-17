package com.atp.service.intf;

import com.atp.model.AtpTopCfg;

import java.util.List;

/**
 * Created by hanminglu on 2017/3/18.
 */
public interface ITopCfgService {

    /**
     * Query top cfg list.
     *
     *
     * @return the list
     */
    public List<AtpTopCfg> queryTopCfg();
}
