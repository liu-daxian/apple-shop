package com.qianfeng.ls.web;

import com.github.pagehelper.PageInfo;
import com.qianfeng.ls.anno.AuthAnno;
import com.qianfeng.ls.code.ResponseResult;
import com.qianfeng.ls.entity.AdminEntity;
import com.qianfeng.ls.pojo.AdminPojo;
import com.qianfeng.ls.pojo.AuthPojo;
import com.qianfeng.ls.pojo.RolePojo;
import com.qianfeng.ls.serivce.IAdminService;
import com.qianfeng.ls.serivce.IRoleService;
import com.qianfeng.ls.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Controller
@SessionAttributes({"admin","authstring","auths"})
public class AdminController {

    @Autowired
    IAdminService adminService; //管理员的业务实现类

    @Autowired
    IRoleService roleService;

    @RequestMapping("welcome")
    public String welcome(){
        return "welcome";
    }


    @RequestMapping("login")
    public String login(AdminEntity adminEntity, Model model){

        if(null == adminEntity){
            model.addAttribute("msgError","系统异常");
            return "forward:login.jsp";
        }

        if(StringUtils.isEmpty(adminEntity.getAacount())){
            model.addAttribute("msgError","用户名不能为空");
            return "forward:login.jsp";
        }

        if(StringUtils.isEmpty(adminEntity.getApass())){
            model.addAttribute("msgError","密码不能为空");
            return "forward:login.jsp";
        }

        //去做真正的登录
        AdminPojo adminPojo = adminService.login(adminEntity);

        //查询失败;没有这个用户
        if(null == adminPojo){
            model.addAttribute("msgError","用户名或者密码错误");
            return "forward:login.jsp";
        }

        //代码运行到这里代表登录成功; 登录成功需要将用户的权限保存到session里面.
        Set<String> auths = getAuthByAdmin(adminPojo);

        //将所有权限放到一个字符串里面
        StringBuilder sb = new StringBuilder();
        for(String s : auths){
            sb.append(s);
        }

        model.addAttribute("authstring",sb.toString());
        model.addAttribute("auths",auths);

        model.addAttribute("admin",adminPojo);
        return "index"; //代表登录成功
    }

    /**
     * 得到用户的所有权限路径
     */
    private Set<String> getAuthByAdmin(AdminPojo adminPojo){

        Iterator<RolePojo> iterator = adminPojo.getRoles().iterator();
        RolePojo rp;
        Iterator<AuthPojo> authIterator;
        AuthPojo auth;
        Set<String> set = new HashSet<String>();

        while(iterator.hasNext()){ //遍历用户的所有角色
            rp = iterator.next();
            authIterator = rp.getAuths().iterator();

            while(authIterator.hasNext()){ //遍历角色里面的所有权限
                auth = authIterator.next();
                set.add(auth.getAupath()); //保存权限的路径
            }
        }

        return set;
    }

    /**
     * 得到用户的所有权限路径
     */
    private Set<String> getAuthByAdminList(AdminPojo adminPojo){

        Set<String> set = new HashSet<String>();
        for(RolePojo rp : adminPojo.getRoles()){
            for(AuthPojo ap : rp.getAuths()){
                set.add(ap.getAupath());
            }
        }

        return set;
    }

    /**
     * 查询管理员列表
     * @return
     */
    @AuthAnno("adminList")
    @RequestMapping("adminList")
    public ModelAndView adminList(AdminEntity adminEntity){

        ModelAndView mv = new ModelAndView("adminlist");

        //缺数据 ;查询数据
        List<AdminPojo> list = adminService.queryAdminList(adminEntity);

        //分页参数
        PageInfo<AdminPojo> pageInfo = new PageInfo<> (list);

        mv.addObject("adminEntity",adminEntity);//查询条件需要回填
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }

    @RequestMapping("delAdmins")
    @ResponseBody
    public ResponseResult delAdmins(String ids){
        ResponseResult rr = new ResponseResult();

        //ids:代表所有需要删除的id
        if(StringUtils.isEmpty(ids)){
            rr.setResultCode("00001");
            rr.setResultMsg("参数不能为空");
            return rr;
        }

        //执行删除
        boolean bl = adminService.delAdmins(ids.split(","));
        if(!bl){
            rr.setResultCode("00002");//删除失败
            rr.setResultMsg("删除失败,请稍后重试");
        }

        return rr;
    }

    @RequestMapping("jumpAdminAdd")
    public String jumpAdminAdd(ModelMap map){

        //查询所有角色;放到页面去展示;
        List<RolePojo> roles = roleService.queryRoles(null);

        map.addAttribute("roles",roles);

        return "adminadd";
    }

    /**
     * 添加管理员
     * @param adminEntity
     * @return
     */
    @RequestMapping("adminAdd")
    public String adminAdd(AdminEntity adminEntity){

        //添加用户信息
        boolean bl = adminService.addAdmin(adminEntity);

        return "forward:adminList";
    }
}
