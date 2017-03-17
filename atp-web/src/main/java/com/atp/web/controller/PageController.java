package com.atp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 视图控制器,返回jsp视图给前端
 *
 * @author StarZou
 * @since 2014年5月28日 下午4:00:49
 **/
@Controller
@RequestMapping("/page")
public class PageController {

    /**
     * 登录页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * 首页
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     * dashboard页
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
        return "search";
    }

    /**
     * Products页
     *
     * @return the string
     */
    @RequestMapping("/products")
    public String products() {
        return "products";
    }

    /**
     * Prodictsedit页
     *
     * @return the string
     */
    @RequestMapping("/productsedit")
    public String prodictsedit() {
        return "productsedit";
    }

    /**
     * Pagelock页
     *
     * @return the string
     */
    @RequestMapping("/pagelock")
    public String pagelock() {
        return "pagelock";
    }

    /**
     * Comingsoon页
     *
     * @return the string
     */
    @RequestMapping("/comingsoon")
    public String comingsoon() {
        return "comingsoon";
    }

    /**
     * Calendar页
     *
     * @return the string
     */
    @RequestMapping("/calendar")
    public String calendar() {
        return "calendar";
    }

    /**
     * Amcharts页
     *
     * @return the string
     */
    @RequestMapping("/amcharts")
    public String amcharts() {
        return "amcharts";
    }

    /**
     * Datatables页
     *
     * @return the string
     */
    @RequestMapping("/datatables_managed")
    public String datatablesManaged(HttpServletRequest request) {

        request.setAttribute("name","666");
        return "page/datatables_managed";
    }

    /**
     * 404页
     */
    @RequestMapping("/404")
    public String error404() {
        return "error/404";
    }

    /**
     * 401页
     */
    @RequestMapping("/401")
    public String error401() {
        return "error/401";
    }

    /**
     * 500页
     */
    @RequestMapping("/500")
    public String error500() {
        return "error/500";
    }


}