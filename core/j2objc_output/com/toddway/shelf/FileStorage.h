//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/Shelf/shelf/src/main/java/com/toddway/shelf/FileStorage.java
//

#ifndef _ComToddwayShelfFileStorage_H_
#define _ComToddwayShelfFileStorage_H_

#include "J2ObjC_header.h"
#include "com/toddway/shelf/Storage.h"

@class IOSClass;
@class JavaIoFile;
@protocol JavaUtilList;

@interface ComToddwayShelfFileStorage : NSObject < ComToddwayShelfStorage > {
 @public
  JavaIoFile *dir_;
}

#pragma mark Public

- (instancetype)initWithJavaIoFile:(JavaIoFile *)dir;

- (jboolean)containsWithNSString:(NSString *)key;

- (jboolean)delete__WithNSString:(NSString *)key;

- (id)getWithNSString:(NSString *)key
         withIOSClass:(IOSClass *)type;

- (id<JavaUtilList>)getListWithNSString:(NSString *)key
                           withIOSClass:(IOSClass *)type;

- (id<JavaUtilList>)keysWithNSString:(NSString *)prefix;

- (jlong)lastModifiedWithNSString:(NSString *)key;

- (void)putWithNSString:(NSString *)key
                 withId:(id)value;

#pragma mark Protected

- (id)deserializeWithJavaIoFile:(JavaIoFile *)file
                   withIOSClass:(IOSClass *)type;

- (id<JavaUtilList>)deserializeListWithJavaIoFile:(JavaIoFile *)file
                                     withIOSClass:(IOSClass *)type;

- (JavaIoFile *)fileWithNSString:(NSString *)key;

- (void)serializeWithJavaIoFile:(JavaIoFile *)file
                         withId:(id)object;

@end

J2OBJC_EMPTY_STATIC_INIT(ComToddwayShelfFileStorage)

J2OBJC_FIELD_SETTER(ComToddwayShelfFileStorage, dir_, JavaIoFile *)

FOUNDATION_EXPORT NSString *ComToddwayShelfFileStorage_EXT_;
J2OBJC_STATIC_FIELD_GETTER(ComToddwayShelfFileStorage, EXT_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(ComToddwayShelfFileStorage, EXT_, NSString *)

FOUNDATION_EXPORT void ComToddwayShelfFileStorage_initWithJavaIoFile_(ComToddwayShelfFileStorage *self, JavaIoFile *dir);

FOUNDATION_EXPORT ComToddwayShelfFileStorage *new_ComToddwayShelfFileStorage_initWithJavaIoFile_(JavaIoFile *dir) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComToddwayShelfFileStorage)

#endif // _ComToddwayShelfFileStorage_H_
