package com.qianfeng.ls.serivce.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.ls.entity.AdminEntity;
import com.qianfeng.ls.mapper.AdminMapper;
import com.qianfeng.ls.pojo.AdminPojo;
import com.qianfeng.ls.serivce.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements IAdminService {

    @Autowired
    AdminMapper adminMapper;

    /**
     * 用户登录的方法
     * @param adminEntity
     * @return
     */
    public AdminPojo login(AdminEntity adminEntity) {
        return adminMapper.loginQueryAuth(adminEntity);
    }

    /**
     * 根据条件分页查询我们的管理员列表
     * @param adminEntity 查询条件
     * @return 管理员列表
     */
    public List<AdminPojo> queryAdminList(AdminEntity adminEntity) {

        //实现分页 1: 分页
        PageHelper.startPage(adminEntity.getPageNum(), adminEntity.getPageSize());

        return adminMapper.queryAdminList(adminEntity);
    }

    /**
     * 批量删除用户信息
     * @param ids
     * @return
     */
    public boolean delAdmins(String[] ids){
        return adminMapper.delAdmins(ids);
    }

    /**
     * 添加用户
     * @param adminEntity
     * @return
     */
    public boolean addAdmin(AdminEntity adminEntity){

        //1: 添加用户 ; 主键回填
        int ap = adminMapper.addAdmin(adminEntity);

        // int i = 1/0; ? 请问用户是否能成功插入到数据库?

        //2: 给用户绑定角色
        boolean bl = adminMapper.bindRoles(adminEntity.getAid() , adminEntity.getRoleids());

        return bl;
    }
}
