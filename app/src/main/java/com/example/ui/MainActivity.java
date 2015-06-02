package com.example.ui;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

import com.example.data.GsonArticleRepository;
import com.example.domain.Article;
import com.example.domain.ArticleListInteractor;
import com.example.feedread.R;

import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;


public class MainActivity extends ActionBarActivity implements ArticleListView {

    ArticleListPresenter articleListPresenter;
    @InjectView(R.id.hello_world)
    TextView helloWorldTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ButterKnife.inject(this);

        articleListPresenter = new ArticleListPresenter(this, new ArticleListInteractor(
                new GsonArticleRepository(),
                getDir("feedcache", MODE_PRIVATE)
        ));

        articleListPresenter.fetchArticleList();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void renderArticleList(List<Article> articles) {
        helloWorldTextView.setText("Articles:\n" + articles);
    }
}
