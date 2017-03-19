package com.atp.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by hanminglu on 2017/3/18.
 */
@Controller
public class TopConfigController {

    private static final Logger logger = LoggerFactory.getLogger(TopConfigController.class);

    @Resource
    public String cfgDisable(HttpServletRequest request){


        return sds;
    }
}
