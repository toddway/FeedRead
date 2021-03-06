//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/domain/ArticleListInteractor.java
//

#ifndef _ComExampleDomainArticleListInteractor_H_
#define _ComExampleDomainArticleListInteractor_H_

#include "J2ObjC_header.h"

@class ComToddwayShelfShelf;
@protocol ComExampleDomainArticleRepository;
@protocol JavaUtilList;

@interface ComExampleDomainArticleListInteractor : NSObject {
 @public
  id<ComExampleDomainArticleRepository> articleRepository_;
  ComToddwayShelfShelf *cacheShelf_;
  jboolean useCache__;
}

#pragma mark Public

- (instancetype)initWithComExampleDomainArticleRepository:(id<ComExampleDomainArticleRepository>)articleRepository
                                 withComToddwayShelfShelf:(ComToddwayShelfShelf *)cacheShelf;

+ (id<JavaUtilList>)filterByCategoryWithNSString:(NSString *)category
                                withJavaUtilList:(id<JavaUtilList>)articles;

- (id<JavaUtilList>)getWithNSString:(NSString *)url;

- (ComExampleDomainArticleListInteractor *)useCacheWithBoolean:(jboolean)useCache;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDomainArticleListInteractor)

J2OBJC_FIELD_SETTER(ComExampleDomainArticleListInteractor, articleRepository_, id<ComExampleDomainArticleRepository>)
J2OBJC_FIELD_SETTER(ComExampleDomainArticleListInteractor, cacheShelf_, ComToddwayShelfShelf *)

FOUNDATION_EXPORT void ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(ComExampleDomainArticleListInteractor *self, id<ComExampleDomainArticleRepository> articleRepository, ComToddwayShelfShelf *cacheShelf);

FOUNDATION_EXPORT ComExampleDomainArticleListInteractor *new_ComExampleDomainArticleListInteractor_initWithComExampleDomainArticleRepository_withComToddwayShelfShelf_(id<ComExampleDomainArticleRepository> articleRepository, ComToddwayShelfShelf *cacheShelf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT id<JavaUtilList> ComExampleDomainArticleListInteractor_filterByCategoryWithNSString_withJavaUtilList_(NSString *category, id<JavaUtilList> articles);

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDomainArticleListInteractor)

#endif // _ComExampleDomainArticleListInteractor_H_
