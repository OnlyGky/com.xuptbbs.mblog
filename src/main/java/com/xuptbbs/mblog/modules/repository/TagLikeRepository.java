package com.xuptbbs.mblog.modules.repository;

import com.xuptbbs.mblog.modules.entity.TagLike;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TagLikeRepository extends JpaRepository<TagLike, Long>, JpaSpecificationExecutor<TagLike> {

    /**
     *Taglike 此处完成与表的映射
     */
    @Modifying
    @Query("update TagLike set score = score + :increment where uid = :uid and mto_tag = :tag")
    int UpdateScore(@Param("uid") long uid, @Param("tag") long tag,
                    @Param("increment") long increment);

    /**
     * 判断该用户是否有相关记录
     */
    @Query("select score from TagLike where uid = :uid and mto_tag = :tag")
    Long SelectScore(@Param("uid") long uid, @Param("tag") long tag);

    /**
     * 根据用户ID查询记录
     */
//    @Query("select TagLike(id, uid, mtoTag, score) from TagLike where uid = :uid")
    List<TagLike> findByUid(@Param("uid") long uid);

}
