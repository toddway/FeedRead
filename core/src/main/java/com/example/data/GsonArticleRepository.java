package com.example.data;

import com.example.domain.Article;
import com.example.domain.ArticleRepository;
import com.google.gson.Gson;

import java.util.List;


public class GsonArticleRepository implements ArticleRepository{
    @Override
    public List<Article> getArticles(String url) {
        url = "https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=999&q=" + url;
        return new Gson().fromJson(HttpUtil.toString(url), FeedResponse.class).responseData.feed.entries;
    }

    static class FeedResponse {
        ResponseData responseData;
        static class ResponseData {
            Feed feed;
            static class Feed{
                List<Article> entries;
            }
        }
    }

}
