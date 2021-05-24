
package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.SecurityCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author ygk on 2020/8/14.
 */
public interface SecurityCodeRepository extends JpaRepository<SecurityCode, Long>, JpaSpecificationExecutor<SecurityCode> {
    SecurityCode findByKeyAndType(String key, int type);
    SecurityCode findByKey(String key);
}
