//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/Shelf/shelf/src/main/java/com/toddway/shelf/FileStorage.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/toddway/shelf/FileStorage.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/BufferedOutputStream.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/ObjectInput.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutput.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Exception.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

NSString *ComToddwayShelfFileStorage_EXT_ = @".obj";

@implementation ComToddwayShelfFileStorage

- (instancetype)initWithJavaIoFile:(JavaIoFile *)dir {
  ComToddwayShelfFileStorage_initWithJavaIoFile_(self, dir);
  return self;
}

- (JavaIoFile *)fileWithNSString:(NSString *)key {
  return new_JavaIoFile_initWithJavaIoFile_withNSString_(dir_, JreStrcat("$$", key, ComToddwayShelfFileStorage_EXT_));
}

- (id)getWithNSString:(NSString *)key
         withIOSClass:(IOSClass *)type {
  if (![((JavaIoFile *) nil_chk([self fileWithNSString:key])) exists]) return nil;
  return [self deserializeWithJavaIoFile:[self fileWithNSString:key] withIOSClass:type];
}

- (id<JavaUtilList>)getListWithNSString:(NSString *)key
                           withIOSClass:(IOSClass *)type {
  if (![((JavaIoFile *) nil_chk([self fileWithNSString:key])) exists]) return nil;
  return [self deserializeListWithJavaIoFile:[self fileWithNSString:key] withIOSClass:type];
}

- (void)putWithNSString:(NSString *)key
                 withId:(id)value {
  @synchronized(self) {
    [self serializeWithJavaIoFile:[self fileWithNSString:key] withId:value];
  }
}

- (jboolean)delete__WithNSString:(NSString *)key {
  return [((JavaIoFile *) nil_chk([self fileWithNSString:key])) delete__];
}

- (jboolean)containsWithNSString:(NSString *)key {
  return [((JavaIoFile *) nil_chk([self fileWithNSString:key])) exists];
}

- (jlong)lastModifiedWithNSString:(NSString *)key {
  return [((JavaIoFile *) nil_chk([self fileWithNSString:key])) lastModified];
}

- (id<JavaUtilList>)keysWithNSString:(NSString *)prefix {
  IOSObjectArray *files = [((JavaIoFile *) nil_chk(dir_)) listFiles];
  id<JavaUtilList> keys = new_JavaUtilArrayList_init();
  for (jint f = 0; f < ((IOSObjectArray *) nil_chk(files))->size_; f++) {
    NSString *filename = [((JavaIoFile *) nil_chk(IOSObjectArray_Get(files, f))) getName];
    jint doxIndex = [((NSString *) nil_chk(filename)) lastIndexOfString:@"."];
    if ([filename hasPrefix:prefix] && doxIndex > 0) {
      [keys addWithId:[filename substring:0 endIndex:doxIndex]];
    }
  }
  return keys;
}

- (id)deserializeWithJavaIoFile:(JavaIoFile *)file
                   withIOSClass:(IOSClass *)type {
  @try {
    id<JavaIoObjectInput> input = new_JavaIoObjectInputStream_initWithJavaIoInputStream_(new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(new_JavaIoFileInputStream_initWithJavaIoFile_(file)));
    return [((IOSClass *) nil_chk(type)) cast:[input readObject]];
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  return nil;
}

- (void)serializeWithJavaIoFile:(JavaIoFile *)file
                         withId:(id)object {
  @try {
    id<JavaIoObjectOutput> output = new_JavaIoObjectOutputStream_initWithJavaIoOutputStream_(new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(new_JavaIoFileOutputStream_initWithJavaIoFile_(file)));
    [output writeObjectWithId:object];
    [output close];
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

- (id<JavaUtilList>)deserializeListWithJavaIoFile:(JavaIoFile *)file
                                     withIOSClass:(IOSClass *)type {
  return [self deserializeWithJavaIoFile:file withIOSClass:JavaUtilList_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoFile:", "FileStorage", NULL, 0x1, NULL, NULL },
    { "fileWithNSString:", "file", "Ljava.io.File;", 0x4, NULL, NULL },
    { "getWithNSString:withIOSClass:", "get", "TT;", 0x1, NULL, "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;" },
    { "getListWithNSString:withIOSClass:", "getList", "Ljava.util.List;", 0x1, NULL, "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;" },
    { "putWithNSString:withId:", "put", "V", 0x21, NULL, "<T:Ljava/lang/Object;>(Ljava/lang/String;TT;)V" },
    { "delete__WithNSString:", "delete", "Z", 0x1, NULL, NULL },
    { "containsWithNSString:", "contains", "Z", 0x1, NULL, NULL },
    { "lastModifiedWithNSString:", "lastModified", "J", 0x1, NULL, NULL },
    { "keysWithNSString:", "keys", "Ljava.util.List;", 0x1, NULL, NULL },
    { "deserializeWithJavaIoFile:withIOSClass:", "deserialize", "TT;", 0x4, NULL, "<T:Ljava/lang/Object;>(Ljava/io/File;Ljava/lang/Class<TT;>;)TT;" },
    { "serializeWithJavaIoFile:withId:", "serialize", "V", 0x4, NULL, "<T:Ljava/lang/Object;>(Ljava/io/File;TT;)V" },
    { "deserializeListWithJavaIoFile:withIOSClass:", "deserializeList", "Ljava.util.List;", 0x4, NULL, "<T:Ljava/lang/Object;>(Ljava/io/File;Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dir_", NULL, 0x0, "Ljava.io.File;", NULL, NULL,  },
    { "EXT_", NULL, 0x8, "Ljava.lang.String;", &ComToddwayShelfFileStorage_EXT_, NULL,  },
  };
  static const J2ObjcClassInfo _ComToddwayShelfFileStorage = { 2, "FileStorage", "com.toddway.shelf", NULL, 0x1, 12, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComToddwayShelfFileStorage;
}

@end

void ComToddwayShelfFileStorage_initWithJavaIoFile_(ComToddwayShelfFileStorage *self, JavaIoFile *dir) {
  (void) NSObject_init(self);
  self->dir_ = dir;
  [((JavaIoFile *) nil_chk(dir)) mkdir];
}

ComToddwayShelfFileStorage *new_ComToddwayShelfFileStorage_initWithJavaIoFile_(JavaIoFile *dir) {
  ComToddwayShelfFileStorage *self = [ComToddwayShelfFileStorage alloc];
  ComToddwayShelfFileStorage_initWithJavaIoFile_(self, dir);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComToddwayShelfFileStorage)
