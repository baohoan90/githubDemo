package com.sutrix.demo.core.pojo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.adobe.cq.sightly.WCMUsePojo;
import com.day.cq.wcm.api.Page;
import com.sutrix.demo.core.bean.MenuItem;
import com.sutrix.demo.core.utils.SeoUtils;

public class HeaderComponent extends WCMUsePojo {

    List<MenuItem> menuItems = null;

    @Override
    public void activate() throws Exception {
        
        final Page rootPage = getCurrentPage().getAbsoluteParent(getCurrentStyle().get("absParent", 2));
        if (rootPage != null) {

            Iterator<Page> children = rootPage.listChildren();

            if (children.hasNext()) {
                menuItems = new ArrayList<MenuItem>();
            }

            while (children.hasNext()) {
                Page page = children.next();
                menuItems.add(new MenuItem(SeoUtils.getTitle(page), page.getPath()));
            }
        }
    }

    /**
     * @return the menuItems
     */
    public List<MenuItem> getMenuItems() {
        return menuItems;
    }

}
