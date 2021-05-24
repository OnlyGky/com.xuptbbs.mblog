package com.xuptbbs.mblog.shiro.tags;

public class HasPermissionTag extends PermissionTag {
    protected boolean showTagBody(String p) {
        return isPermitted(p);
    }
}