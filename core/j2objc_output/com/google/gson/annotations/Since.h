//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/annotations/Since.java
//

#ifndef _ComGoogleGsonAnnotationsSince_H_
#define _ComGoogleGsonAnnotationsSince_H_

#include "J2ObjC_header.h"
#include "java/lang/annotation/Annotation.h"

@protocol ComGoogleGsonAnnotationsSince < JavaLangAnnotationAnnotation >

@property (readonly) jdouble value;

@end

@interface ComGoogleGsonAnnotationsSince : NSObject < ComGoogleGsonAnnotationsSince > {
 @private
  jdouble value_;
}

- (instancetype)initWithValue:(jdouble)value__;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonAnnotationsSince)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonAnnotationsSince)

#endif // _ComGoogleGsonAnnotationsSince_H_
