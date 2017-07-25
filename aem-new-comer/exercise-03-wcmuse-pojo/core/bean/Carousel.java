package com.sutrix.demo.core.bean;

import java.util.List;

public class Carousel {

    private String title;

    private List<String> pagePaths;

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the pagePaths
     */
    public List<String> getPagePaths() {
        return pagePaths;
    }

    /**
     * @param pagePaths the pagePaths to set
     */
    public void setPagePaths(List<String> pagePaths) {
        this.pagePaths = pagePaths;
    }

}
