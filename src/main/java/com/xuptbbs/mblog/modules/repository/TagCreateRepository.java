package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.TagCreate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TagCreateRepository extends JpaRepository<TagCreate, Long>, JpaSpecificationExecutor<TagCreate> {

    /**
     *Taglike 此处完成与表的映射
     */
    @Modifying
    @Query("update TagCreate set score = score + :increment where uid = :uid and mto_tag = :tag")
    int UpdateScore(@Param("uid") long uid, @Param("tag") long tag,
                    @Param("increment") long increment);

    /**
     * 判断该用户是否有相关记录
     */
    @Query("select score from TagCreate where uid = :uid and mto_tag = :tag")
    Long SelectScore(@Param("uid") long uid, @Param("tag") long tag);

    /**
     * 查询tag标签下的相关用户
     */

    List<TagCreate> findByMtoTag(long tag);

}

