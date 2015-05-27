package com.example.data;

import com.example.domain.Article;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

import java.io.Serializable;
import java.util.List;

@Root(name = "rss", strict = false)
public class RetrofitFeedResponse implements Serializable {

    @Element(name = "channel")
    Channel channel;

    @Root(name = "channel", strict = false)
    static class Channel implements Serializable { //xml converter requires static inner classes or standalone class

        @Element(required = false)
        String title;

        @Element (required = false)
        String description;

        @ElementList(name = "item", type = RetrofitArticle.class, inline = true)
        List<Article> articles;
    }

    public List<Article> getArticles() {
        return channel.articles;
    }

    public String getTitle() {
        return channel.title;
    }
}
