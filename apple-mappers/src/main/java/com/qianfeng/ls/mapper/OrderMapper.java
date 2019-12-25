package com.qianfeng.ls.mapper;

import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.ls.pojo.OrderDetailPojo;
import com.qianfeng.ls.pojo.OrderPojo;

import java.util.List;

public interface OrderMapper {

    /**
     * 创建订单信息
     * @param orderPojo
     * @return
     */
    public boolean createOrder(OrderPojo orderPojo);

    /**
     * 创建订单详情
     * @param detais
     * @return
     */
    public boolean createOrderDetails(List<OrderDetailPojo> detais);

    /**
     * 取消目标订单
     * @param oid
     * @return
     */
    public boolean cancelOrder(String oid);

    /**
     * 假设支付成功,调用的回调方法
     * @param oid
     * @return
     */
    public boolean apaySuccess(String oid);

}
