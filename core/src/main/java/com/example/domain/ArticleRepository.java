package com.example.domain;

import java.util.List;

public interface ArticleRepository {
    List<Article> getArticles(String url);
}
