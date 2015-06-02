//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tway/dev/FeedRead/core/src/main/java/com/example/data/HttpUtil.java
//


#include "J2ObjC_source.h"
#include "com/example/data/HttpUtil.h"
#include "java/io/BufferedReader.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/lang/Exception.h"
#include "java/lang/StringBuilder.h"
#include "java/net/HttpURLConnection.h"
#include "java/net/MalformedURLException.h"
#include "java/net/URL.h"
#include "java/net/URLConnection.h"

@implementation ComExampleDataHttpUtil

+ (NSString *)toStringWithNSString:(NSString *)urlString {
  return ComExampleDataHttpUtil_toStringWithNSString_(urlString);
}

- (instancetype)init {
  ComExampleDataHttpUtil_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComExampleDataHttpUtil = { 2, "HttpUtil", "com.example.data", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComExampleDataHttpUtil;
}

@end

NSString *ComExampleDataHttpUtil_toStringWithNSString_(NSString *urlString) {
  ComExampleDataHttpUtil_initialize();
  JavaNetHttpURLConnection *urlConnection = nil;
  @try {
    urlConnection = (JavaNetHttpURLConnection *) check_class_cast([new_JavaNetURL_initWithNSString_(urlString) openConnection], [JavaNetHttpURLConnection class]);
    [((JavaNetHttpURLConnection *) nil_chk(urlConnection)) connect];
    jint status = [urlConnection getResponseCode];
    {
      JavaIoBufferedReader *br;
      JavaLangStringBuilder *sb;
      NSString *line;
      switch (status) {
        case 200:
        case 201:
        br = new_JavaIoBufferedReader_initWithJavaIoReader_(new_JavaIoInputStreamReader_initWithJavaIoInputStream_([urlConnection getInputStream]));
        sb = new_JavaLangStringBuilder_init();
        while ((line = [br readLine]) != nil) {
          (void) [sb appendWithNSString:JreStrcat("$C", line, 0x000a)];
        }
        [br close];
        return [sb description];
      }
    }
  }
  @catch (JavaNetMalformedURLException *e) {
    [((JavaNetMalformedURLException *) nil_chk(e)) printStackTrace];
  }
  @catch (JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
  }
  @finally {
    if (urlConnection != nil) {
      @try {
        [urlConnection disconnect];
      }
      @catch (JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
    }
  }
  return nil;
}

void ComExampleDataHttpUtil_init(ComExampleDataHttpUtil *self) {
  (void) NSObject_init(self);
}

ComExampleDataHttpUtil *new_ComExampleDataHttpUtil_init() {
  ComExampleDataHttpUtil *self = [ComExampleDataHttpUtil alloc];
  ComExampleDataHttpUtil_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComExampleDataHttpUtil)
