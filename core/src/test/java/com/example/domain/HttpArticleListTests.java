package com.example.domain;


import com.example.data.GsonArticleRepository;
import com.toddway.shelf.GsonFileStorage;
import com.toddway.shelf.Shelf;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.List;


public class HttpArticleListTests {
    ArticleListInteractor articleListInteractor;
    ArticleRepository articleRepository;
    static String URL = "http://feeds.feedburner.com/toddway";

    @Before
    public void beforeEach() {
        articleRepository = new GsonArticleRepository();
        articleListInteractor = new ArticleListInteractor(articleRepository, new Shelf(new GsonFileStorage(new File("/tmp/shelf"))));
    }

    @Test
    public void testSomething() {
        List<Article> articles = articleListInteractor.get(URL);
        System.out.println("articles:" + articles);
    }

}
