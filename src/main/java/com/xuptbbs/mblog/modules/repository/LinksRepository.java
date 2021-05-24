
package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.Links;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author ygk
 */
public interface LinksRepository extends JpaRepository<Links, Long>, JpaSpecificationExecutor<Links> {
}
