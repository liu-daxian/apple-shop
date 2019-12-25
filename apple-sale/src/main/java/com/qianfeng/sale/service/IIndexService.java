package com.qianfeng.sale.service;

import com.qianfeng.ls.entity.GoodsTypeEntity;
import com.qianfeng.ls.pojo.GoodsPojo;

import java.util.List;

public interface IIndexService {

    //首页查询3个商品类别
    //这里我只是为了演示
    public List<GoodsTypeEntity> queryGoodsTypes();

    /**
     * 查询6个商品
     * @return
     */
    public List<GoodsPojo> queryGoods();
}
