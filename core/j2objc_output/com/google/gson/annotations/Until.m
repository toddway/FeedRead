//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/annotations/Until.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/annotations/Until.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

@implementation ComGoogleGsonAnnotationsUntil

@synthesize value = value_;

- (instancetype)initWithValue:(jdouble)value__ {
  if ((self = [super init])) {
    self->value_ = value__;
  }
  return self;
}

- (IOSClass *)annotationType {
  return ComGoogleGsonAnnotationsUntil_class_();
}

- (NSString *)description {
  return @"@com.google.gson.annotations.Until()";
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicyEnum_get_RUNTIME()], [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementTypeEnum_get_FIELD(), JavaLangAnnotationElementTypeEnum_get_TYPE() } count:2 type:NSObject_class_()]] } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "value", "value", "D", 0x401, NULL, NULL },
    { "valueDefault", "value", "D", 0x100a, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonAnnotationsUntil = { 2, "Until", "com.google.gson.annotations", NULL, 0x2609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonAnnotationsUntil;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleGsonAnnotationsUntil)
