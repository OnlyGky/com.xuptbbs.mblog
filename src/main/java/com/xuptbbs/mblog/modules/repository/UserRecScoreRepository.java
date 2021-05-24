package com.xuptbbs.mblog.modules.repository;


import com.xuptbbs.mblog.modules.entity.UserRecScore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRecScoreRepository extends JpaRepository<UserRecScore, Long>, JpaSpecificationExecutor<UserRecScore> {

    UserRecScore findByUid(@Param("uid") long uid);


    /**
     *Taglike 此处完成与表的映射
     */
    @Modifying
    @Query("update UserRecScore set score = :new_score, weight= :new_weight where uid = :new_uid")
    int UpdateWeight(@Param("new_uid") long uid, @Param("new_score") long tag,
                    @Param("new_weight") double weight);
}
