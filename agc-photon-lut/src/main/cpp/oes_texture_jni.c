#include <jni.h>
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>
#include <dlfcn.h>
#include <pthread.h>

typedef void (*PFNGLEGLIMAGETARGETTEXTURE2DOESPROC)(GLenum target, GLeglImageOES image);

static PFNGLEGLIMAGETARGETTEXTURE2DOESPROC s_fn = NULL;
static pthread_once_t s_once = PTHREAD_ONCE_INIT;

static void load_fn(void) {
    s_fn = (PFNGLEGLIMAGETARGETTEXTURE2DOESPROC) eglGetProcAddress("glEGLImageTargetTexture2DOES");
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_agc_EglOesBridge_nativeImageTargetTexture2DOES(
        JNIEnv *env, jclass clazz, jlong image_handle, jint target) {
    pthread_once(&s_once, load_fn);
    if (s_fn) {
        s_fn((GLenum) target, (GLeglImageOES) (intptr_t) image_handle);
    }
}
