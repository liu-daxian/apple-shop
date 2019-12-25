package com.qianfeng.ls.serivce;

import com.qianfeng.ls.entity.RoleEntity;
import com.qianfeng.ls.pojo.RolePojo;

import java.util.List;

public interface IRoleService {

    /**
     * 根据条件查询所有的角色
     * @param roleEntity
     * @return
     */
    public List<RolePojo> queryRoles(RoleEntity roleEntity);

}
