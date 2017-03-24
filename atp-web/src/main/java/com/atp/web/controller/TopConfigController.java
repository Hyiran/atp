package com.atp.web.controller;

import com.alibaba.fastjson.JSON;
import com.atp.common.Result;
import com.atp.model.AtpTopCfg;
import com.atp.service.intf.ITopCfgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hanminglu on 2017/3/18.
 */
@Controller
@RequestMapping("config")
public class TopConfigController {

    private static final Logger logger = LoggerFactory.getLogger(TopConfigController.class);

    @Resource
    public ITopCfgService topCfgService;



    /**
     * Datatables页
     *
     * @param model   the model
     * @param request the request
     * @return the string
     */
    @RequestMapping("/topconfig")
    public String topConfig(Model model, HttpServletRequest request) {

        List<AtpTopCfg> cfgList = topCfgService.queryTopCfg();
        request.setAttribute("cfgList",cfgList);
        return "page/topconfig";
    }


    /**
     * Cfg disable result.
     *
     * @param request  the request
     * @return the result
     */
    @RequestMapping("/cfgstatus")
    @ResponseBody
    public Result<Void> cfgDisable(HttpServletRequest request){
        Map<String,Integer> map = new HashMap<>();
        map.put("id",Integer.valueOf(request.getParameter("id")));
        map.put("status",Integer.valueOf(request.getParameter("status")));
       logger.info("**********修改配置状态，configId：{}",Integer.valueOf(request.getParameter("id")));
        Result<Void> result = topCfgService.cfgStatus(map);
        logger.info("**********修改配置状态结果：{}**********",request.toString());
        return result;
    }

    @RequestMapping("/cfgadd")
    @ResponseBody
   public Result<Void> cfgAdd(AtpTopCfg record, HttpServletRequest request){
        logger.info("保存配置，fund={}", JSON.toJSONString(record));
        Result<Void> result = topCfgService.cfgAdd(record);
        return result;
    }

}
