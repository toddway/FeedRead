//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/TimeTypeAdapter.java
//

#ifndef _ComGoogleGsonInternalBindTimeTypeAdapter_H_
#define _ComGoogleGsonInternalBindTimeTypeAdapter_H_

#include "J2ObjC_header.h"
#include "com/google/gson/TypeAdapter.h"

@class ComGoogleGsonStreamJsonReader;
@class ComGoogleGsonStreamJsonWriter;
@class JavaSqlTime;
@protocol ComGoogleGsonTypeAdapterFactory;

@interface ComGoogleGsonInternalBindTimeTypeAdapter : ComGoogleGsonTypeAdapter

#pragma mark Public

- (instancetype)init;

- (JavaSqlTime *)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(JavaSqlTime *)value;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonInternalBindTimeTypeAdapter)

FOUNDATION_EXPORT id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleGsonInternalBindTimeTypeAdapter, FACTORY_, id<ComGoogleGsonTypeAdapterFactory>)

FOUNDATION_EXPORT void ComGoogleGsonInternalBindTimeTypeAdapter_init(ComGoogleGsonInternalBindTimeTypeAdapter *self);

FOUNDATION_EXPORT ComGoogleGsonInternalBindTimeTypeAdapter *new_ComGoogleGsonInternalBindTimeTypeAdapter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindTimeTypeAdapter)

#endif // _ComGoogleGsonInternalBindTimeTypeAdapter_H_
