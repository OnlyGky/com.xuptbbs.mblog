package com.xuptbbs.mblog.modules.entity;

import javax.persistence.*;

/**
 *用户推荐分值
 **/
@Entity
@Table(name = "user_rec_score")
public class UserRecScore {
    private static final long serialVersionUID = -2908144287976184765L;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private long id;

    @Column(name = "uid")
    private long uid;


    @Column(name = "score")
    private long score;

    // w = (score-1)/(T+2)^G   G = 1.8
    @Column(name = "weight")
    private double weight;

    @Column(name = "firsttime")
    private String firsttime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public long getScore() {
        return score;
    }

    public void setScore(long score) {
        this.score = score;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getFirsttime() {
        return firsttime;
    }

    public void setFirsttime(String firsttime) {
        this.firsttime = firsttime;
    }


    @Override
    public String toString() {
        return "UserRecScore{" +
                "id=" + id +
                ", uid=" + uid +
                ", score=" + score +
                ", weight=" + weight +
                ", firsttime='" + firsttime + '\'' +
                '}';
    }
}
