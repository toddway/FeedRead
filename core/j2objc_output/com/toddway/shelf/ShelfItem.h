//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/Shelf/shelf/src/main/java/com/toddway/shelf/ShelfItem.java
//

#ifndef _ComToddwayShelfShelfItem_H_
#define _ComToddwayShelfShelfItem_H_

#include "J2ObjC_header.h"

@class IOSClass;
@class JavaUtilConcurrentTimeUnitEnum;
@protocol ComToddwayShelfStorage;
@protocol JavaUtilList;

@interface ComToddwayShelfShelfItem : NSObject

#pragma mark Public

- (instancetype)initWithComToddwayShelfStorage:(id<ComToddwayShelfStorage>)storage
                                  withNSString:(NSString *)key;

- (id)asWithIOSClass:(IOSClass *)type;

- (id<JavaUtilList>)asListOfWithIOSClass:(IOSClass *)type;

- (jboolean)clear;

- (jboolean)exists;

- (jboolean)isOlderThanWithLong:(jlong)millis;

- (jboolean)isOlderThanWithLong:(jlong)value
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;

- (void)putWithId:(id)item;

@end

J2OBJC_EMPTY_STATIC_INIT(ComToddwayShelfShelfItem)

FOUNDATION_EXPORT void ComToddwayShelfShelfItem_initWithComToddwayShelfStorage_withNSString_(ComToddwayShelfShelfItem *self, id<ComToddwayShelfStorage> storage, NSString *key);

FOUNDATION_EXPORT ComToddwayShelfShelfItem *new_ComToddwayShelfShelfItem_initWithComToddwayShelfStorage_withNSString_(id<ComToddwayShelfStorage> storage, NSString *key) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComToddwayShelfShelfItem)

#endif // _ComToddwayShelfShelfItem_H_
