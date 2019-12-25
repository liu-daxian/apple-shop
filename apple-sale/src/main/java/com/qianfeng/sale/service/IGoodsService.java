package com.qianfeng.sale.service;

import com.qianfeng.ls.pojo.GoodsPojo;

import java.util.List;

public interface IGoodsService {

    /**
     * 根据条件查询商品信息
     * @param goodsPojo
     * @return
     */
    public List<GoodsPojo> queryGoodsByPojo(GoodsPojo goodsPojo);

    /**
     * 根据商品id,查询商品详情
     * @param gid 商品id
     * @return 商品信息
     */
    public GoodsPojo queryGoodsById(String gid);

}
