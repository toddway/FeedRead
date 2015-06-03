package com.example.data;

import com.example.domain.Article;
import com.example.domain.ArticleRepository;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;


public class GsonArticleRepository implements ArticleRepository{
    @Override
    public List<Article> getArticles(String url) {
        try {
            return getResponse(buildRequest(url), FeedResponse.class).getArticles();
        } catch (IOException e) {
            e.printStackTrace();
            //TODO: handle response errors here or throw them
            return null;
        }
    }

    static class FeedResponse {
        ResponseData responseData;
        static class ResponseData {
            Feed feed;
            static class Feed{
                List<Article> entries;
            }
        }
        List<Article> getArticles() {
            return responseData.feed.entries;
        }
    }

    private static URLConnection buildRequest(String url) throws IOException {
        url = "https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=999&q=" + url; //returns any rss feed in json format
        URLConnection urlConnection = new URL(url).openConnection();
        //...http://stackoverflow.com/questions/2793150/using-java-net-urlconnection-to-fire-and-handle-http-requests
        return urlConnection;
    }

    private static <T> T getResponse(URLConnection urlConnection, Class<T> type) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) urlConnection;
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getInputStream();
            return new Gson().fromJson(new JsonReader(new InputStreamReader(inputStream)), type); //deserialize response stream to json
        } catch (IOException e) {
            throw e;
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {}
            }
            if (urlConnection != null) {
                httpURLConnection.disconnect();
            }
        }
    }

}
