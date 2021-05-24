package com.xuptbbs.mblog.modules.data;

import com.xuptbbs.mblog.modules.entity.PostTag;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * @author : ygk
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class PostTagVO extends PostTag implements Serializable {
    private static final long serialVersionUID = 73354108587481371L;

    private PostVO post;
}
