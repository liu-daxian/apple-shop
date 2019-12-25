package com.qianfeng.ls.serivce.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.ls.entity.RoleEntity;
import com.qianfeng.ls.mapper.RoleMapper;
import com.qianfeng.ls.pojo.RolePojo;
import com.qianfeng.ls.serivce.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    RoleMapper roleMapper;

    /**
     * 根据条件查询所有的角色
     * @param roleEntity
     * @return
     */
    public List<RolePojo> queryRoles(RoleEntity roleEntity){

        if(null != roleEntity){
            PageHelper.startPage(roleEntity.getPageNum(),roleEntity.getPageSize());
        }

        return roleMapper.queryRoles(roleEntity);
    }

}
