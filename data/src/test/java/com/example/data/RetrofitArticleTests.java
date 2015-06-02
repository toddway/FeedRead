package com.example.data;

import com.example.domain.Article;
import com.example.domain.ArticleRepository;
import com.example.domain.ArticleListInteractor;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.List;

import static org.junit.Assert.*;


public class RetrofitArticleTests {

    ArticleListInteractor articleListInteractor;
    ArticleRepository articleRepository;
    static String URL = "http://feeds.feedburner.com/toddway";

    @Before
    public void setUp() {
        articleRepository = new RetrofitArticleRepository();
        articleListInteractor = new ArticleListInteractor(articleRepository, new File("/tmp/shelf"));
    }

    @Test
    public void testArticleRepository() {
        List<Article> articles = articleRepository.getArticles(URL);
        assertTrue(articles.size() > 0);

        System.out.println("repository list size=" + articles.size());

        for (Article article : articles) {
            System.out.println(article.toString());
        }
    }

    @Test
    public void testGetArticleListInteractor() throws Exception {
        List<Article> articles = articleListInteractor.get(URL);
        assertTrue(articles.size() > 0 && articles.size() <= 5);

        System.out.println("interactor list size=" + articles.size());
    }



}
