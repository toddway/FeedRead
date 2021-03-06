//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/domain/ArticleListInteractor.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/example/domain/Article.h"
#include "com/example/domain/ArticleListInteractor.h"
#include "com/example/domain/ArticleRepository.h"
#include "com/toddway/shelf/Shelf.h"
#include "com/toddway/shelf/ShelfItem.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/TimeUnit.h"

@implementation ComExampleDomainArticleListInteractor

- (instancetype)initWithComExampleDomainArticleRepository:(id<ComExampleDomainArticleRepository>)articleRepository
                                 withComToddwayShelfShelf:(ComToddwayShelfShelf *)cacheShelf {
  ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(self, articleRepository, cacheShelf);
  return self;
}

- (id<JavaUtilList>)getWithNSString:(NSString *)url {
  NSString *key = @"key";
  if (useCache__ && ![((ComToddwayShelfShelfItem *) nil_chk([((ComToddwayShelfShelf *) nil_chk(cacheShelf_)) itemWithNSString:key])) isOlderThanWithLong:5 withJavaUtilConcurrentTimeUnitEnum:JavaUtilConcurrentTimeUnitEnum_get_MINUTES()]) {
    return [((ComToddwayShelfShelfItem *) nil_chk([cacheShelf_ itemWithNSString:key])) asListOfWithIOSClass:ComExampleDomainArticle_class_()];
  }
  id<JavaUtilList> articles = [((id<ComExampleDomainArticleRepository>) nil_chk(articleRepository_)) getArticlesWithNSString:url];
  if ([((id<JavaUtilList>) nil_chk(articles)) size] > 5) articles = new_JavaUtilArrayList_initWithJavaUtilCollection_([articles subListWithInt:0 withInt:5]);
  [((ComToddwayShelfShelfItem *) nil_chk([((ComToddwayShelfShelf *) nil_chk(cacheShelf_)) itemWithNSString:key])) putWithId:articles];
  return articles;
}

- (ComExampleDomainArticleListInteractor *)useCacheWithBoolean:(jboolean)useCache {
  self->useCache__ = useCache;
  return self;
}

+ (id<JavaUtilList>)filterByCategoryWithNSString:(NSString *)category
                                withJavaUtilList:(id<JavaUtilList>)articles {
  return ComExampleDomainArticleListInteractor_filterByCategoryWithNSString_withJavaUtilList_(category, articles);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComExampleDomainArticleRepository:withComToddwayShelfShelf:", "ArticleListInteractor", NULL, 0x1, NULL, NULL },
    { "getWithNSString:", "get", "Ljava.util.List;", 0x1, NULL, NULL },
    { "useCacheWithBoolean:", "useCache", "Lcom.example.domain.ArticleListInteractor;", 0x1, NULL, NULL },
    { "filterByCategoryWithNSString:withJavaUtilList:", "filterByCategory", "Ljava.util.List;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "articleRepository_", NULL, 0x0, "Lcom.example.domain.ArticleRepository;", NULL, NULL,  },
    { "cacheShelf_", NULL, 0x0, "Lcom.toddway.shelf.Shelf;", NULL, NULL,  },
    { "useCache__", "useCache", 0x0, "Z", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComExampleDomainArticleListInteractor = { 2, "ArticleListInteractor", "com.example.domain", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleDomainArticleListInteractor;
}

@end

void ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(ComExampleDomainArticleListInteractor *self, id<ComExampleDomainArticleRepository> articleRepository, ComToddwayShelfShelf *cacheShelf) {
  (void) NSObject_init(self);
  self->useCache__ = YES;
  self->articleRepository_ = articleRepository;
  self->cacheShelf_ = cacheShelf;
}

ComExampleDomainArticleListInteractor *new_ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(id<ComExampleDomainArticleRepository> articleRepository, ComToddwayShelfShelf *cacheShelf) {
  ComExampleDomainArticleListInteractor *self = [ComExampleDomainArticleListInteractor alloc];
  ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(self, articleRepository, cacheShelf);
  return self;
}

id<JavaUtilList> ComExampleDomainArticleListInteractor_filterByCategoryWithNSString_withJavaUtilList_(NSString *category, id<JavaUtilList> articles) {
  ComExampleDomainArticleListInteractor_initialize();
  JavaUtilArrayList *newList = new_JavaUtilArrayList_init();
  for (ComExampleDomainArticle * __strong article in nil_chk(articles)) {
    for (NSString * __strong s in nil_chk(((ComExampleDomainArticle *) nil_chk(article))->categories_)) {
      if ([((NSString *) nil_chk(category)) isEqual:s]) {
        [newList addWithId:article];
      }
    }
  }
  return newList;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleDomainArticleListInteractor)
