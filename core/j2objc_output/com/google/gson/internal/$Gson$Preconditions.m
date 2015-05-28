//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/$Gson$Preconditions.java
//


#include "J2ObjC_source.h"
#include "com/google/gson/internal/$Gson$Preconditions.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"

@implementation ComGoogleGsonInternal$Gson$Preconditions

+ (id)checkNotNullWithId:(id)obj {
  return ComGoogleGsonInternal$Gson$Preconditions_checkNotNullWithId_(obj);
}

+ (void)checkArgumentWithBoolean:(jboolean)condition {
  ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_(condition);
}

- (instancetype)init {
  ComGoogleGsonInternal$Gson$Preconditions_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "checkNotNullWithId:", "checkNotNull", "TT;", 0x9, NULL, "<T:Ljava/lang/Object;>(TT;)TT;" },
    { "checkArgumentWithBoolean:", "checkArgument", "V", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonInternal$Gson$Preconditions = { 2, "$Gson$Preconditions", "com.google.gson.internal", NULL, 0x11, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonInternal$Gson$Preconditions;
}

@end

id ComGoogleGsonInternal$Gson$Preconditions_checkNotNullWithId_(id obj) {
  ComGoogleGsonInternal$Gson$Preconditions_initialize();
  if (obj == nil) {
    @throw new_JavaLangNullPointerException_init();
  }
  return obj;
}

void ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_(jboolean condition) {
  ComGoogleGsonInternal$Gson$Preconditions_initialize();
  if (!condition) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
}

void ComGoogleGsonInternal$Gson$Preconditions_init(ComGoogleGsonInternal$Gson$Preconditions *self) {
  (void) NSObject_init(self);
}

ComGoogleGsonInternal$Gson$Preconditions *new_ComGoogleGsonInternal$Gson$Preconditions_init() {
  ComGoogleGsonInternal$Gson$Preconditions *self = [ComGoogleGsonInternal$Gson$Preconditions alloc];
  ComGoogleGsonInternal$Gson$Preconditions_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternal$Gson$Preconditions)