//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/LazilyParsedNumber.java
//

#ifndef _ComGoogleGsonInternalLazilyParsedNumber_H_
#define _ComGoogleGsonInternalLazilyParsedNumber_H_

#include "J2ObjC_header.h"

@interface ComGoogleGsonInternalLazilyParsedNumber : NSNumber

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)value;

- (jdouble)doubleValue;

- (jfloat)floatValue;

- (jint)intValue;

- (jlong)longLongValue;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalLazilyParsedNumber)

FOUNDATION_EXPORT void ComGoogleGsonInternalLazilyParsedNumber_initWithNSString_(ComGoogleGsonInternalLazilyParsedNumber *self, NSString *value);

FOUNDATION_EXPORT ComGoogleGsonInternalLazilyParsedNumber *new_ComGoogleGsonInternalLazilyParsedNumber_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalLazilyParsedNumber)

#endif // _ComGoogleGsonInternalLazilyParsedNumber_H_