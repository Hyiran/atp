package com.atp.dao;

import com.atp.model.AtpTopCfg;

import java.util.List;
import java.util.Map;

public interface AtpTopCfgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AtpTopCfg record);

    int insertSelective(AtpTopCfg record);

    AtpTopCfg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AtpTopCfg record);

    int updateByPrimaryKey(AtpTopCfg record);

    List<AtpTopCfg> queryTopCfg();

    int cfgStatus(Map map);
}