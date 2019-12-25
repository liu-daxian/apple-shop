package com.qianfeng.ls.pojo;

import java.util.List;

//用户的实体类
public class AdminPojo {

    private int aid;
    private String aname; //只是一个昵称
    private String aacount; //账号
    private String apass;//密码
    private String aphone;
    private short astatus; //用户状态; 停用,启用

    private List<RolePojo> roles; //一个用户下面所有的角色信息

    public List<RolePojo> getRoles() {
        return roles;
    }

    public void setRoles(List<RolePojo> roles) {
        this.roles = roles;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAacount() {
        return aacount;
    }

    public void setAacount(String aacount) {
        this.aacount = aacount;
    }

    public String getApass() {
        return apass;
    }

    public void setApass(String apass) {
        this.apass = apass;
    }

    public String getAphone() {
        return aphone;
    }

    public void setAphone(String aphone) {
        this.aphone = aphone;
    }

    public short getAstatus() {
        return astatus;
    }

    public void setAstatus(short astatus) {
        this.astatus = astatus;
    }
}
