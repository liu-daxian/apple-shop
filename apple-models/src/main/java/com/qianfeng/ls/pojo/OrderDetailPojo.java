package com.qianfeng.ls.pojo;

//订单详情
public class OrderDetailPojo {

    private String odid;
    private String oid;//订单id
    private String gid;//商品信息
    private float odprice;//成交单价
    private int odnumber;//当前详情的数量

    private GoodsPojo goodsPojo; //商品详情;//名称啊图片啊类型啊等等

    public String getOdid() {
        return odid;
    }

    public void setOdid(String odid) {
        this.odid = odid;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public float getOdprice() {
        return odprice;
    }

    public void setOdprice(float odprice) {
        this.odprice = odprice;
    }

    public int getOdnumber() {
        return odnumber;
    }

    public void setOdnumber(int odnumber) {
        this.odnumber = odnumber;
    }

    public GoodsPojo getGoodsPojo() {
        return goodsPojo;
    }

    public void setGoodsPojo(GoodsPojo goodsPojo) {
        this.goodsPojo = goodsPojo;
    }
}
