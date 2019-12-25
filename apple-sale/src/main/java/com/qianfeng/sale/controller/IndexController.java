package com.qianfeng.sale.controller;

import com.qianfeng.ls.entity.GoodsTypeEntity;
import com.qianfeng.ls.pojo.CustomerPojo;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.sale.service.IIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {

    @Autowired
    IIndexService indexService;

    @RequestMapping("index")
    public String index(Model model){

        //查询商品类别列表 只查询了3个类别
        List<GoodsTypeEntity> list = indexService.queryGoodsTypes();

        //查询6个商品;
        List<GoodsPojo> goodsList = indexService.queryGoods();

        model.addAttribute("goodsTypeList",list);
        model.addAttribute("goodsList",goodsList);
        return "index";
    }

    @RequestMapping("login")
    public String login(CustomerPojo cp, HttpSession session){

        cp.setAid(2);
        //这个是假登录
        session.setAttribute("customer",cp);

        return "index";
    }

}
