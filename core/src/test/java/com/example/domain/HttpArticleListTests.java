package com.example.domain;


import com.example.data.GsonArticleRepository;

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
        articleListInteractor = new ArticleListInteractor(articleRepository, new File("/tmp/shelf"));
    }

    @Test
    public void testSomething() {
        List<Article> articles = articleListInteractor.get(URL);
        System.out.println("articles:" + articles);
    }

//    @Test
//    public void testJsonToProto() {
//        String json = HttpUtil.toString("https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&q=" + URL);
//        try {
//            Protos.FeedResponse.Builder builder = Protos.FeedResponse.newBuilder();
//            JsonFormat.merge(json, builder);
//            Protos.FeedResponse response = builder.build();
//            System.out.println("title:" + response.getResponseData().getFeed().getEntriesList());
//        } catch (JsonFormat.ParseException e) {
//            e.printStackTrace();
//        }
//
//        Assert.assertTrue(true);
//    }
}
