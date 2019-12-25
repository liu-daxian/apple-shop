package com.qianfeng.ls.pojo;

//权限的实体类
public class AuthPojo {
    private int auid; //权限id
    private String auname; //权限名称
    private String aupath; //权限路径
    private short autype; //权限类型
    private int aupid; //权限的父id

    public int getAuid() {
        return auid;
    }

    public void setAuid(int auid) {
        this.auid = auid;
    }

    public String getAuname() {
        return auname;
    }

    public void setAuname(String auname) {
        this.auname = auname;
    }

    public String getAupath() {
        return aupath;
    }

    public void setAupath(String aupath) {
        this.aupath = aupath;
    }

    public short getAutype() {
        return autype;
    }

    public void setAutype(short autype) {
        this.autype = autype;
    }

    public int getAupid() {
        return aupid;
    }

    public void setAupid(int aupid) {
        this.aupid = aupid;
    }
}
