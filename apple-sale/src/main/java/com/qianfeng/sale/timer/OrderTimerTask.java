package com.qianfeng.sale.timer;

import com.qianfeng.sale.service.IOrderService;

import java.util.Timer;
import java.util.TimerTask;

/**
 * 订单超时失效任务类
 */
public class OrderTimerTask extends TimerTask {

    //业务操作类
    private IOrderService orderService;

    //计时器
    private Timer timer;

    //要取消的目标订单
    private String oid;

    public OrderTimerTask() {

    }

    //执行取消订单的任务,就必须要两个参数一个是当前的计时器,设置失效成功
    //用来取消咱们的计时器 ; service参数就是用来设置订单失效

    /**
     *
     * @param orderService 执行业务的类
     * @param timer 计时器
     * @param oid 订单id
     */
    public OrderTimerTask(IOrderService orderService, Timer timer , String oid) {
        this.orderService = orderService;
        this.timer = timer;
        this.oid = oid;
    }

    /**
     * 将订单状态设置为失效把!!!!
     * 把订单设置为失效以后,还需要将这个计时器关闭;
     */
    @Override
    public void run() {

        //orderserivce在这里需要重新通过spring注入一个对象;

        boolean bl = orderService.cancelOrder(oid); //设置订单失效

        if(bl){ //如果成功就要取消计时器;
            timer.cancel();
        }
    }
}
