//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/$Gson$Types.java
//

#ifndef _ComGoogleGsonInternal$Gson$Types_H_
#define _ComGoogleGsonInternal$Gson$Types_H_

#include "J2ObjC_header.h"

@class IOSClass;
@class IOSObjectArray;
@protocol JavaLangReflectGenericArrayType;
@protocol JavaLangReflectParameterizedType;
@protocol JavaLangReflectType;
@protocol JavaLangReflectTypeVariable;
@protocol JavaLangReflectWildcardType;

@interface ComGoogleGsonInternal$Gson$Types : NSObject

#pragma mark Public

+ (id<JavaLangReflectGenericArrayType>)arrayOfWithJavaLangReflectType:(id<JavaLangReflectType>)componentType;

+ (id<JavaLangReflectType>)canonicalizeWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (jboolean)equalsWithJavaLangReflectType:(id<JavaLangReflectType>)a
                  withJavaLangReflectType:(id<JavaLangReflectType>)b;

+ (id<JavaLangReflectType>)getArrayComponentTypeWithJavaLangReflectType:(id<JavaLangReflectType>)array;

+ (id<JavaLangReflectType>)getCollectionElementTypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                              withIOSClass:(IOSClass *)contextRawType;

+ (IOSObjectArray *)getMapKeyAndValueTypesWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                     withIOSClass:(IOSClass *)contextRawType;

+ (IOSClass *)getRawTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (id<JavaLangReflectParameterizedType>)newParameterizedTypeWithOwnerWithJavaLangReflectType:(id<JavaLangReflectType>)ownerType
                                                                     withJavaLangReflectType:(id<JavaLangReflectType>)rawType
                                                                withJavaLangReflectTypeArray:(IOSObjectArray *)typeArguments OBJC_METHOD_FAMILY_NONE;

+ (id<JavaLangReflectType>)resolveWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                             withIOSClass:(IOSClass *)contextRawType
                                  withJavaLangReflectType:(id<JavaLangReflectType>)toResolve;

+ (id<JavaLangReflectWildcardType>)subtypeOfWithJavaLangReflectType:(id<JavaLangReflectType>)bound;

+ (id<JavaLangReflectWildcardType>)supertypeOfWithJavaLangReflectType:(id<JavaLangReflectType>)bound;

+ (NSString *)typeToStringWithJavaLangReflectType:(id<JavaLangReflectType>)type;

#pragma mark Package-Private

+ (jboolean)equalWithId:(id)a
                 withId:(id)b;

+ (id<JavaLangReflectType>)getGenericSupertypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                         withIOSClass:(IOSClass *)rawType
                                                         withIOSClass:(IOSClass *)toResolve;

+ (id<JavaLangReflectType>)getSupertypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                  withIOSClass:(IOSClass *)contextRawType
                                                  withIOSClass:(IOSClass *)supertype;

+ (id<JavaLangReflectType>)resolveTypeVariableWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                         withIOSClass:(IOSClass *)contextRawType
                                      withJavaLangReflectTypeVariable:(id<JavaLangReflectTypeVariable>)unknown;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonInternal$Gson$Types)

FOUNDATION_EXPORT IOSObjectArray *ComGoogleGsonInternal$Gson$Types_EMPTY_TYPE_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleGsonInternal$Gson$Types, EMPTY_TYPE_ARRAY_, IOSObjectArray *)

FOUNDATION_EXPORT id<JavaLangReflectParameterizedType> ComGoogleGsonInternal$Gson$Types_newParameterizedTypeWithOwnerWithJavaLangReflectType_withJavaLangReflectType_withJavaLangReflectTypeArray_(id<JavaLangReflectType> ownerType, id<JavaLangReflectType> rawType, IOSObjectArray *typeArguments);

FOUNDATION_EXPORT id<JavaLangReflectGenericArrayType> ComGoogleGsonInternal$Gson$Types_arrayOfWithJavaLangReflectType_(id<JavaLangReflectType> componentType);

FOUNDATION_EXPORT id<JavaLangReflectWildcardType> ComGoogleGsonInternal$Gson$Types_subtypeOfWithJavaLangReflectType_(id<JavaLangReflectType> bound);

FOUNDATION_EXPORT id<JavaLangReflectWildcardType> ComGoogleGsonInternal$Gson$Types_supertypeOfWithJavaLangReflectType_(id<JavaLangReflectType> bound);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_canonicalizeWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT IOSClass *ComGoogleGsonInternal$Gson$Types_getRawTypeWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT jboolean ComGoogleGsonInternal$Gson$Types_equalWithId_withId_(id a, id b);

FOUNDATION_EXPORT jboolean ComGoogleGsonInternal$Gson$Types_equalsWithJavaLangReflectType_withJavaLangReflectType_(id<JavaLangReflectType> a, id<JavaLangReflectType> b);

FOUNDATION_EXPORT NSString *ComGoogleGsonInternal$Gson$Types_typeToStringWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_getGenericSupertypeWithJavaLangReflectType_withIOSClass_withIOSClass_(id<JavaLangReflectType> context, IOSClass *rawType, IOSClass *toResolve);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_getSupertypeWithJavaLangReflectType_withIOSClass_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType, IOSClass *supertype);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_getArrayComponentTypeWithJavaLangReflectType_(id<JavaLangReflectType> array);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_getCollectionElementTypeWithJavaLangReflectType_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType);

FOUNDATION_EXPORT IOSObjectArray *ComGoogleGsonInternal$Gson$Types_getMapKeyAndValueTypesWithJavaLangReflectType_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_resolveWithJavaLangReflectType_withIOSClass_withJavaLangReflectType_(id<JavaLangReflectType> context, IOSClass *contextRawType, id<JavaLangReflectType> toResolve);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal$Gson$Types_resolveTypeVariableWithJavaLangReflectType_withIOSClass_withJavaLangReflectTypeVariable_(id<JavaLangReflectType> context, IOSClass *contextRawType, id<JavaLangReflectTypeVariable> unknown);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternal$Gson$Types)

#endif // _ComGoogleGsonInternal$Gson$Types_H_
