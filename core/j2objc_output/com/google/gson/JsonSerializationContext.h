//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/JsonSerializationContext.java
//

#ifndef _ComGoogleGsonJsonSerializationContext_H_
#define _ComGoogleGsonJsonSerializationContext_H_

#include "J2ObjC_header.h"

@class ComGoogleGsonJsonElement;
@protocol JavaLangReflectType;

@protocol ComGoogleGsonJsonSerializationContext < NSObject, JavaObject >

- (ComGoogleGsonJsonElement *)serializeWithId:(id)src;

- (ComGoogleGsonJsonElement *)serializeWithId:(id)src
                      withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonSerializationContext)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonSerializationContext)

#endif // _ComGoogleGsonJsonSerializationContext_H_
