package cn.tellsea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/web/druid")
    public String druid() {
        return "views/druid/druid";
    }
}
