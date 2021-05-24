package com.xuptbbs.mblog.modules.data;

import com.xuptbbs.mblog.modules.entity.Permission;

import java.util.LinkedList;
import java.util.List;

/**
 * @author - ygk on 2021/2/11
 */
public class PermissionTree extends Permission {
    private List<PermissionTree> items;

    public List<PermissionTree> getItems() {
        return items;
    }

    public void setItems(List<PermissionTree> items) {
        this.items = items;
    }

    public void addItem(PermissionTree item){
        if(this.items == null){
            this.items = new LinkedList<>();
        }
        this.items.add(item);
    }
}
