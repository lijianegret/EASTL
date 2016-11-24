#include "com_example_egret0_eastl_android_NativeUtils.h"
#include "EASTL/deque.h"
#include "EASTL/map.h"
#include "EASTL/set.h"
#include "EASTL/stack.h"
#include "EASTL/string.h"
#include "EASTL/vector.h"
#include <jni.h>
#include <stdio.h>

static JNIEnv* _env;
static jclass _cls;
static void java_log(const char* str)
{
    jmethodID mid = _env->GetStaticMethodID(_cls, "printLog", "(Ljava/lang/String;)V");
    jstring jstr = _env->NewStringUTF(str);
    _env->CallStaticVoidMethod(_cls, mid, jstr);
}

#ifdef __Cplusplus
extern "C"{
#endif

JNIEXPORT void JNICALL Java_com_example_egret0_eastl_1android_NativeUtils_testEASTL
    (JNIEnv* env, jclass cls)
{
    _env = env;
    _cls = cls;

    java_log("----------------------------");

    eastl::vector<int> v;
    for (int i = 0; i < 10000; i++)
    {
        v.push_back(i);
    }
    char* buffer = new char[50];
    sprintf(buffer, "===== %d", (int)v.size());
    java_log(buffer);
    delete [] buffer;

    java_log("----------------------------");

    return;
}

#ifdef __Cplusplus
};
#endif
