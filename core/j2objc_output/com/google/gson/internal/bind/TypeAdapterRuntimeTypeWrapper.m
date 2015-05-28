//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/internal/bind/ReflectiveTypeAdapterFactory.h"
#include "com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.h"
#include "com/google/gson/reflect/TypeToken.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/io/IOException.h"
#include "java/lang/reflect/Type.h"
#include "java/lang/reflect/TypeVariable.h"

@interface ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper () {
 @public
  ComGoogleGsonGson *context_;
  ComGoogleGsonTypeAdapter *delegate_;
  id<JavaLangReflectType> type_;
}

- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper, context_, ComGoogleGsonGson *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper, delegate_, ComGoogleGsonTypeAdapter *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper, type_, id<JavaLangReflectType>)

__attribute__((unused)) static id<JavaLangReflectType> ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value);

@implementation ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper

- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)delegate
                  withJavaLangReflectType:(id<JavaLangReflectType>)type {
  ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(self, context, delegate, type);
  return self;
}

- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  return [((ComGoogleGsonTypeAdapter *) nil_chk(delegate_)) readWithComGoogleGsonStreamJsonReader:inArg];
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value {
  ComGoogleGsonTypeAdapter *chosen = delegate_;
  id<JavaLangReflectType> runtimeType = ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type_, value);
  if (runtimeType != type_) {
    ComGoogleGsonTypeAdapter *runtimeTypeAdapter = [((ComGoogleGsonGson *) nil_chk(context_)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(runtimeType)];
    if (!([runtimeTypeAdapter isKindOfClass:[ComGoogleGsonInternalBindReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = runtimeTypeAdapter;
    }
    else if (!([delegate_ isKindOfClass:[ComGoogleGsonInternalBindReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = delegate_;
    }
    else {
      chosen = runtimeTypeAdapter;
    }
  }
  [((ComGoogleGsonTypeAdapter *) nil_chk(chosen)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:value];
}

- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value {
  return ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonGson:withComGoogleGsonTypeAdapter:withJavaLangReflectType:", "TypeAdapterRuntimeTypeWrapper", NULL, 0x0, NULL, NULL },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "TT;", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonReader;)TT;" },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V" },
    { "getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:withId:", "getRuntimeTypeIfMoreSpecific", "Ljava.lang.reflect.Type;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "context_", NULL, 0x12, "Lcom.google.gson.Gson;", NULL, NULL,  },
    { "delegate_", NULL, 0x12, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TT;>;",  },
    { "type_", NULL, 0x12, "Ljava.lang.reflect.Type;", NULL, NULL,  },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper = { 2, "TypeAdapterRuntimeTypeWrapper", "com.google.gson.internal.bind", NULL, 0x10, 4, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;" };
  return &_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper;
}

@end

void ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper *self, ComGoogleGsonGson *context, ComGoogleGsonTypeAdapter *delegate, id<JavaLangReflectType> type) {
  (void) ComGoogleGsonTypeAdapter_init(self);
  self->context_ = context;
  self->delegate_ = delegate;
  self->type_ = type;
}

ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper *new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(ComGoogleGsonGson *context, ComGoogleGsonTypeAdapter *delegate, id<JavaLangReflectType> type) {
  ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper *self = [ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper alloc];
  ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(self, context, delegate, type);
  return self;
}

id<JavaLangReflectType> ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value) {
  if (value != nil && (type == NSObject_class_() || [JavaLangReflectTypeVariable_class_() isInstance:type] || [type isKindOfClass:[IOSClass class]])) {
    type = [value getClass];
  }
  return type;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper)