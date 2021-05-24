package com.xuptbbs.mblog.base.oauth.utils;

import com.xuptbbs.mblog.base.oauth.APIConfig;


public class OathConfig {
    public static String getValue(String key) {
        return APIConfig.getInstance().getValue(key);
    }
}
