package com.hinnka.mycamera.previewhook.api

import java.util.function.Consumer

class MgcNoOpConsumer : Consumer<Any?> {
    override fun accept(t: Any?) = Unit
}
