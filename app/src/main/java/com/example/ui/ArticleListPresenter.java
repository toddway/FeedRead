package com.example.ui;

import com.example.domain.Article;
import com.example.domain.ArticleListInteractor;

import java.util.List;

import rx.Observable;
import rx.Subscriber;
import rx.functions.Action1;


public class ArticleListPresenter extends BasePresenter {
    ArticleListView articleListView;
    ArticleListInteractor articleListInteractor;

    public ArticleListPresenter(ArticleListView articleListView, ArticleListInteractor articleListInteractor) {
        this.articleListView = articleListView;
        this.articleListInteractor = articleListInteractor;
    }

    public void fetchArticleList() {
        subscriptions.add(
                getArticleList()
                        .compose(this.<List<Article>>applySchedulers())
                        .subscribe(new Action1<List<Article>>() {
                            @Override
                            public void call(List<Article> articles) {
                                articleListView.renderArticleList(articles);
                            }
                        })
        );
    }

    private Observable<List<Article>> getArticleList() {
        return Observable.create(new Observable.OnSubscribe<List<Article>>() {
            @Override
            public void call(Subscriber<? super List<Article>> subscriber) {
                List<Article> articles = articleListInteractor.get("http://feeds.feedburner.com/toddway");
                subscriber.onNext(articles);
                subscriber.onCompleted();
            }
        });
    }

}
