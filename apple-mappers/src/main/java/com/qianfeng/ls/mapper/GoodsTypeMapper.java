package com.qianfeng.ls.mapper;

import com.qianfeng.ls.pojo.GoodsTypePojo;

import java.util.List;

public interface GoodsTypeMapper {

    /**
     * 查询3条商品类别
     * @return
     */
    public List<GoodsTypePojo> queryGoodsTypeThree();

}
