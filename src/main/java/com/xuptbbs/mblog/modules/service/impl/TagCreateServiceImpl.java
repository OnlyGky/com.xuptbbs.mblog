package com.xuptbbs.mblog.modules.service.impl;

import com.xuptbbs.mblog.modules.entity.TagCreate;
import com.xuptbbs.mblog.modules.repository.PostTagRepository;
import com.xuptbbs.mblog.modules.repository.TagCreateRepository;
import com.xuptbbs.mblog.modules.service.TagCreateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class TagCreateServiceImpl implements TagCreateService {

    @Autowired
    TagCreateRepository tagCreateRepository;
    @Autowired
    PostTagRepository postTagRepository;

    @Override
    public void UpdateScore(long id, long tag, long score) {
        if (id == 0 || tag == 0){
            return;
        }

        Long temp = tagCreateRepository.SelectScore(id, tag);
        if (temp != null && temp > 0){
            tagCreateRepository.UpdateScore(id, tag, score);
        }else {

            TagCreate tagCreate = new TagCreate();
            tagCreate.setUid(id);
            tagCreate.setMtoTag(tag);
            tagCreate.setScore(score);
            tagCreateRepository.save(tagCreate);

        }
        return;
    }


    @Override
    public void UpdateScoreByPostId(long postId, long uid, long score, long anchorId) {
        if (anchorId == 0){
            return;
        }
        Set<Long> tags = postTagRepository.findTagIdByPostId(postId);
        for (long tag : tags){
            UpdateScore(anchorId, tag, score);
        }
    }

}
