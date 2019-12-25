package com.qianfeng.sale.controller;

import com.qianfeng.ls.code.ResponseShopCar;
import com.qianfeng.ls.pojo.GoodsPojo;
import com.qianfeng.sale.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

@RestController
public class ShopController {

    @Autowired
    IGoodsService goodsService;

    /**
     * 添加商品到购物车
     * @param gid 商品id;
     * @return
     */
    @RequestMapping("addShopCar")
    public ResponseShopCar addShopCar(HttpSession session, String gid){

        //获取购物车; String: 商品id  GoodsPojo : 商品信息
        Map<String, GoodsPojo> shopCar = (Map<String, GoodsPojo>) session.getAttribute("shopCar");

        //说明当前这个用户是第一次添加商品到购物车
        if(null == shopCar){
            shopCar = new HashMap<>();
        }

        //判断一下购物车是否有当前添加的商品
        GoodsPojo goodsPojo = shopCar.get(gid);
        if(null == goodsPojo){ //说明购物车没有这个商品;

            //购物车里面没有这个商品; //1: 查询这个商品; 2: 将这个商品添加到购物车
            goodsPojo = goodsService.queryGoodsById(gid);

            shopCar.put(gid,goodsPojo);
        }else{
            goodsPojo.setNumber(goodsPojo.getNumber()+1);//对数量进行+1处理
        }

        //添加商品成功了;需要将当前这个购物车,保存到session里面
        session.setAttribute("shopCar",shopCar);

        //构建返回参数
        ResponseShopCar rsc = new ResponseShopCar();

        //计算:当前商品的数量和价格
        rsc.setCurrentNumber(goodsPojo.getNumber()); //当前商品的总数
        rsc.setCurrentPrice(goodsPojo.getNumber() * goodsPojo.getGprice());

        //当前商品的总数量和总价格
        if(shopCar.size() == 1){//代表当前购物车只有一个商品
            rsc.setTotal(goodsPojo.getNumber());
            rsc.setTotalPrice(goodsPojo.getNumber() * goodsPojo.getGprice());
        }else{
            putTotalAndPrice(shopCar,rsc);
        }

        return rsc;
    }

    //购物车减
    @RequestMapping("subShopCar")
    public ResponseShopCar subShopCar(HttpSession session , String gid){

        ResponseShopCar rsc = new ResponseShopCar();

        //获取购物车
        Map<String,GoodsPojo> map = (Map<String, GoodsPojo>) session.getAttribute("shopCar");

        //购物车都不存在; 减商品数量无从减起
        if(null == map){
            rsc.setResultCode("00001");
            rsc.setResultMsg("系统异常,请稍后再试");
            return rsc;
        }

        //从购物车获取目标商品
        GoodsPojo goodsPojo = map.get(gid);

        if(null == goodsPojo){//这个商品在购物车里面不存在
            rsc.setResultCode("00002");
            rsc.setResultMsg("不存在该商品.");
            return rsc;
        }

        //对商品进行减的处理
        if(goodsPojo.getNumber() > 1){//商品数量大于1个,就对数量进行-1
            goodsPojo.setNumber(goodsPojo.getNumber()-1);

            //当前数据行的数量和总价格
            rsc.setCurrentNumber(goodsPojo.getNumber());
            rsc.setCurrentPrice(goodsPojo.getNumber() * goodsPojo.getGprice());

        }else{//如果只有一个商品;从购物车移除该商品
            rsc.setResultCode("00009");//这个结果码为了前台区分,能够知道当前是从购物车移除了这条记录
            map.remove(gid); //把目标商品移除
        }

        //计算当前购物车的总数量和总价格
        putTotalAndPrice(map,rsc);

        return rsc;
    }

    /**
     * 计算我们的总价和总数量
     * @param shopCar
     * @param rsc
     */
    private void putTotalAndPrice(Map<String, GoodsPojo> shopCar, ResponseShopCar rsc) {

        Set<String> keys = shopCar.keySet();

        int total=0;
        float price=0.0f;

        //计算总数量和总价格
        GoodsPojo gp = null;
        for(String key : keys){
            gp = shopCar.get(key); //获取一个商品信息
            total += gp.getNumber(); //对每个商品进行累加
            price += gp.getNumber() * gp.getGprice(); //对每个商品的总价进行累加
        }

        rsc.setTotal(total);
        rsc.setTotalPrice(price);

    }

    //清空购物车
    public ResponseShopCar clearShopCar(){

        LinkedHashSet lh;
        return null;
    }

}
