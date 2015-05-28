//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/data/HttpArticleRepository.java
//

#ifndef _ComExampleDataHttpArticleRepository_H_
#define _ComExampleDataHttpArticleRepository_H_

#include "J2ObjC_header.h"
#include "com/example/domain/ArticleRepository.h"

@class ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData;
@class ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed;
@protocol JavaUtilList;

@interface ComExampleDataHttpArticleRepository : NSObject < ComExampleDomainArticleRepository >

#pragma mark Public

- (instancetype)init;

- (id<JavaUtilList>)getArticlesWithNSString:(NSString *)url;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDataHttpArticleRepository)

FOUNDATION_EXPORT void ComExampleDataHttpArticleRepository_init(ComExampleDataHttpArticleRepository *self);

FOUNDATION_EXPORT ComExampleDataHttpArticleRepository *new_ComExampleDataHttpArticleRepository_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDataHttpArticleRepository)

@interface ComExampleDataHttpArticleRepository_HttpFeedResponse : NSObject {
 @public
  ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData *responseData_;
}

#pragma mark Public

- (id<JavaUtilList>)getArticles;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDataHttpArticleRepository_HttpFeedResponse)

J2OBJC_FIELD_SETTER(ComExampleDataHttpArticleRepository_HttpFeedResponse, responseData_, ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData *)

FOUNDATION_EXPORT void ComExampleDataHttpArticleRepository_HttpFeedResponse_init(ComExampleDataHttpArticleRepository_HttpFeedResponse *self);

FOUNDATION_EXPORT ComExampleDataHttpArticleRepository_HttpFeedResponse *new_ComExampleDataHttpArticleRepository_HttpFeedResponse_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDataHttpArticleRepository_HttpFeedResponse)

@interface ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData : NSObject {
 @public
  ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed *feed_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData)

J2OBJC_FIELD_SETTER(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData, feed_, ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed *)

FOUNDATION_EXPORT void ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_init(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData *self);

FOUNDATION_EXPORT ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData *new_ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData)

@interface ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed : NSObject {
 @public
  id<JavaUtilList> entries_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed)

J2OBJC_FIELD_SETTER(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed, entries_, id<JavaUtilList>)

FOUNDATION_EXPORT void ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed_init(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed *self);

FOUNDATION_EXPORT ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed *new_ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDataHttpArticleRepository_HttpFeedResponse_ResponseData_Feed)

#endif // _ComExampleDataHttpArticleRepository_H_
