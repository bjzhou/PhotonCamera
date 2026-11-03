// Pixel-unpack fallback of RawFloatTextureTransfer.upload.
#include <GLES3/gl3.h>
#include <jni.h>

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawFloatTextureTransfer_nativeUpload(
    JNIEnv *, jobject, jint pbo, jint texture, jint width, jint height) {
  if (pbo <= 0 || texture <= 0 || width <= 0 || height <= 0)
    return JNI_FALSE;
  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, static_cast<GLuint>(texture));
  glBindBuffer(GL_PIXEL_UNPACK_BUFFER, static_cast<GLuint>(pbo));
  glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
  glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, width, height, GL_RGBA,
                  GL_FLOAT, nullptr);
  const GLenum error = glGetError();
  glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
  return error == GL_NO_ERROR ? JNI_TRUE : JNI_FALSE;
}
