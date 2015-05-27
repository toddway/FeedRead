//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/domain/Article.java
//


#include "J2ObjC_source.h"
#include "com/example/domain/Article.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"

@implementation ComExampleDomainArticle

- (void)setLinkWithNSString:(NSString *)link {
  self->link_ = link;
}

- (NSString *)getTitle {
  return title_;
}

- (void)setTitleWithNSString:(NSString *)title {
  self->title_ = title;
}

- (id<JavaUtilList>)getCategories {
  return categories_;
}

- (void)setCategoriesWithJavaUtilList:(id<JavaUtilList>)categories {
  self->categories_ = categories;
}

- (NSString *)getLink {
  return link_;
}

- (NSString *)getDescription {
  return description__;
}

- (NSString *)description {
  JavaLangStringBuilder *stringBuilder = [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([new_JavaLangStringBuilder_init() appendWithNSString:JreStrcat("$$C", @"title=", [self getTitle], 0x000a)])) appendWithNSString:JreStrcat("$$C", @"link=", [self getLink], 0x000a)])) appendWithNSString:JreStrcat("$@C", @"categories=", [self getCategories], 0x000a)];
  return [((JavaLangStringBuilder *) nil_chk(stringBuilder)) description];
}

+ (ComExampleDomainArticle *)createWithNSString:(NSString *)title
                               withJavaUtilList:(id<JavaUtilList>)categories {
  return ComExampleDomainArticle_createWithNSString_withJavaUtilList_(title, categories);
}

- (instancetype)init {
  ComExampleDomainArticle_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setLinkWithNSString:", "setLink", "V", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setTitleWithNSString:", "setTitle", "V", 0x1, NULL, NULL },
    { "getCategories", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "setCategoriesWithJavaUtilList:", "setCategories", "V", 0x1, NULL, NULL },
    { "getLink", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDescription", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "createWithNSString:withJavaUtilList:", "create", "Lcom.example.domain.Article;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "title_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL,  },
    { "categories_", NULL, 0x0, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/String;>;",  },
    { "link_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL,  },
    { "imageUrl_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL,  },
    { "description__", "description", 0x0, "Ljava.lang.String;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComExampleDomainArticle = { 2, "Article", "com.example.domain", NULL, 0x1, 10, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleDomainArticle;
}

@end

ComExampleDomainArticle *ComExampleDomainArticle_createWithNSString_withJavaUtilList_(NSString *title, id<JavaUtilList> categories) {
  ComExampleDomainArticle_initialize();
  ComExampleDomainArticle *article = new_ComExampleDomainArticle_init();
  [article setTitleWithNSString:title];
  [article setCategoriesWithJavaUtilList:categories];
  return article;
}

void ComExampleDomainArticle_init(ComExampleDomainArticle *self) {
  (void) NSObject_init(self);
}

ComExampleDomainArticle *new_ComExampleDomainArticle_init() {
  ComExampleDomainArticle *self = [ComExampleDomainArticle alloc];
  ComExampleDomainArticle_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleDomainArticle)