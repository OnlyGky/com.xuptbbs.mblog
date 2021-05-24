package com.xuptbbs.mblog.modules.hook.interceptor;

import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.PreDestroy;

/**
 * 拦截类钩子支持类
 *
 * @author ygk 2020/10/30
 */
public abstract class InterceptorHookSupport implements InterceptorHook {
    @Autowired
    protected InterceptorHookManager interceptorHookManager;

    @PreDestroy
    public void destroy() {
        interceptorHookManager.removeInterceptorHook(this);
    }
}
