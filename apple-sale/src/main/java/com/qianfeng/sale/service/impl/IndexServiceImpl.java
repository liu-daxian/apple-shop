package com.qianfeng.sale.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.ls.entity.GoodsTypeEntity;
import com.qianfeng.ls.mapper.GoodsMapper;
import com.qianfeng.ls.mapper.GoodsTypeMapper;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.ls.pojo.GoodsTypePojo;
import com.qianfeng.sale.service.IIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class IndexServiceImpl implements IIndexService {

    @Autowired
    GoodsTypeMapper goodsTypeMapper;

    @Autowired
    GoodsMapper goodsMapper;

    /**
     * 查询6个商品
     * @return
     */
    @Override
    public List<GoodsPojo> queryGoods() {

        PageHelper.startPage(1,6); //实现只查询6个
        List<GoodsPojo> list = goodsMapper.queryGoodsByPojo(null);
        return list;
    }

    //需要将entity转换成pojo
    //还需要将pojo转成entity

    /**
     * 这里对entity和pojo进行转换,只是为了演示在有的项目会这么使用;
     * 接下来我们进行查询等操作,就只是用一个实体类.
     * @return
     */
    @Override
    public List<GoodsTypeEntity> queryGoodsTypes() {

        List<GoodsTypePojo> goodsTypePojos = goodsTypeMapper.queryGoodsTypeThree();
        return pojoListToEntityList(goodsTypePojos);
    }

    /**
     * 将pojo转成entity list
     * @param goodsTypePojos
     * @return
     */
    private List<GoodsTypeEntity> pojoListToEntityList(List<GoodsTypePojo> goodsTypePojos){
        List<GoodsTypeEntity> list = new ArrayList<>();

        for(GoodsTypePojo pojo : goodsTypePojos){
            list.add(pojoToEntity(pojo));
        }

        return list;
    }

    /**
     * 将pojo转成entity
     * @param pojo
     * @return
     */
    private GoodsTypeEntity pojoToEntity(GoodsTypePojo pojo){
        GoodsTypeEntity entity = new GoodsTypeEntity();

        if(null != pojo){
            entity.setTid(pojo.getTid());
            entity.setTimage(pojo.getTimage());
            entity.setTname(pojo.getTname());
        }

        return entity;
    }

}
