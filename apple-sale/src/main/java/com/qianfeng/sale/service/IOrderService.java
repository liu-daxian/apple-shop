package com.qianfeng.sale.service;

import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.ls.pojo.OrderPojo;

import java.util.Map;

public interface IOrderService {

    /**
     * 生成订单
     * @param aid 用户id
     * @param gids 商品ids
     * @param shopCar 购物车
     * @return
     */
    public OrderPojo create(int aid, String[] gids, Map<String, GoodsPojo> shopCar );

    /**
     * 将订单取消(设置为失效)
     * @param oid
     * @return
     */
    public boolean cancelOrder(String oid);

    //假设支付成功,需要调用的方法
    public boolean apaySuccess(String oid);

}
