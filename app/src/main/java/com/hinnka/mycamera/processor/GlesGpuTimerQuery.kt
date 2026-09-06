package com.hinnka.mycamera.processor

/** Thin optional bridge for GL_EXT_disjoint_timer_query on the current EGL context. */
internal object GlesGpuTimerQuery {
    init {
        System.loadLibrary("my-native-lib")
    }

    /** Returns the timer counter width, or 0 when the extension is unavailable. */
    external fun counterBits(): Int

    /** Begins a non-blocking elapsed-time query and returns its id, or 0 when unavailable. */
    external fun begin(): Int

    /** Ends the active elapsed-time query, if any. */
    external fun end()

    /** Returns elapsed nanoseconds, or -1 while the query is unavailable/not ready. */
    external fun poll(query: Int): Long

    /** Returns the current GPU disjoint flag. */
    external fun isDisjoint(): Boolean

    /** Deletes a query object. */
    external fun delete(query: Int)
}
