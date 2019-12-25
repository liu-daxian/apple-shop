package com.qianfeng.ls.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//订单实体类
public class OrderPojo {

    private String oid; //订单id
    private int aid; //用户id
    private int addressId; //地址id
    private int ostatus; //订单状态
    private Date odate; //创建时间
    private float ototal; //订单总价

    //需要一个订单详情的集合;
    List<OrderDetailPojo> details = new ArrayList<>();

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public int getOstatus() {
        return ostatus;
    }

    public void setOstatus(int ostatus) {
        this.ostatus = ostatus;
    }

    public Date getOdate() {
        return odate;
    }

    public void setOdate(Date odate) {
        this.odate = odate;
    }

    public float getOtotal() {
        return ototal;
    }

    public void setOtotal(float ototal) {
        this.ototal = ototal;
    }

    public List<OrderDetailPojo> getDetails() {
        return details;
    }

    public void setDetails(List<OrderDetailPojo> details) {
        this.details = details;
    }
}
