package com.example.data;

import com.example.domain.Article;
import com.example.domain.ArticleRepository;
import com.google.gson.Gson;


import java.util.List;


public class HttpArticleRepository implements ArticleRepository{
    @Override
    public List<Article> getArticles(String url) {
        String json = HttpUtil.getResponseString("https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&q=" + url);
        return new Gson().fromJson(json, HttpFeedResponse.class).getArticles();
    }

    static class HttpFeedResponse {
        ResponseData responseData;
        static class ResponseData {
            Feed feed;
            static class Feed{
                List<Article> entries;
            }
        }

        public List<Article> getArticles() {
            return responseData.feed.entries;
        }
    }


}
