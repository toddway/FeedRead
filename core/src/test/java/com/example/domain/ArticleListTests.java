package com.example.domain;

import com.example.domain.Article;
import com.example.domain.GetArticleListInteractor;
import com.example.domain.ArticleRepository;
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

public class ArticleListTests {

    GetArticleListInteractor getArticleListInteractor;
    ArticleRepository articleRepository;
    static String URL = "mock url";

    @Before
    public void beforeEach() {
        articleRepository = mock(ArticleRepository.class);
        when(articleRepository.getArticles(URL)).thenReturn(sampleArticleList1());
        getArticleListInteractor = new GetArticleListInteractor(articleRepository, new File("/tmp/shelf"));
    }

    @Test
    public void testGetArticles() throws Exception {
        List<Article> articles = getArticleListInteractor.get(URL);
        assertTrue(articles.size() <= 5);
        for (Article article : articles) {
            System.out.println(article.toString());
        }
    }

    @Test
    public void testGetArticleTitle() throws Exception {
        List<Article> articles = getArticleListInteractor.get(URL);
        assertEquals(articles.get(0).getTitle(), sampleArticleList1().get(0).getTitle());
    }

    @Test
    public void testGetArticleTitleIgnoringCache() throws Exception {
        //prime the article cache
        testGetArticleTitle();

        //change the list returned by the repo
        when(articleRepository.getArticles(URL)).thenReturn(sampleArticleList2());

        //assert that we bypass cache and get the new title
        List<Article> articles = getArticleListInteractor.useCache(false).get(URL);
        assertEquals(articles.get(0).getTitle(), sampleArticleList2().get(0).getTitle());
    }
//
//    @Test
//    public void testGetArticleTitleUsingCache() throws Exception {
//        //prime the article cache
//        List<Article> articles = feedRepository.getArticles(false);
//        assertEquals(articles.get(0).getTitle(), "First article");
//
//        //change the remote article title
//        when(feedRepository.getRemoteFeed()).thenReturn(sampleFeed2());
//
//        //assert that we get the cached title and not the new title
//        articles = feedRepository.getArticles(true);
//        assertEquals(articles.get(0).getTitle(), "First article");
//    }
//
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
