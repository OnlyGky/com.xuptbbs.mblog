package com.xuptbbs.mblog.shiro.tags;

public class LacksPermissionTag extends PermissionTag {
    protected boolean showTagBody(String p) {
        return !isPermitted(p);
    }
}
