//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/domain/Article.java
//

#ifndef _ComExampleDomainArticle_H_
#define _ComExampleDomainArticle_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"

@protocol JavaUtilList;

@interface ComExampleDomainArticle : NSObject < JavaIoSerializable > {
 @public
  NSString *title_;
  id<JavaUtilList> categories_;
  NSString *link_;
  NSString *imageUrl_;
  NSString *description__;
}

#pragma mark Public

- (instancetype)init;

+ (ComExampleDomainArticle *)createWithNSString:(NSString *)title
                               withJavaUtilList:(id<JavaUtilList>)categories;

- (id<JavaUtilList>)getCategories;

- (NSString *)getDescription;

- (NSString *)getLink;

- (NSString *)getTitle;

- (void)setCategoriesWithJavaUtilList:(id<JavaUtilList>)categories;

- (void)setLinkWithNSString:(NSString *)link;

- (void)setTitleWithNSString:(NSString *)title;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComExampleDomainArticle)

J2OBJC_FIELD_SETTER(ComExampleDomainArticle, title_, NSString *)
J2OBJC_FIELD_SETTER(ComExampleDomainArticle, categories_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComExampleDomainArticle, link_, NSString *)
J2OBJC_FIELD_SETTER(ComExampleDomainArticle, imageUrl_, NSString *)
J2OBJC_FIELD_SETTER(ComExampleDomainArticle, description__, NSString *)

FOUNDATION_EXPORT ComExampleDomainArticle *ComExampleDomainArticle_createWithNSString_withJavaUtilList_(NSString *title, id<JavaUtilList> categories);

FOUNDATION_EXPORT void ComExampleDomainArticle_init(ComExampleDomainArticle *self);

FOUNDATION_EXPORT ComExampleDomainArticle *new_ComExampleDomainArticle_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComExampleDomainArticle)

#endif // _ComExampleDomainArticle_H_
