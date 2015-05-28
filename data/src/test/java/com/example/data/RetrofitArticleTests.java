package com.example.data;

import com.example.data.RetrofitArticleRepository;
import com.example.domain.Article;
import com.example.domain.ArticleRepository;
import com.example.domain.GetArticleListInteractor;
import com.toddway.shelf.Shelf;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.List;

import static org.junit.Assert.*;


public class RetrofitArticleTests {

    GetArticleListInteractor getArticleListInteractor;
    ArticleRepository articleRepository;
    static String URL = "http://feeds.feedburner.com/toddway";

    @Before
    public void setUp() {
        articleRepository = new RetrofitArticleRepository();
        getArticleListInteractor = new GetArticleListInteractor(articleRepository, new File("/tmp/shelf"));
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
        List<Article> articles = getArticleListInteractor.get(URL);
        assertTrue(articles.size() > 0 && articles.size() <= 5);

        System.out.println("interactor list size=" + articles.size());
    }



}
