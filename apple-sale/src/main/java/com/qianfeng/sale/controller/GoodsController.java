package com.qianfeng.sale.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.sale.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

@Controller
public class GoodsController{

    @Autowired
    IGoodsService goodsService;

    @RequestMapping("queryGoods")
    public ModelAndView queryGoods(GoodsPojo goodsPojo){

        ModelAndView mv = new ModelAndView("goodsList");

        //查询商品列表
        List<GoodsPojo> list = goodsService.queryGoodsByPojo(goodsPojo);

        //实现了分页
        PageInfo<GoodsPojo> pageInfo = new PageInfo<>(list);

        //将数据添加到页面去展示
       // mv.addObject("goodsList",list);//
        mv.addObject("pageInfo",pageInfo);//分页
        mv.addObject("goodsPojo",goodsPojo);//查询条件的回填

        HashSet hs;

        return mv;//返回我们的商品列表
    }

}
