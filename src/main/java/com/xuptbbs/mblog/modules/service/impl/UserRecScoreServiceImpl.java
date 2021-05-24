package com.xuptbbs.mblog.modules.service.impl;

import com.xuptbbs.mblog.modules.entity.UserRecScore;
import com.xuptbbs.mblog.modules.repository.UserRecScoreRepository;
import com.xuptbbs.mblog.modules.service.UserRecScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class UserRecScoreServiceImpl implements UserRecScoreService {

    @Autowired
    UserRecScoreRepository userRecScoreRepository;

    /**
     * 查询所有高分用户
     */
    public List<UserRecScore> SelectMaxRecScoreUser(){
        List<UserRecScore> recScores = userRecScoreRepository.findAll(Sort.by(Sort.Direction.DESC, "weight"));
        if (recScores.size() < 30){
            return recScores;
        }else {
            return recScores.subList(0, 30);
        }
    }

    /**
     * 查询用户分值
     */
    public UserRecScore findUserRecScoreByUid(long uid){
        UserRecScore userRecScore = userRecScoreRepository.findByUid(uid);
        return userRecScore;
    }

    /**
     * 保存或更新用户分值
     */

    public void SaveOrUpdateUserRecScore(long uid, long score){
        UserRecScore userRecScore = findUserRecScoreByUid(uid);
        // 进行用户分值保存
        if (userRecScore == null){
            userRecScore = new UserRecScore();
            userRecScore.setUid(uid);
            userRecScore.setScore(score);
            userRecScore.setFirsttime(getToday());
            double weight = (score -1)/Math.pow(2.0, 1.5);
            userRecScore.setWeight(weight);
            userRecScoreRepository.save(userRecScore);
        }else { // 用户分值更新
            long new_score = userRecScore.getScore() + score;
            double weight = getNewScore(userRecScore.getFirsttime(), new_score);
            if (weight < 0){
                return;
            }
            userRecScoreRepository.UpdateWeight(uid, new_score, weight);
        }
    }


    /**
     * 获取当前时间
     */
    public String getToday(){
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(date);
    }

    /**
     * 获取新的分值
     */
    public double getNewScore(String oldTime, long score){
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
           Date one =  dateFormat.parse(oldTime);
           long days = Math.abs(((date.getTime()-one.getTime())/(1000*60*60*24)));
           if (days < 3){
               days = 3;
           }

           return (score -1)/Math.pow(days, 1.5);
        } catch (ParseException e) {
            e.printStackTrace();
            return -0.1;
        }
    }

}
