package com.hinnka.mycamera.lut

import android.opengl.Matrix
import kotlin.math.abs

/** Retains the cardinal OES orientation for the delayed ImageReader output presentation. */
internal class MgcEisPresentationTransform {
    val matrix = FloatArray(16).also { Matrix.setIdentityM(it, 0) }
    private var captured = false

    /**
     * Captures the configured stream orientation once. Camera2 may update the
     * OES crop every frame, whereas its cardinal orientation is a stream
     * property; freezing it prevents producer-buffer state from leaking into
     * MGC's independent 2D texture.
     */
    fun captureFromOes(oesMatrix: FloatArray): Boolean {
        if (captured) return true
        if (oesMatrix.size < 16) return false

        val uAlongX = abs(oesMatrix[0]) >= abs(oesMatrix[1])
        val vAlongX = abs(oesMatrix[4]) >= abs(oesMatrix[5])
        val uMagnitude = maxOf(abs(oesMatrix[0]), abs(oesMatrix[1]))
        val vMagnitude = maxOf(abs(oesMatrix[4]), abs(oesMatrix[5]))
        if (uAlongX == vAlongX || uMagnitude < 0.5f || vMagnitude < 0.5f) {
            return false
        }

        Matrix.setIdentityM(matrix, 0)
        if (!uAlongX) {
            // The OES transform is a cardinal 90° rotation. Convert its
            // bottom-left OES origin to the regular 2D texture's orientation.
            // setIdentityM() leaves m00/m11 as one; they must be cleared
            // before installing the off-diagonal cardinal rotation. Leaving
            // them in place produces a rotation-plus-shear matrix.
            matrix[0] = 0f
            matrix[5] = 0f
            matrix[4] = if (oesMatrix[4] >= 0f) 1f else -1f
            matrix[1] = if (oesMatrix[1] >= 0f) -1f else 1f
            matrix[12] = if (oesMatrix[4] >= 0f) 0f else 1f
            matrix[13] = if (oesMatrix[1] >= 0f) 1f else 0f
        } else {
            matrix[0] = if (oesMatrix[0] >= 0f) 1f else -1f
            matrix[5] = if (oesMatrix[5] >= 0f) -1f else 1f
            matrix[12] = if (oesMatrix[0] >= 0f) 0f else 1f
            matrix[13] = if (oesMatrix[5] >= 0f) 1f else 0f
        }
        captured = true
        return true
    }

    fun reset() {
        Matrix.setIdentityM(matrix, 0)
        captured = false
    }
}
