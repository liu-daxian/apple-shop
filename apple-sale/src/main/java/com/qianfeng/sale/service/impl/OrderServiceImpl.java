package com.qianfeng.sale.service.impl;

import com.qianfeng.ls.mapper.OrderMapper;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.ls.pojo.OrderDetailPojo;
import com.qianfeng.ls.pojo.OrderPojo;
import com.qianfeng.ls.util.StringUtils;
import com.qianfeng.sale.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements IOrderService {

    @Autowired
    OrderMapper orderMapper;

    @Override
    public OrderPojo create(int aid, String[] gids, Map<String, GoodsPojo> shopCar) {

        //构建订单信息
        OrderPojo orderPojo = new OrderPojo();
        orderPojo.setAid(aid); //设置我们的用户id
        orderPojo.setAddressId(1);//假设选中了地址
        orderPojo.setOid(StringUtils.uuid()); //订单的主键; uuid

        //缺少一个当前商品的总价格
        float total = getTotalPrice(gids,shopCar);
        orderPojo.setOtotal(total);

        //保存订单信息
        boolean flag = orderMapper.createOrder(orderPojo);

        if(flag){ //创建订单成功,给这个订单添加订单详情

            //构建一个订单详情的列表
            List<OrderDetailPojo> details = createOrderDetails(gids,shopCar,orderPojo.getOid());

            //保存订单详情
            boolean bl = orderMapper.createOrderDetails(details);

            if(bl){
                //需要将订单详情列表添加到orderPojo里面
                orderPojo.setDetails(details);

                //把结算成功的商品从购物车移除;
                for(String gid:gids){  //shopCar :存放的是一个引用地址
                    shopCar.remove(gid); //我在这里移除商品,代表真正的对象,也已经移除掉了这个商品;
                }

                return orderPojo;//返回保存成功的订单和订单详情
            }
        }

        return null;
    }

    /**
     * 取消目标订单
     * @param oid
     * @return
     */
    @Override
    public boolean cancelOrder(String oid) {
        return orderMapper.cancelOrder(oid);
    }

    @Override
    public boolean apaySuccess(String oid) {
        return orderMapper.apaySuccess(oid);
    }

    /**
     * 构建订单详情的列表
     * @param gids 参与结算的商品id
     * @param shopCar 购物车
     * @param oid 当前订单id
     * @return 订单详情的list
     */
    private List<OrderDetailPojo> createOrderDetails(String[] gids, Map<String, GoodsPojo> shopCar, String oid) {

        List<OrderDetailPojo> list = new ArrayList<OrderDetailPojo>();

        GoodsPojo gp;
        OrderDetailPojo odp;
        for(String gid : gids){
            gp = shopCar.get(gid);//得到购物车里面的一条商品详情
            odp = new OrderDetailPojo();//创建一条订单详情

            odp.setOdid(StringUtils.uuid());//订单详情id
            odp.setOid(oid);//当前订单的id
            odp.setGoodsPojo(gp);
            odp.setOdnumber(gp.getNumber());
            odp.setOdprice(gp.getGprice() * gp.getGdiscount());

            list.add(odp);//将当前订单详情添加到集合里面
        }

        return list;
    }

    /**
     * 计算当前所有参与结算的商品的总价格
     * @param gids
     * @param shopCar
     * @return
     */
    private float getTotalPrice(String[] gids, Map<String, GoodsPojo> shopCar) {

        float total = 0.0f;

        GoodsPojo gp;
        for(String gid : gids){
            gp = shopCar.get(gid); //获取商品
            total += gp.getGprice() * gp.getGdiscount() * gp.getNumber(); //计算一个商品的总价格并且累加
        }

        return total;
    }
}
