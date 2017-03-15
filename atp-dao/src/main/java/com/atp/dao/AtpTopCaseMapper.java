package com.atp.dao;

import com.atp.model.AtpTopCase;

import java.util.List;

public interface AtpTopCaseMapper {
    int deleteByPrimaryKey(Integer caseId);

    int insert(AtpTopCase record);

    int insertSelective(AtpTopCase record);

    AtpTopCase selectByPrimaryKey(Integer caseId);

    int updateByPrimaryKeySelective(AtpTopCase record);

    int updateByPrimaryKey(AtpTopCase record);

    List<String> queryCaseList(String businType, String instId);

    void updateResponse(String response);
}