
package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.UserOauth;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * 第三方开发授权登录
 *
 * @author ygk on 2020/8/12.
 */
public interface UserOauthRepository extends JpaRepository<UserOauth, Long>, JpaSpecificationExecutor<UserOauth> {
    UserOauth findByAccessToken(String accessToken);
    UserOauth findByOauthUserId(String oauthUserId);
    UserOauth findByUserId(long userId);
}
