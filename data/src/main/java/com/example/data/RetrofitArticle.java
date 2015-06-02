package com.example.data;

import com.example.domain.Article;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Root(name="item", strict = false)
public class RetrofitArticle extends Article implements Serializable {

    @Element
    String title;

    @Element
    String description;

    @Element
    String link;

    @Element(required = false)
    String author;

    @Element(required = false)
    String pubDate;

    @ElementList(inline = true)
    List<Category> categories; //List<String> wouldn't work, not sure why?

    @Element
    static class Category implements Serializable {
        @Text
        String name;
    }


    public String getTitle() {
        return title;
    }

    public List<String> getCategories() {
        ArrayList<String> strings = new ArrayList<>();
        for (Category category : categories) {
            strings.add(category.name);
        }
        return strings;
    }


    public String getLink() {
        return link;
    }


    public String getDescription() {
        return description;
    }
}
