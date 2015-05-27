package com.example.data;


import com.example.domain.Article;
import com.example.domain.ArticleRepository;

import java.util.List;

import retrofit.RestAdapter;
import retrofit.converter.SimpleXMLConverter;
import retrofit.http.GET;

public class RetrofitArticleRepository implements ArticleRepository {

    @Override
    public List<Article> getArticles(String url) {
        RetrofitFeedResponse feedResponse = getXMLAdapter(url).create(FeedService.class).getFeed();
        return feedResponse.getArticles();
    }

    public interface FeedService {
        @GET("/")
        RetrofitFeedResponse getFeed();
    }

    private RestAdapter getXMLAdapter(String endpoint){
        RestAdapter.Builder builder = new RestAdapter.Builder()
                .setEndpoint(endpoint)
                .setConverter(new SimpleXMLConverter());
        return builder.build();
    }
}
