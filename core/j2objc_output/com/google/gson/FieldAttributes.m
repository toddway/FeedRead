//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/FieldAttributes.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/FieldAttributes.h"
#include "com/google/gson/internal/$Gson$Preconditions.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/List.h"

@interface ComGoogleGsonFieldAttributes () {
 @public
  JavaLangReflectField *field_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonFieldAttributes, field_, JavaLangReflectField *)

@implementation ComGoogleGsonFieldAttributes

- (instancetype)initWithJavaLangReflectField:(JavaLangReflectField *)f {
  ComGoogleGsonFieldAttributes_initWithJavaLangReflectField_(self, f);
  return self;
}

- (IOSClass *)getDeclaringClass {
  return [((JavaLangReflectField *) nil_chk(field_)) getDeclaringClass];
}

- (NSString *)getName {
  return [((JavaLangReflectField *) nil_chk(field_)) getName];
}

- (id<JavaLangReflectType>)getDeclaredType {
  return [((JavaLangReflectField *) nil_chk(field_)) getGenericType];
}

- (IOSClass *)getDeclaredClass {
  return [((JavaLangReflectField *) nil_chk(field_)) getType];
}

- (id)getAnnotationWithIOSClass:(IOSClass *)annotation {
  return [((JavaLangReflectField *) nil_chk(field_)) getAnnotationWithIOSClass:annotation];
}

- (id<JavaUtilCollection>)getAnnotations {
  return JavaUtilArrays_asListWithNSObjectArray_([((JavaLangReflectField *) nil_chk(field_)) getAnnotations]);
}

- (jboolean)hasModifierWithInt:(jint)modifier {
  return ([((JavaLangReflectField *) nil_chk(field_)) getModifiers] & modifier) != 0;
}

- (id)getWithId:(id)instance {
  return [((JavaLangReflectField *) nil_chk(field_)) getWithId:instance];
}

- (jboolean)isSynthetic {
  return [((JavaLangReflectField *) nil_chk(field_)) isSynthetic];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangReflectField:", "FieldAttributes", NULL, 0x1, NULL, NULL },
    { "getDeclaringClass", NULL, "Ljava.lang.Class;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDeclaredType", NULL, "Ljava.lang.reflect.Type;", 0x1, NULL, NULL },
    { "getDeclaredClass", NULL, "Ljava.lang.Class;", 0x1, NULL, NULL },
    { "getAnnotationWithIOSClass:", "getAnnotation", "TT;", 0x1, NULL, "<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TT;>;)TT;" },
    { "getAnnotations", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "hasModifierWithInt:", "hasModifier", "Z", 0x1, NULL, NULL },
    { "getWithId:", "get", "Ljava.lang.Object;", 0x0, "Ljava.lang.IllegalAccessException;", NULL },
    { "isSynthetic", NULL, "Z", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.reflect.Field;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComGoogleGsonFieldAttributes = { 2, "FieldAttributes", "com.google.gson", NULL, 0x11, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonFieldAttributes;
}

@end

void ComGoogleGsonFieldAttributes_initWithJavaLangReflectField_(ComGoogleGsonFieldAttributes *self, JavaLangReflectField *f) {
  (void) NSObject_init(self);
  (void) ComGoogleGsonInternal$Gson$Preconditions_checkNotNullWithId_(f);
  self->field_ = f;
}

ComGoogleGsonFieldAttributes *new_ComGoogleGsonFieldAttributes_initWithJavaLangReflectField_(JavaLangReflectField *f) {
  ComGoogleGsonFieldAttributes *self = [ComGoogleGsonFieldAttributes alloc];
  ComGoogleGsonFieldAttributes_initWithJavaLangReflectField_(self, f);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonFieldAttributes)
