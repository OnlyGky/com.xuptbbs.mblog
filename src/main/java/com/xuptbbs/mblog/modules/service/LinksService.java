package com.xuptbbs.mblog.modules.service;

import com.xuptbbs.mblog.modules.entity.Links;

import java.util.List;

/**
 * @author : ygk
 * @version : 1.0
 * @date : 2020/11/6
 */
public interface LinksService {
    List<Links> findAll();
    void update(Links links);
    void delete(long id);
}
