package com.hinnka.mycamera.utils

import java.nio.ByteBuffer

object DirectBufferAllocator {
    init {
        System.loadLibrary("my-native-lib")
    }

    /**
     * 申请大容量 native 内存并包装为 DirectByteBuffer，突破 dalvik 512MB 限制
     * capacity 必须小于 Int.MAX_VALUE (2GB)
     */
    external fun allocateNative(capacity: Long): ByteBuffer?

    /**
     * 释放由 allocateNative 分配的内存
     */
    external fun freeNative(buffer: ByteBuffer)
}
