package com.qianfeng.ls.pojo;

import java.util.List;

//角色的实体类
public class RolePojo {
    private int rid; //角色id
    private String rname; //角色名称
    private String rdesc; //角色描述

    private List<AuthPojo> auths;

    public List<AuthPojo> getAuths() {
        return auths;
    }

    public void setAuths(List<AuthPojo> auths) {
        this.auths = auths;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRdesc() {
        return rdesc;
    }

    public void setRdesc(String rdesc) {
        this.rdesc = rdesc;
    }
}
