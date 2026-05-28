package com.hinnka.mycamera.agc

import android.hardware.HardwareBuffer
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams

/**
 * 历史 HardwareBuffer 预览渲染处理器（已废弃）。
 * 现已全面升级为 Surface 代理渲染管线方案，此处仅做 passthrough 保留以兼容可能存在的外部依赖。
 */
object PhotonPreviewRenderer {
    fun render(
        buffer: HardwareBuffer,
        lutConfig: LutConfig?,
        recipeParams: ColorRecipeParams?
    ): HardwareBuffer {
        return buffer
    }
}
