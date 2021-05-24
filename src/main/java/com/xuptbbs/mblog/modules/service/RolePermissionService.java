package com.xuptbbs.mblog.modules.service;

import com.xuptbbs.mblog.modules.entity.Permission;
import com.xuptbbs.mblog.modules.entity.RolePermission;

import java.util.List;
import java.util.Set;

/**
 * @author - ygk
 * @create - 2021/5/18
 */
public interface RolePermissionService {
    List<Permission> findPermissions(long roleId);
    void deleteByRoleId(long roleId);
    void add(Set<RolePermission> rolePermissions);

}
