package com.example.ui;

import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subscriptions.CompositeSubscription;

public class BasePresenter {
    protected CompositeSubscription subscriptions = new CompositeSubscription();

    public void onDestroy() {
        subscriptions.unsubscribe();
    }

    //http://blog.danlew.net/2015/03/02/dont-break-the-chain/
    protected <T> Observable.Transformer<T, T> applySchedulers() {
        return new Observable.Transformer<T, T>() {
            @Override
            public Observable<T> call(Observable<T> o) {
                return o
                        //.delay(1, TimeUnit.SECONDS)
                        .subscribeOn(Schedulers.newThread())
                        .observeOn(AndroidSchedulers.mainThread());
            }
        };
    }
}