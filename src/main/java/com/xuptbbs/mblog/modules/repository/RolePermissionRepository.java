package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.RolePermission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * @author - ygk
 * @create - 2021
 */
public interface RolePermissionRepository extends JpaRepository<RolePermission, Long>, JpaSpecificationExecutor<RolePermission> {
    int deleteByRoleId(long roleId);
    List<RolePermission> findAllByRoleId(long roleId);
}
