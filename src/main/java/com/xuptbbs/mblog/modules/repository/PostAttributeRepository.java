package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.PostAttribute;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ygk on 2021
 */
public interface PostAttributeRepository extends JpaRepository<PostAttribute, Long>, JpaSpecificationExecutor<PostAttribute> {
}
