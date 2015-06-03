package com.example.domain;

import com.toddway.shelf.GsonFileStorage;
import com.toddway.shelf.Shelf;

import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class ArticleListInteractorTests {

    ArticleListInteractor articleListInteractor;
    ArticleRepository articleRepository;
    Shelf diskCache;
    String url;

    @Before
    public void beforeEach() {
        //dependency injection
        url =  "http://feeds.feedburner.com/toddway";
        articleRepository = mock(ArticleRepository.class);
        when(articleRepository.getArticles(url)).thenReturn(sampleArticleList1());
        diskCache = new Shelf(new GsonFileStorage(new File("/tmp/shelf")));
        articleListInteractor = new ArticleListInteractor(articleRepository, diskCache);
    }

    @Test
    public void testPrintArticles() throws Exception {
        List<Article> articles = articleListInteractor.get(url);
        assertTrue(articles.size() <= 5);
        for (Article article : articles) {
            System.out.println(article.toString());
        }
    }

    @Test
    public void testGetArticleTitle() throws Exception {
        List<Article> articles = articleListInteractor.useCache(false).get(url);
        assertEquals(articles.get(0).title, sampleArticleList1().get(0).title);
    }

    @Test
    public void testGetArticleTitleIgnoringCache() throws Exception {
        //prime the article cache
        testGetArticleTitle();

        //change the list returned by the repo
        when(articleRepository.getArticles(url)).thenReturn(sampleArticleList2());

        //assert that we bypass cache and get the new title
        List<Article> articles = articleListInteractor.useCache(false).get(url);
        assertEquals(articles.get(0).title, sampleArticleList2().get(0).title);
    }

    @Test
    public void testGetArticleTitleUsingCache() throws Exception {
        //prime the article cache
        testGetArticleTitle();

        //change the list returned by the repo
        when(articleRepository.getArticles(url)).thenReturn(sampleArticleList2());

        //assert that we get the cached title and not the new title
        List<Article> articles = articleListInteractor.useCache(true).get(url);
        assertEquals(articles.get(0).title, sampleArticleList1().get(0).title);
    }

//    @Test
//    public void testGetArticlesByCategory() throws Exception {
//        List<Article> articles = feedRepository.getArticlesInCategory("android", false);
//        assertEquals(articles.size(), 1);
//    }

    private List<Article> sampleArticleList1() {
        return Arrays.asList(
                Article.create("First article", Arrays.asList("android", "test")),
                Article.create("Second article", Arrays.asList("test"))
        );
    }

    private List<Article> sampleArticleList2() {
        return Arrays.asList(
                Article.create("New title", Arrays.asList("android", "test")),
                Article.create("Second article", Arrays.asList("test"))
        );
    }
}
