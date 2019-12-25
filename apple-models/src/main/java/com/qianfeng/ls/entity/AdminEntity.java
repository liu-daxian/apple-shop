package com.qianfeng.ls.entity;

public class AdminEntity {

    private int aid;
    private String aname; //只是一个昵称
    private String aacount; //账号
    private String apass;//密码
    private String aphone;
    private short astatus = -1; //用户状态; 0停用,1启用   -1:代表没有状态条件

    private int[] roleids;// 所有的角色id

    private int pageNum = 1;   //当前页
    private int pageSize = 3;  //每页显示的记录数

    private boolean islogin = false; //当前用户是否登录

    public int[] getRoleids() {
        return roleids;
    }

    public void setRoleids(int[] roleids) {
        this.roleids = roleids;
    }

    public boolean isIslogin() {
        return islogin;
    }

    public void setIslogin(boolean islogin) {
        this.islogin = islogin;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
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
