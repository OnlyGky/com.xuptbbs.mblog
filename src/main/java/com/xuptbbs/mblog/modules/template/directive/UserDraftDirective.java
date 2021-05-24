/**
 *
 */
package com.xuptbbs.mblog.modules.template.directive;

import com.xuptbbs.mblog.modules.data.PostVO;
import com.xuptbbs.mblog.modules.service.PostService;
import com.xuptbbs.mblog.modules.template.DirectiveHandler;
import com.xuptbbs.mblog.modules.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

/**
 * 根据作者取草稿列表
 *
 * @author ygk
 *
 */
@Component
public class UserDraftDirective extends TemplateDirective {
    @Autowired
	private PostService postService;

	@Override
	public String getName() {
		return "user_draft";
	}

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        long userId = handler.getInteger("userId", 0);
        Pageable pageable = wrapPageable(handler);

        Page<PostVO> result = postService.pagingDraftByAuthorId(pageable, userId);
        handler.put(RESULTS, result).render();
    }

}
