package com.example.domain;


import com.example.data.GsonArticleRepository;
import com.toddway.shelf.GsonFileStorage;
import com.toddway.shelf.Shelf;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.List;


public class GsonArticleRepositoryTests {
    ArticleRepository articleRepository;
    String url;

    @Before
    public void beforeEach() {
        //dependency injection
        url = "http://feeds.feedburner.com/toddway";
        articleRepository = new GsonArticleRepository();
    }

    @Test
    public void testGetArticleList() {
        List<Article> articles = articleRepository.getArticles(url);
        System.out.println("articles:" + articles);
    }

}
