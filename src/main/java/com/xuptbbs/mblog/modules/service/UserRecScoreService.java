package com.xuptbbs.mblog.modules.service;

import com.xuptbbs.mblog.modules.entity.UserRecScore;

import java.util.List;

public interface UserRecScoreService {
    List<UserRecScore> SelectMaxRecScoreUser();
    UserRecScore findUserRecScoreByUid(long uid);
    void SaveOrUpdateUserRecScore(long uid, long score);
}
