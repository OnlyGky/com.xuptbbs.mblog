package com.xuptbbs.mblog.modules.entity;

import org.hibernate.search.annotations.CalendarBridge;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.NumericField;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 我感兴趣的文章类型
 */

@Entity
@Table(name = "mto_tag_like")
public class TagLike implements Serializable {
    private static final long serialVersionUID = 2436696690653745299L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private long id;

    @Column(name = "uid")
    private long uid;

    @Column(name = "mto_tag")
    private long mtoTag;

    @Column(name = "score")
    private long score;

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getMtoTag() {
        return mtoTag;
    }

    public void setMtoTag(long mtoTag) {
        this.mtoTag = mtoTag;
    }

    public long getScore() {
        return score;
    }

    public void setScore(long score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "TagLike{" +
                "id=" + id +
                ", mtoTag=" + mtoTag +
                ", score=" + score +
                '}';
    }

}
