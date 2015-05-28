package com.example.domain;


import com.example.data.HttpArticleRepository;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.List;


public class HttpArticleListTests {
    GetArticleListInteractor getArticleListInteractor;
    ArticleRepository articleRepository;
    static String URL = "http://feeds.feedburner.com/toddway";

    @Before
    public void beforeEach() {
        articleRepository = new HttpArticleRepository();
        getArticleListInteractor = new GetArticleListInteractor(articleRepository, new File("/tmp/shelf"));
    }

    @Test
    public void testSomething() {
        List<Article> articles = getArticleListInteractor.get(URL);
        System.out.println("articles:" + articles);

//        Protos.ArticleP p = Protos.ArticleP.newBuilder().setTitle("test").build();
//        System.out.println("proto:" + p);
    }
}
