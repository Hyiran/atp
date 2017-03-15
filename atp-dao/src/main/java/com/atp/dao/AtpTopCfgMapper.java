package com.atp.dao;

import com.atp.model.AtpTopCfg;

public interface AtpTopCfgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AtpTopCfg record);

    int insertSelective(AtpTopCfg record);

    AtpTopCfg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AtpTopCfg record);

    int updateByPrimaryKey(AtpTopCfg record);
}