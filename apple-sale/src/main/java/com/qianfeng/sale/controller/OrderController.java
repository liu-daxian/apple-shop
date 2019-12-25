package com.qianfeng.sale.controller;

import com.qianfeng.ls.pojo.CustomerPojo;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.ls.pojo.OrderPojo;
import com.qianfeng.sale.service.IOrderService;
import com.qianfeng.sale.timer.OrderTimerTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

@Controller
public class OrderController {

    public static Map<String,Timer> map = new HashMap<>();

    @Autowired
    IOrderService orderService;

    /**
     * 创建订单,点击结算
     * @return
     */
    @RequestMapping("createOrder")
    public ModelAndView createOrder(String[] goodsIds, HttpSession session){

        ModelAndView mv = new ModelAndView("login");

        //是谁的订单?
        CustomerPojo customerPojo = (CustomerPojo) session.getAttribute("customer");
        if(null == customerPojo){//非法请求
            return mv;
        }

        //获取购物车 ; 我们自己定义的业务; 正常的业务是 如果直接结算一个商品,是不需要添加到购物车的
        Map<String, GoodsPojo> shopCar = (Map<String, GoodsPojo>) session.getAttribute("shopCar");
        if(null == shopCar){ //购物车里面没有任何商品
            mv.setViewName("index");
            return mv;//购物车没有东西
        }

        //创建订单以及创建订单详情
        /**
         *shopCar: 传过去的实际上是一个引用地址
         */
        OrderPojo orderPojo = orderService.create(customerPojo.getAid(), goodsIds, shopCar);

        //设置一个订单超时的时间点;30分钟后订单自动关闭
        //1: 订单创建成功以后,我们需要设置一个计时器;计时器30s;
        //2: 30s以后,订单失效; 就是修改订单的状态为 10; 就代表当前定时已经失效了;
        //3: 如果用户在指定的时间内支付成功;必须要取消这个计时器;

        Timer timer = new Timer();
        OrderTimerTask ott = new OrderTimerTask(orderService,timer,orderPojo.getOid());

        //执行任务; 创建订单成功以后,.30秒以后将订单设置为失效
        timer.schedule(ott,30000); // 30*60*1000

        map.put(orderPojo.getOid(),timer);

        //更新session 为什么可以直接更新shopcar呢; 因为这个我们是传过去的是引用;
        session.setAttribute("shopCar",shopCar); //为什么这里购物车已经更新了???

        mv.addObject("orderPojo",orderPojo);//将我们的订单信息添加到前台页面去展示
        mv.setViewName("apay"); //跳转到支付页面
        return mv;
    }

    //假设支付成功,一定要取消计时器;!!!
    @RequestMapping("apay")
    public String apay(String oid){

        boolean bl = orderService.apaySuccess(oid);

        //支付成功需要,取消当前的计时器
        map.get(oid).cancel();
        map.remove(oid);//从map里面移除这个计时器

        return "success";
    }

}
