package com.example.ui;

import com.example.domain.Article;

import java.util.List;

public interface ArticleListView {
    void renderArticleList(List<Article> articles);
}
