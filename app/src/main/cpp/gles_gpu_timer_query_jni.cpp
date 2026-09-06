#include <jni.h>

#include <EGL/egl.h>
#include <GLES3/gl31.h>

#include <cstring>

namespace {
constexpr GLenum kTimeElapsedExt = 0x88BF;
constexpr GLenum kQueryCounterBitsExt = 0x8864;
constexpr GLenum kQueryResultExt = 0x8866;
constexpr GLenum kQueryResultAvailableExt = 0x8867;
constexpr GLenum kGpuDisjointExt = 0x8FBB;

using GenQueriesFn = void (*)(GLsizei, GLuint*);
using DeleteQueriesFn = void (*)(GLsizei, const GLuint*);
using BeginQueryFn = void (*)(GLenum, GLuint);
using EndQueryFn = void (*)(GLenum);
using GetQueryivFn = void (*)(GLenum, GLenum, GLint*);
using GetQueryObjectivFn = void (*)(GLuint, GLenum, GLint*);
using GetQueryObjectui64vFn = void (*)(GLuint, GLenum, GLuint64*);

thread_local GenQueriesFn genQueries = nullptr;
thread_local DeleteQueriesFn deleteQueries = nullptr;
thread_local BeginQueryFn beginQuery = nullptr;
thread_local EndQueryFn endQuery = nullptr;
thread_local GetQueryivFn getQueryiv = nullptr;
thread_local GetQueryObjectivFn getQueryObjectiv = nullptr;
thread_local GetQueryObjectui64vFn getQueryObjectui64v = nullptr;
thread_local EGLContext resolvedContext = EGL_NO_CONTEXT;
thread_local bool resolved = false;
thread_local bool timerAvailable = false;
thread_local GLuint activeQuery = 0;

template <typename T>
T resolve(const char* extName, const char* coreName) {
    auto* address = eglGetProcAddress(extName);
    if (address == nullptr && coreName != nullptr) address = eglGetProcAddress(coreName);
    return reinterpret_cast<T>(address);
}

bool hasTimerExtension() {
    GLint count = 0;
    glGetIntegerv(GL_NUM_EXTENSIONS, &count);
    for (GLint i = 0; i < count; ++i) {
        const auto* extension = reinterpret_cast<const char*>(glGetStringi(GL_EXTENSIONS, i));
        if (extension != nullptr && std::strcmp(extension, "GL_EXT_disjoint_timer_query") == 0) {
            return true;
        }
    }
    return false;
}

bool resolveTimerFunctions() {
    // Proc addresses and extension strings are context-dependent. Do not poison
    // the process singleton when a caller probes before making an EGL context current.
    const EGLContext context = eglGetCurrentContext();
    if (context == EGL_NO_CONTEXT) return false;
    if (resolved && resolvedContext == context) return timerAvailable;
    resolvedContext = context;
    resolved = true;
    timerAvailable = false;
    genQueries = nullptr;
    deleteQueries = nullptr;
    beginQuery = nullptr;
    endQuery = nullptr;
    getQueryiv = nullptr;
    getQueryObjectiv = nullptr;
    getQueryObjectui64v = nullptr;
    activeQuery = 0;
    if (!hasTimerExtension()) return false;
    genQueries = resolve<GenQueriesFn>("glGenQueriesEXT", "glGenQueries");
    deleteQueries = resolve<DeleteQueriesFn>("glDeleteQueriesEXT", "glDeleteQueries");
    beginQuery = resolve<BeginQueryFn>("glBeginQueryEXT", "glBeginQuery");
    endQuery = resolve<EndQueryFn>("glEndQueryEXT", "glEndQuery");
    getQueryiv = resolve<GetQueryivFn>("glGetQueryivEXT", "glGetQueryiv");
    getQueryObjectiv = resolve<GetQueryObjectivFn>("glGetQueryObjectivEXT", "glGetQueryObjectiv");
    getQueryObjectui64v = resolve<GetQueryObjectui64vFn>("glGetQueryObjectui64vEXT", "glGetQueryObjectui64v");
    timerAvailable = genQueries != nullptr && deleteQueries != nullptr && beginQuery != nullptr &&
        endQuery != nullptr && getQueryiv != nullptr && getQueryObjectiv != nullptr &&
        getQueryObjectui64v != nullptr;
    return timerAvailable;
}
}  // namespace

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_counterBits(JNIEnv*, jobject) {
    if (!resolveTimerFunctions()) return 0;
    GLint bits = 0;
    getQueryiv(kTimeElapsedExt, kQueryCounterBitsExt, &bits);
    return bits > 0 ? bits : 0;
}

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_begin(JNIEnv*, jobject) {
    if (!resolveTimerFunctions() || activeQuery != 0) return 0;
    GLuint query = 0;
    genQueries(1, &query);
    if (query == 0) return 0;
    beginQuery(kTimeElapsedExt, query);
    activeQuery = query;
    return static_cast<jint>(query);
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_end(JNIEnv*, jobject) {
    if (activeQuery == 0 || !resolveTimerFunctions()) return;
    endQuery(kTimeElapsedExt);
    activeQuery = 0;
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_poll(JNIEnv*, jobject, jint query) {
    if (query <= 0 || !resolveTimerFunctions()) return -1;
    GLint available = GL_FALSE;
    getQueryObjectiv(static_cast<GLuint>(query), kQueryResultAvailableExt, &available);
    if (available == GL_FALSE) return -1;
    GLuint64 elapsed = 0;
    getQueryObjectui64v(static_cast<GLuint>(query), kQueryResultExt, &elapsed);
    return static_cast<jlong>(elapsed);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_isDisjoint(JNIEnv*, jobject) {
    if (!resolveTimerFunctions()) return JNI_FALSE;
    GLboolean disjoint = GL_FALSE;
    glGetBooleanv(kGpuDisjointExt, &disjoint);
    return disjoint == GL_TRUE ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_GlesGpuTimerQuery_delete(JNIEnv*, jobject, jint query) {
    if (query <= 0 || !resolveTimerFunctions()) return;
    const GLuint id = static_cast<GLuint>(query);
    if (activeQuery == id) {
        endQuery(kTimeElapsedExt);
        activeQuery = 0;
    }
    deleteQueries(1, &id);
}
