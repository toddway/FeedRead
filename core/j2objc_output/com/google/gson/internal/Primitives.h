//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/Primitives.java
//

#ifndef _ComGoogleGsonInternalPrimitives_H_
#define _ComGoogleGsonInternalPrimitives_H_

#include "J2ObjC_header.h"

@class IOSClass;
@protocol JavaLangReflectType;

@interface ComGoogleGsonInternalPrimitives : NSObject

#pragma mark Public

+ (jboolean)isPrimitiveWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (jboolean)isWrapperTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (IOSClass *)unwrapWithIOSClass:(IOSClass *)type;

+ (IOSClass *)wrapWithIOSClass:(IOSClass *)type;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonInternalPrimitives)

FOUNDATION_EXPORT jboolean ComGoogleGsonInternalPrimitives_isPrimitiveWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT jboolean ComGoogleGsonInternalPrimitives_isWrapperTypeWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT IOSClass *ComGoogleGsonInternalPrimitives_wrapWithIOSClass_(IOSClass *type);

FOUNDATION_EXPORT IOSClass *ComGoogleGsonInternalPrimitives_unwrapWithIOSClass_(IOSClass *type);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalPrimitives)

#endif // _ComGoogleGsonInternalPrimitives_H_
