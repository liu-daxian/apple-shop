package com.qianfeng.ls.mapper;

import com.qianfeng.ls.entity.AdminEntity;
import com.qianfeng.ls.pojo.AdminPojo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {

    /**
     * 管理员登录
     * @param adminEntity
     * @return
     */
    public AdminPojo login(AdminEntity adminEntity);

    /**
     * 根据用户名密码;级联查询用户角色和权限
     * @param adminEntity
     * @return
     */
    public AdminPojo loginQueryAuth(AdminEntity adminEntity);

    /**
     * 根据用户id,.查询用户所有的角色和权限
     * @param aid 用户id
     * @return
     */
    public AdminPojo queryAuthById(int aid);

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
     * @return 添加用户成功的主键
     * int: 就代表添加是否成功; 成功返回1,失败返回0
     * boolean
     */
    public int addAdmin(AdminEntity adminEntity);

    /**
     * 给用户绑定角色
     * @param aid
     * @param roles
     * @return
     */
    public boolean bindRoles(@Param("aid") int aid, @Param("roles") int[] roles);

}
