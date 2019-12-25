package com.qianfeng.ls.anno;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AuthAnno {
    String value();
}
