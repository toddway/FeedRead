//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/Shelf/shelf/src/main/java/com/toddway/shelf/Shelf.java
//

#ifndef _ComToddwayShelfShelf_H_
#define _ComToddwayShelfShelf_H_

#include "J2ObjC_header.h"

@class ComToddwayShelfShelfItem;
@class JavaIoFile;
@protocol ComToddwayShelfStorage;
@protocol JavaUtilList;

@interface ComToddwayShelfShelf : NSObject

#pragma mark Public

- (instancetype)initWithJavaIoFile:(JavaIoFile *)dir;

- (instancetype)initWithComToddwayShelfStorage:(id<ComToddwayShelfStorage>)storage;

- (void)clearWithNSString:(NSString *)prefix;

- (ComToddwayShelfShelfItem *)itemWithNSString:(NSString *)key;

- (id<JavaUtilList>)keysWithNSString:(NSString *)prefix;

- (void)useWeakMapWithBoolean:(jboolean)useWeakMap;

@end

J2OBJC_EMPTY_STATIC_INIT(ComToddwayShelfShelf)

FOUNDATION_EXPORT void ComToddwayShelfShelf_initWithJavaIoFile_(ComToddwayShelfShelf *self, JavaIoFile *dir);

FOUNDATION_EXPORT ComToddwayShelfShelf *new_ComToddwayShelfShelf_initWithJavaIoFile_(JavaIoFile *dir) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComToddwayShelfShelf_initWithComToddwayShelfStorage_(ComToddwayShelfShelf *self, id<ComToddwayShelfStorage> storage);

FOUNDATION_EXPORT ComToddwayShelfShelf *new_ComToddwayShelfShelf_initWithComToddwayShelfStorage_(id<ComToddwayShelfStorage> storage) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComToddwayShelfShelf)

#endif // _ComToddwayShelfShelf_H_
