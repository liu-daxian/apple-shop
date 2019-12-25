package com.qianfeng.sale.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.ls.mapper.GoodsMapper;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.sale.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements IGoodsService {

    @Autowired
    GoodsMapper goodsMapper;

    /**)
     * 根据条件查询商品信息
     */
    @Override
    public List<GoodsPojo> queryGoodsByPojo(GoodsPojo goodsPojo) {

        //实现了分页
        PageHelper.startPage(goodsPojo.getPageNum(),goodsPojo.getPageSize());

        return goodsMapper.queryGoodsByPojo(goodsPojo);
    }

    /**
     * 根据商品id查询商品信息
     * @param gid 商品id
     * @return
     */
    @Override
    public GoodsPojo queryGoodsById(String gid) {
        return goodsMapper.queryGoodsById(gid);
    }
}
