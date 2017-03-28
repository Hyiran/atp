package com.atp.web.controller;

import com.atp.common.Result;
import com.atp.model.AtpTopCase;
import com.atp.service.intf.ITopCaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>Descript：</p>
 * Created by minglu on 2017/3/28.
 */
@Controller
@RequestMapping("case")
public class TopCaseController {

    public static final Logger logger = LoggerFactory.getLogger(TopCaseController.class);

    @Resource
    public ITopCaseService topCaseService;

    @RequestMapping("/topcase")
    @ResponseBody
    public List<AtpTopCase> queryTopCase(HttpServletRequest request){
        List<AtpTopCase> caseList = topCaseService.queryCaseList();
        return caseList;
    }

    @RequestMapping("/addcase")
    public Result<Void> addCase (AtpTopCase record,HttpServletRequest request){

    Result<Void> result = topCaseService.addCase(record);

        return result;
    }


}
