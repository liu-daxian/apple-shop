package com.qianfeng.ls.util;

import java.util.UUID;

/**
 * 字符串的工具类
 */
public class StringUtils {

    /**
     * 判断一个字符串是否为空;
     * @param str 字符串
     * @return true: 当前字符串是一个空字符串
     */
    public static boolean isEmpty(String str){

        return  null == str || "".equals(str);
    }

    /**
     * 获取一个uuid
     * @return
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replace("-","");
    }

}
