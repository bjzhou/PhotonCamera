package com.hinnka.mycamera.color

import kotlin.math.log10
import kotlin.math.ln
import kotlin.math.pow

/**
 * 统一的传递曲线定义，供 LUT、RAW 与视频链路共享。
 *
 * 注意：
 * - `storageId` 用于 .plut / native 重采样等持久化与跨端传输，不能依赖 enum ordinal。
 * - `shaderId` 用于 GLSL uniform 编码，可与 storageId 不同。
 */
enum class TransferCurve(
    val storageId: Int,
    val shaderId: Int,
    val a: Float,
    val b: Float,
    val c: Float,
    val d: Float,
    val e: Float,
    val f: Float,
    val cut1: Float,
    val cut2: Float,
    val middleGray: Float,
    val maxLinear: Float,
    val type: Int = 0
) {
    SRGB(
        0, 0,
        1.055f, -0.055f, 0.41666667f, 0.0f, 12.92f, 0.0f,
        0.0031308f, 0.04045f, 0.46135f, 1.0f, 2
    ),
    LINEAR(
        1, 1,
        1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f,
        1_000_000.0f, 1_000_000.0f, 0.18f, 1.0f, 0
    ),
    VLOG(
        2, 2,
        1.0f, 0.00873f, 0.241514f, 0.598206f, 5.6f, 0.125f,
        0.01f, 0.181f, 0.4233f, 46.08f, 0
    ),
    SLOG3(
        3, 3,
        5.263158f, 0.052632f, 0.255621f, 0.410557f, 6.621944f, 0.092864f,
        0.01125f, 0.167361f, 0.410557f, 38.42f, 0
    ),
    FLOG2(
        4, 4,
        5.555556f, 0.064829f, 0.245281f, 0.384316f, 8.799461f, 0.092864f,
        0.000889f, 0.100686685f, 0.391f, 58.28f, 0
    ),
    APPLE_LOG(
        6, 6,
        1.0f, 0.00964052f, 0.2840422f, 0.69336945f, 47.28711236f, -0.05641088f,
        0.01f, 0.20855365f, 0.49f, 12.03f, 1
    ),
    HLG(
        7, 7,
        0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
        1.0f / 12.0f, 0.5f, 0.672358f, 12.0f, 3
    ),
    ACES_CCT(
        8, 8,
        1.0f, 0.0f, 0.18955931f, 0.5547945f, 10.540237f, 0.072905536f,
        0.0078125f, 0.15525114f, 0.4136f, 222.8609f, 0
    ),
    LOG3G10(
        10, 9,
        155.975327f, 2.5597532f, 0.224282f, 0.0f, 15.1927f, 0.151927f,
        -0.01f, 0.0f, 1.0f / 3.0f, 184.32f, 0
    ),
    LOGC4(
        5, 5,
        2231.8263f, 64.0f, 0.21524584f, -0.29590839f, 8.80302f, 0.158957f,
        -0.018057f, 0.0f, 0.2784f, 469.8f, 0
    ),
    LLOG(
        11, 10,
        1.3f, 0.0115f, 0.27f, 0.6f, 8.0f, 0.09f,
        0.006f, 0.138f, 0.4353139f, 23.3f, 0
    );

    val isLog: Boolean
        get() = this !in setOf(SRGB, LINEAR, HLG)

    fun linearToLog(reflection: Float): Float {
        if (this == LINEAR) return reflection
        if (this == HLG) {
            val linear = reflection.coerceIn(0f, 1f)
            val hlgA = 0.17883277f
            val hlgB = 1f - 4f * hlgA
            val hlgC = 0.5f - hlgA * ln(4f * hlgA)
            return if (linear <= 1f / 12f) {
                kotlin.math.sqrt(3f * linear)
            } else {
                hlgA * ln(12f * linear - hlgB) + hlgC
            }
        }

        return if (reflection >= cut1) {
            if (type == 2) {
                a * reflection.toDouble().pow(c.toDouble()).toFloat() + b
            } else {
                c * log10(a * reflection.toDouble() + b).toFloat() + d
            }
        } else {
            if (type == 1) {
                e * (reflection - f).pow(2.0f)
            } else {
                e * reflection + f
            }
        }
    }

    fun logToLinear(logValue: Float): Float {
        if (this == LINEAR) return logValue
        if (this == HLG) {
            val value = logValue.coerceIn(0f, 1f)
            val hlgA = 0.17883277f
            val hlgB = 1f - 4f * hlgA
            val hlgC = 0.5f - hlgA * ln(4f * hlgA)
            return if (value <= 0.5f) {
                (value * value) / 3f
            } else {
                (kotlin.math.exp((value - hlgC) / hlgA) + hlgB) / 12f
            }
        }

        return if (logValue >= cut2) {
            if (type == 2) {
                ((logValue - b) / a).toDouble().pow(1.0 / c.toDouble()).toFloat()
            } else {
                ((10.0.pow((logValue - d).toDouble() / c)) - b).toFloat() / a
            }
        } else {
            if (type == 1) {
                (kotlin.math.sqrt(logValue.toDouble() / e.toDouble()) + f).toFloat()
            } else {
                (logValue - f) / e
            }
        }
    }

    val rawFolder: String?
        get() = when (this) {
            FLOG2 -> "raw/flog2"
            LOGC4 -> "raw/arri"
            LOG3G10 -> "raw/red"
            APPLE_LOG -> "raw/apple"
            ACES_CCT -> "raw/aces"
            SLOG3 -> "raw/slog3"
            VLOG -> "raw/vlog"
            SRGB -> "raw/srgb"
            else -> null
        }

    companion object {
        fun fromStorageId(storageId: Int): TransferCurve {
            if (storageId == 9) return LOGC4
            return entries.firstOrNull { it.storageId == storageId } ?: SRGB
        }

        fun fromPersistedName(name: String?): TransferCurve {
            return when (name) {
                null, "" -> SRGB
                "V_LOG" -> VLOG
                "S_LOG3" -> SLOG3
                "F_LOG2" -> FLOG2
                "LOG_C" -> LOGC4
                "LOG_3G10", "RED_LOG3G10" -> LOG3G10
                "L_LOG", "LEICA_LLOG", "LEICA_L_LOG" -> LLOG
                else -> entries.firstOrNull { it.name == name } ?: SRGB
            }
        }
    }
}
