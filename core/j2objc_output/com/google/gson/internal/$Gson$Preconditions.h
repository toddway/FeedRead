//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/$Gson$Preconditions.java
//

#ifndef _ComGoogleGsonInternal$Gson$Preconditions_H_
#define _ComGoogleGsonInternal$Gson$Preconditions_H_

#include "J2ObjC_header.h"

@interface ComGoogleGsonInternal$Gson$Preconditions : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)checkArgumentWithBoolean:(jboolean)condition;

+ (id)checkNotNullWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternal$Gson$Preconditions)

FOUNDATION_EXPORT id ComGoogleGsonInternal$Gson$Preconditions_checkNotNullWithId_(id obj);

FOUNDATION_EXPORT void ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_(jboolean condition);

FOUNDATION_EXPORT void ComGoogleGsonInternal$Gson$Preconditions_init(ComGoogleGsonInternal$Gson$Preconditions *self);

FOUNDATION_EXPORT ComGoogleGsonInternal$Gson$Preconditions *new_ComGoogleGsonInternal$Gson$Preconditions_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternal$Gson$Preconditions)

#endif // _ComGoogleGsonInternal$Gson$Preconditions_H_
