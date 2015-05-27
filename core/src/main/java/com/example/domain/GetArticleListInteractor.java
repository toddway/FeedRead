package com.example.domain;


import com.toddway.shelf.Shelf;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class GetArticleListInteractor {

    ArticleRepository articleRepository;
    Shelf cacheShelf;
    boolean useCache = true;

    public GetArticleListInteractor(ArticleRepository articleRepository, Shelf cacheShelf) {
        this.articleRepository = articleRepository;
        this.cacheShelf = cacheShelf;
    }

    public List<Article> get(String url) {
        String key = "key";

        if (useCache && !cacheShelf.item(key).isOlderThan(5, TimeUnit.MINUTES)) {
            return cacheShelf.item(key).get(List.class);
        }

        List<Article> articles = articleRepository.getArticles(url);
        if (articles.size() > 5) articles = new ArrayList<>(articles.subList(0, 5));
        cacheShelf.item(key).put(articles);
        return articles;
    }

    public GetArticleListInteractor useCache(boolean useCache) {
        this.useCache = useCache;
        return this;
    }

    public static List<Article> filterByCategory(String category, List<Article> articles) {
        ArrayList<Article> newList = new ArrayList<>();

        for (Article article : articles) {
            for (String s : article.getCategories()) {
                if (category.equals(s)) {
                    newList.add(article);
                }
            }
        }

        return newList;
    }

}
