package com.qianfeng.ls.mapper;

import com.qianfeng.ls.pojo.GoodsPojo;

import java.util.List;

public interface GoodsMapper {

    //前后端只是用一个查询实体类; 就用Pojo

    /**
     * 查询商品 ; 根据各种各样的条件进行查询
     * 1: 根据类别 ; 衣服 裤子
     * 2: 价格
     * 3: glabel 热销 折扣 新品 标签进行查询
     * 4: 商品的类别; 男装 女装 童装
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
