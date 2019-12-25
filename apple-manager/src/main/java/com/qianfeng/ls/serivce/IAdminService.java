package com.qianfeng.ls.serivce;

import com.qianfeng.ls.entity.AdminEntity;
import com.qianfeng.ls.pojo.AdminPojo;

import java.util.List;

public interface IAdminService {

    /**
     * 根据用户名密码查询用户是否存在
     * @param adminEntity
     * @return
     */
    public AdminPojo login(AdminEntity adminEntity);

    /**
     * 根据条件分页查询我们的管理员列表
     * @param adminEntity 查询条件
     * @return 管理员列表
     */
    public List<AdminPojo> queryAdminList(AdminEntity adminEntity);

    /**
     * 批量删除用户信息
     * @param ids
     * @return
     */
    public boolean delAdmins(String[] ids);

    /**
     * 添加用户
     * @param adminEntity
     * @return
     */
    public boolean addAdmin(AdminEntity adminEntity);

}
