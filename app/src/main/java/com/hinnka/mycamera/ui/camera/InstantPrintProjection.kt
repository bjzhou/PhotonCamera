package com.hinnka.mycamera.ui.camera

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import kotlin.math.cos
import kotlin.math.sin

/** Screen-space projection of paper tilted toward the viewer below the roller hinge. */
internal data class InstantPrintProjection(
    val topLeft: Offset,
    val topRight: Offset,
    val bottomRight: Offset,
    val bottomLeft: Offset
) {
    val corners: List<Offset> get() = listOf(topLeft, topRight, bottomRight, bottomLeft)

    fun contains(point: Offset): Boolean {
        val vertices = corners
        return vertices.indices.all { index ->
            val start = vertices[index]
            val end = vertices[(index + 1) % vertices.size]
            (end.x - start.x) * (point.y - start.y) -
                (end.y - start.y) * (point.x - start.x) >= 0f
        }
    }
}

internal fun projectInstantPrint(
    bounds: Rect,
    hingeY: Float,
    tiltDegrees: Float,
    cameraDistance: Float
): InstantPrintProjection {
    val radians = Math.toRadians(tiltDegrees.toDouble()).toFloat()
    val sine = sin(radians)
    val cosine = cos(radians)
    fun project(x: Float, y: Float): Offset {
        val distanceFromHinge = y - hingeY
        val depth = distanceFromHinge * sine
        require(cameraDistance > depth) { "The paper must stay behind the projection camera" }
        val scale = cameraDistance / (cameraDistance - depth)
        return Offset(
            bounds.center.x + (x - bounds.center.x) * scale,
            hingeY + distanceFromHinge * cosine * scale
        )
    }
    return InstantPrintProjection(
        topLeft = project(bounds.left, bounds.top),
        topRight = project(bounds.right, bounds.top),
        bottomRight = project(bounds.right, bounds.bottom),
        bottomLeft = project(bounds.left, bounds.bottom)
    )
}
