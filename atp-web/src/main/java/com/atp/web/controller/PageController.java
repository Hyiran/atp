package com.atp.web.controller;

import com.atp.model.AtpTopCfg;
import com.atp.service.intf.ITopCfgService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 视图控制器,返回jsp视图给前端
 *
 * @author StarZou
 * @since 2014年5月28日 下午4:00:49
 */
@Controller
@RequestMapping("/page")
public class PageController {

    /**
     * The Top cfg service.
     */
    @Resource
    public ITopCfgService topCfgService;

    /**
     * 登录页
     *
     * @return the string
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * 首页
     *
     * @return the string
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     * dashboard页
     *
     * @return the string
     */
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    /**
     * Search页
     *
     * @return the string
     */
    @RequestMapping("/search")
    public String search() {
        return "page/search";
    }

    /**
     * Products页
     *
     * @return the string
     */
    @RequestMapping("/products")
    public String products() {
        return "page/products";
    }

    /**
     * Prodictsedit页
     *
     * @return the string
     */
    @RequestMapping("/productsedit")
    public String prodictsedit() {
        return "page/productsedit";
    }

    /**
     * Pagelock页
     *
     * @return the string
     */
    @RequestMapping("/pagelock")
    public String pagelock() {
        return "page/pagelock";
    }

    /**
     * Comingsoon页
     *
     * @return the string
     */
    @RequestMapping("/comingsoon")
    public String comingsoon() {
        return "page/comingsoon";
    }

    /**
     * Calendar页
     *
     * @return the string
     */
    @RequestMapping("/calendar")
    public String calendar() {
        return "page/calendar";
    }

    /**
     * Amcharts页
     *
     * @return the string
     */
    @RequestMapping("/amcharts")
    public String amcharts() {
        return "page/amcharts";
    }

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
     * Top case string.
     *
     * @param model   the model
     * @param request the request
     * @return the string
     */
    @RequestMapping("/topcase")
    public String topCase(Model model, HttpServletRequest request) {

        List<AtpTopCfg> cfgList = topCfgService.queryTopCfg();
        request.setAttribute("cfgList",cfgList);
        return "page/topcase";
    }

    /**
     * 404页
     *
     * @return the string
     */
    @RequestMapping("/404")
    public String error404() {
        return "error/404";
    }

    /**
     * 401页
     *
     * @return the string
     */
    @RequestMapping("/401")
    public String error401() {
        return "error/401";
    }

    /**
     * 500页
     *
     * @return the string
     */
    @RequestMapping("/500")
    public String error500() {
        return "error/500";
    }


}