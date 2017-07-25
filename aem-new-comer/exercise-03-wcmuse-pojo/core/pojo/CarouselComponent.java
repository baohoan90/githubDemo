package com.sutrix.demo.core.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Value;

import com.adobe.cq.sightly.WCMUsePojo;
import com.sutrix.demo.core.bean.Carousel;

public class CarouselComponent extends WCMUsePojo {

    private Carousel carousel;

    @Override
    public void activate() throws Exception {

        Node currentNode = getResource().adaptTo(Node.class);

        carousel = new Carousel();

        if (currentNode.hasProperty("title")) {
            carousel.setTitle(currentNode.getProperty("title").getString());
        }
        
        if (currentNode.hasProperty("pagePaths")) {
            List<String> pagesPaths = new ArrayList<String>();
            Property myProp = currentNode.getProperty("pagePaths");
            if (myProp.isMultiple()) {
                Value[] values = myProp.getValues();
                for (Value value : values) {
                    pagesPaths.add(value.getString());
                }
            } else {
                pagesPaths.add(myProp.getString());
            }
            carousel.setPagePaths(pagesPaths);
        }

    }

    /**
     * @return the carousel
     */
    public Carousel getCarousel() {
        return carousel;
    }

}
