package com.qianfeng.ls.aspectj;

import com.qianfeng.ls.anno.AuthAnno;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;

@Aspect
@Component
public class AuthAspectj {

    //定义一个切面 切入点 ;加了这个注解,就代表会进行通知
    @Pointcut("@annotation(com.qianfeng.ls.anno.AuthAnno)")
    public void test(){}

    @Around("test()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {

        //1:获取这个用户有哪些权限; 获取session
        //获取到ServletRequestAttributes 里面有
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        //获取到Request对象
        HttpServletRequest request = attrs.getRequest();
        //获取到Session对象
        HttpSession session = request.getSession();

        String authstring = (String) session.getAttribute("authstring");

        //2: 获取当前的权限
//        Object target = joinPoint.getTarget();
//        Object aThis = joinPoint.getThis();

        Signature signature = joinPoint.getSignature(); //获取目标签名
        MethodSignature methodSignature = (MethodSignature)signature; //转成方法签名
        Method targetMethod = methodSignature.getMethod(); //根据签名获取目标方法
        AuthAnno declaredAnnotation = targetMethod.getDeclaredAnnotation(AuthAnno.class);//根据目标方法获取目标方法的注解
        String value = declaredAnnotation.value();//获取注解的值

        if(authstring.indexOf(value) > -1){ //有权限
            //:执行目标方法;
            Object obj  = joinPoint.proceed();

            return obj;
        }else{

            ModelAndView mv = new ModelAndView("welcome");
            return mv;
        }
    }

}
