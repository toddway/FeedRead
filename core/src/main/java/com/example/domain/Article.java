package com.example.domain;


import java.io.Serializable;
import java.util.List;

public class Article implements Serializable {
    String title;
    List<String> categories;
    String link;
    public String imageUrl;
    String description;

    public void setLink(String link) {
        this.link = link;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
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
        article.setTitle(title);
        article.setCategories(categories);
        return article;
    }
}
