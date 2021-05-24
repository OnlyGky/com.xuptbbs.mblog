package com.xuptbbs.mblog.modules.template.layout;

import com.xuptbbs.mblog.config.SiteOptions;
import com.xuptbbs.mblog.modules.template.DirectiveHandler;
import com.xuptbbs.mblog.modules.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @since 4.0.0
 */
@Component
public class ExtendsDirective extends TemplateDirective {
    @Autowired
    private SiteOptions siteOptions;

    @Override
    public String getName() {
        return "layout.extends";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        String theme = siteOptions.getValue("theme");
        String layoutName =  handler.getString("name");
        layoutName = layoutName.startsWith("/") ? theme + layoutName : theme + "/" + layoutName;
        handler.bodyResult();
        handler.getEnv().include(layoutName, null, true);
    }

}
