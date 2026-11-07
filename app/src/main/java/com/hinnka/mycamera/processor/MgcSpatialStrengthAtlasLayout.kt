package com.hinnka.mycamera.processor

/**
 * Packs equally sized diagnostic planes into a 2D texture without changing their logical
 * plane-major order. The GPU readback path removes the atlas padding before handing the data
 * to the lifted Spatial strength kernels.
 */
internal data class MgcSpatialStrengthAtlasLayout(
    val planeWidth: Int,
    val planeHeight: Int,
    val planeCount: Int,
    val columns: Int,
) {
    val rows: Int = ceilDivPositive(planeCount, columns)
    val atlasWidth: Int = planeWidth * columns
    val atlasHeight: Int = planeHeight * rows
    val planeValueCount: Long = planeWidth.toLong() * planeHeight
    val logicalValueCount: Long = planeValueCount * planeCount

    fun originX(planeIndex: Int): Int {
        require(planeIndex in 0 until planeCount)
        return (planeIndex % columns) * planeWidth
    }

    fun originY(planeIndex: Int): Int {
        require(planeIndex in 0 until planeCount)
        return (planeIndex / columns) * planeHeight
    }
}

internal fun createMgcSpatialStrengthAtlasLayout(
    planeWidth: Int,
    planeHeight: Int,
    planeCount: Int,
    maximumTextureSize: Int,
): MgcSpatialStrengthAtlasLayout {
    require(planeWidth > 0 && planeHeight > 0 && planeCount > 0)
    require(maximumTextureSize > 0)
    require(planeWidth <= maximumTextureSize && planeHeight <= maximumTextureSize) {
        "MGC Spatial strength plane ${planeWidth}x$planeHeight exceeds " +
            "GL_MAX_TEXTURE_SIZE=$maximumTextureSize"
    }
    val maximumColumns = maximumTextureSize / planeWidth
    val maximumRows = maximumTextureSize / planeHeight
    require(planeCount.toLong() <= maximumColumns.toLong() * maximumRows) {
        "MGC Spatial strength atlas cannot fit $planeCount planes of " +
            "${planeWidth}x$planeHeight within GL_MAX_TEXTURE_SIZE=$maximumTextureSize"
    }

    // Keep the old single-column layout whenever possible, then add only as many columns as
    // required by the height limit. This minimizes horizontal growth.
    val columns = ceilDivPositive(planeCount, maximumRows)
    return MgcSpatialStrengthAtlasLayout(
        planeWidth = planeWidth,
        planeHeight = planeHeight,
        planeCount = planeCount,
        columns = columns,
    ).also { layout ->
        check(layout.columns <= maximumColumns)
        check(layout.atlasWidth <= maximumTextureSize)
        check(layout.atlasHeight <= maximumTextureSize)
    }
}

internal data class MgcSpatialStrengthPackDispatch(
    val groupsX: Int,
    val groupsY: Int,
)

internal fun createMgcSpatialStrengthPackDispatch(
    invocationCount: Long,
    localSize: Int,
    maximumGroupsX: Int,
    maximumGroupsY: Int,
): MgcSpatialStrengthPackDispatch {
    require(invocationCount > 0L)
    require(localSize > 0 && maximumGroupsX > 0 && maximumGroupsY > 0)
    val totalGroups = ceilDivPositive(invocationCount, localSize.toLong())
    require(totalGroups <= maximumGroupsX.toLong() * maximumGroupsY) {
        "MGC Spatial strength pack requires $totalGroups work groups, device supports " +
            "${maximumGroupsX}x$maximumGroupsY"
    }
    val groupsX = minOf(totalGroups, maximumGroupsX.toLong()).toInt()
    return MgcSpatialStrengthPackDispatch(
        groupsX = groupsX,
        groupsY = ceilDivPositive(totalGroups, groupsX.toLong()).toInt(),
    )
}

private fun ceilDivPositive(value: Int, divisor: Int): Int =
    ((value.toLong() + divisor - 1L) / divisor).toInt()

private fun ceilDivPositive(value: Long, divisor: Long): Long =
    (value + divisor - 1L) / divisor
