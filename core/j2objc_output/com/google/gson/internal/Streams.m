//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:/Users/tway/dev/FeedRead/core/libs/gson-2.3.1-sources.jar!com/google/gson/internal/Streams.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonIOException.h"
#include "com/google/gson/JsonNull.h"
#include "com/google/gson/JsonParseException.h"
#include "com/google/gson/JsonSyntaxException.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/internal/Streams.h"
#include "com/google/gson/internal/bind/TypeAdapters.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonToken.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "com/google/gson/stream/MalformedJsonException.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"
#include "java/lang/Appendable.h"
#include "java/lang/CharSequence.h"
#include "java/lang/NumberFormatException.h"

@class ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite;

@interface ComGoogleGsonInternalStreams_AppendableWriter : JavaIoWriter {
 @public
  id<JavaLangAppendable> appendable_;
  ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *currentWrite_;
}

- (instancetype)initWithJavaLangAppendable:(id<JavaLangAppendable>)appendable;

- (void)writeWithCharArray:(IOSCharArray *)chars
                   withInt:(jint)offset
                   withInt:(jint)length;

- (void)writeWithInt:(jint)i;

- (void)flush;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalStreams_AppendableWriter)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalStreams_AppendableWriter, appendable_, id<JavaLangAppendable>)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalStreams_AppendableWriter, currentWrite_, ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *)

__attribute__((unused)) static void ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(ComGoogleGsonInternalStreams_AppendableWriter *self, id<JavaLangAppendable> appendable);

__attribute__((unused)) static ComGoogleGsonInternalStreams_AppendableWriter *new_ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalStreams_AppendableWriter)

@interface ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite : NSObject < JavaLangCharSequence > {
 @public
  IOSCharArray *chars_;
}

- (jint)length;

- (jchar)charAtWithInt:(jint)i;

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite, chars_, IOSCharArray *)

__attribute__((unused)) static void ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *self);

__attribute__((unused)) static ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *new_ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite)

@implementation ComGoogleGsonInternalStreams

+ (ComGoogleGsonJsonElement *)parseWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)reader {
  return ComGoogleGsonInternalStreams_parseWithComGoogleGsonStreamJsonReader_(reader);
}

+ (void)writeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element
        withComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)writer {
  ComGoogleGsonInternalStreams_writeWithComGoogleGsonJsonElement_withComGoogleGsonStreamJsonWriter_(element, writer);
}

+ (JavaIoWriter *)writerForAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)appendable {
  return ComGoogleGsonInternalStreams_writerForAppendableWithJavaLangAppendable_(appendable);
}

- (instancetype)init {
  ComGoogleGsonInternalStreams_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithComGoogleGsonStreamJsonReader:", "parse", "Lcom.google.gson.JsonElement;", 0x9, "Lcom.google.gson.JsonParseException;", NULL },
    { "writeWithComGoogleGsonJsonElement:withComGoogleGsonStreamJsonWriter:", "write", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "writerForAppendableWithJavaLangAppendable:", "writerForAppendable", "Ljava.io.Writer;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lcom.google.gson.internal.Streams$AppendableWriter;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalStreams = { 2, "Streams", "com.google.gson.internal", NULL, 0x11, 4, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ComGoogleGsonInternalStreams;
}

@end

ComGoogleGsonJsonElement *ComGoogleGsonInternalStreams_parseWithComGoogleGsonStreamJsonReader_(ComGoogleGsonStreamJsonReader *reader) {
  ComGoogleGsonInternalStreams_initialize();
  jboolean isEmpty = YES;
  @try {
    (void) [((ComGoogleGsonStreamJsonReader *) nil_chk(reader)) peek];
    isEmpty = NO;
    return [((ComGoogleGsonTypeAdapter *) nil_chk(ComGoogleGsonInternalBindTypeAdapters_get_JSON_ELEMENT_())) readWithComGoogleGsonStreamJsonReader:reader];
  }
  @catch (JavaIoEOFException *e) {
    if (isEmpty) {
      return ComGoogleGsonJsonNull_get_INSTANCE_();
    }
    @throw new_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
  @catch (ComGoogleGsonStreamMalformedJsonException *e) {
    @throw new_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
  @catch (JavaIoIOException *e) {
    @throw new_ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(e);
  }
  @catch (JavaLangNumberFormatException *e) {
    @throw new_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
}

void ComGoogleGsonInternalStreams_writeWithComGoogleGsonJsonElement_withComGoogleGsonStreamJsonWriter_(ComGoogleGsonJsonElement *element, ComGoogleGsonStreamJsonWriter *writer) {
  ComGoogleGsonInternalStreams_initialize();
  [((ComGoogleGsonTypeAdapter *) nil_chk(ComGoogleGsonInternalBindTypeAdapters_get_JSON_ELEMENT_())) writeWithComGoogleGsonStreamJsonWriter:writer withId:element];
}

JavaIoWriter *ComGoogleGsonInternalStreams_writerForAppendableWithJavaLangAppendable_(id<JavaLangAppendable> appendable) {
  ComGoogleGsonInternalStreams_initialize();
  return [appendable isKindOfClass:[JavaIoWriter class]] ? (JavaIoWriter *) check_class_cast(appendable, [JavaIoWriter class]) : new_ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(appendable);
}

void ComGoogleGsonInternalStreams_init(ComGoogleGsonInternalStreams *self) {
  (void) NSObject_init(self);
}

ComGoogleGsonInternalStreams *new_ComGoogleGsonInternalStreams_init() {
  ComGoogleGsonInternalStreams *self = [ComGoogleGsonInternalStreams alloc];
  ComGoogleGsonInternalStreams_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalStreams)

@implementation ComGoogleGsonInternalStreams_AppendableWriter

- (instancetype)initWithJavaLangAppendable:(id<JavaLangAppendable>)appendable {
  ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(self, appendable);
  return self;
}

- (void)writeWithCharArray:(IOSCharArray *)chars
                   withInt:(jint)offset
                   withInt:(jint)length {
  ((ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *) nil_chk(currentWrite_))->chars_ = chars;
  (void) [((id<JavaLangAppendable>) nil_chk(appendable_)) appendWithJavaLangCharSequence:currentWrite_ withInt:offset withInt:offset + length];
}

- (void)writeWithInt:(jint)i {
  (void) [((id<JavaLangAppendable>) nil_chk(appendable_)) appendWithChar:(jchar) i];
}

- (void)flush {
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangAppendable:", "AppendableWriter", NULL, 0x2, NULL, NULL },
    { "writeWithCharArray:withInt:withInt:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeWithInt:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "flush", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "appendable_", NULL, 0x12, "Ljava.lang.Appendable;", NULL, NULL,  },
    { "currentWrite_", NULL, 0x12, "Lcom.google.gson.internal.Streams$AppendableWriter$CurrentWrite;", NULL, NULL,  },
  };
  static const char *inner_classes[] = {"Lcom.google.gson.internal.Streams$AppendableWriter$CurrentWrite;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalStreams_AppendableWriter = { 2, "AppendableWriter", "com.google.gson.internal", "Streams", 0x1a, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ComGoogleGsonInternalStreams_AppendableWriter;
}

@end

void ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(ComGoogleGsonInternalStreams_AppendableWriter *self, id<JavaLangAppendable> appendable) {
  (void) JavaIoWriter_init(self);
  self->currentWrite_ = new_ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init();
  self->appendable_ = appendable;
}

ComGoogleGsonInternalStreams_AppendableWriter *new_ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable) {
  ComGoogleGsonInternalStreams_AppendableWriter *self = [ComGoogleGsonInternalStreams_AppendableWriter alloc];
  ComGoogleGsonInternalStreams_AppendableWriter_initWithJavaLangAppendable_(self, appendable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalStreams_AppendableWriter)

@implementation ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite

- (jint)length {
  return ((IOSCharArray *) nil_chk(chars_))->size_;
}

- (jchar)charAtWithInt:(jint)i {
  return IOSCharArray_Get(nil_chk(chars_), i);
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  return [NSString stringWithCharacters:chars_ offset:start length:end - start];
}

- (instancetype)init {
  ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "charAtWithInt:", "charAt", "C", 0x1, NULL, NULL },
    { "subSequenceFrom:to:", "subSequence", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "chars_", NULL, 0x0, "[C", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite = { 2, "CurrentWrite", "com.google.gson.internal", "Streams$AppendableWriter", 0x8, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite;
}

@end

void ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *self) {
  (void) NSObject_init(self);
}

ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *new_ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init() {
  ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite *self = [ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite alloc];
  ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalStreams_AppendableWriter_CurrentWrite)
