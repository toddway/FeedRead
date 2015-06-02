package com.example.domain;


import java.io.Serializable;
import java.util.List;

public class Article implements Serializable {
    String title;
    List<String> categories;
    String link;
    String imageUrl;
    String description;


    public String getTitle() {
        return title;
    }

    public List<String> getCategories() {
        return categories;
    }

    public String getLink() {
        return link;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder()
                .append("title=" + getTitle() + "\n")
                .append("link=" + getLink() + "\n")
                //.append("description=" + getDescription(), 0, 20)
                .append("categories=" + getCategories() + "\n")
                ;
        return stringBuilder.toString();
    }

    public static Article create(String title, List<String> categories) {
        Article article = new Article();
        article.title = title;
        article.categories = categories;
        return article;
    }
}
