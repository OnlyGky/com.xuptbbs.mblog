package com.xuptbbs.mblog.base.storage;

import com.xuptbbs.mblog.base.storage.impl.AliyunStorageImpl;
import com.xuptbbs.mblog.base.storage.impl.NativeStorageImpl;
import com.xuptbbs.mblog.base.storage.impl.QiniuStorageImpl;
import com.xuptbbs.mblog.base.storage.impl.UpYunStorageImpl;
import com.xuptbbs.mblog.config.SiteOptions;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * created by ygk
 * on 2021/1/21
 */
@Component
public class StorageFactory implements InitializingBean {
    @Autowired
    private ApplicationContext applicationContext;
    @Autowired
    private SiteOptions siteOptions;

    private Map<String, Storage> fileRepoMap = new HashMap<>();

    public boolean registry(String key, Storage storage) {
        if (fileRepoMap.containsKey(key)) {
            return false;
        }
        fileRepoMap.put(key, storage);
        return true;
    }

    public Storage get() {
        String scheme = siteOptions.getValue("storage_scheme");
        if (StringUtils.isBlank(scheme)) {
            scheme = "native";
        }
        return fileRepoMap.get(scheme);
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        fileRepoMap.put("native", applicationContext.getBean(NativeStorageImpl.class));
        fileRepoMap.put("upyun", applicationContext.getBean(UpYunStorageImpl.class));
        fileRepoMap.put("aliyun", applicationContext.getBean(AliyunStorageImpl.class));
        fileRepoMap.put("qiniu", applicationContext.getBean(QiniuStorageImpl.class));
    }
}
