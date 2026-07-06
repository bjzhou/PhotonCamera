package com.hinnka.mycamera.frame

import android.graphics.Color
import androidx.compose.runtime.snapshots.toInt
import java.util.UUID

/**
 * 边框编辑器草稿模型
 *
 * UI 层只编辑草稿，不直接操作持久化模板。
 */
data class FrameEditorDraft(
    val sourceFrameId: String? = null,
    val editableFrameId: String? = null,
    val isBuiltInSource: Boolean = false,
    val name: String = "",
    val layout: FrameLayoutDraft = FrameLayoutDraft(),
    val elements: List<FrameElementDraft> = emptyList(),
    val elementsTop: List<FrameElementDraft>? = null,
    val selectedElementId: String? = elements.firstOrNull()?.draftId,
) {
    val effectiveSelectedElementId: String?
        get() = selectedElementId?.takeIf { id ->
            elements.any { it.draftId == id } || elementsTop?.any { it.draftId == id } == true
        } ?: elements.firstOrNull()?.draftId ?: elementsTop?.firstOrNull()?.draftId

    fun withSelectedElement(elementId: String?): FrameEditorDraft {
        val resolvedId = elementId?.takeIf { id ->
            elements.any { it.draftId == id } || elementsTop?.any { it.draftId == id } == true
        }
        return copy(selectedElementId = resolvedId ?: elements.firstOrNull()?.draftId ?: elementsTop?.firstOrNull()?.draftId)
    }

    fun toTemplate(templateId: String): FrameTemplate {
        val safeName = name.trim().ifEmpty { "Custom Frame" }
        return FrameTemplate(
            id = templateId,
            nameMap = mapOf("en" to safeName, "zh" to safeName),
            version = 1,
            layout = layout.toFrameLayout(),
            elements = if (layout.position == FramePosition.IMAGE) {
                emptyList()
            } else {
                elements.map { it.toFrameElement() }
            },
            elementsTop = if (layout.position == FramePosition.BOTH) {
                elementsTop?.map { it.toFrameElement() }
            } else {
                null
            }
        )
    }

    fun validate(): List<String> = FrameTemplateParser.validateTemplate(
        toTemplate(editableFrameId ?: sourceFrameId ?: "draft_frame")
    )

    companion object {
        fun createNew(imageFrame: Boolean = false): FrameEditorDraft {
            val defaultElements = if (imageFrame) {
                emptyList()
            } else {
                listOf(
                    FrameElementDraft.Text(
                        textType = TextType.DEVICE_MODEL,
                        alignment = ElementAlignment.START,
                        fontSizeSp = 20,
                        color = Color.BLACK,
                        fontWeight = FontWeight.BOLD,
                        line = -1
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.APERTURE,
                        alignment = ElementAlignment.END,
                        fontSizeSp = 16,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.FOCAL_LENGTH_35MM,
                        alignment = ElementAlignment.END,
                        fontSizeSp = 16,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.SHUTTER_SPEED,
                        alignment = ElementAlignment.END,
                        fontSizeSp = 16,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.ISO,
                        alignment = ElementAlignment.END,
                        fontSizeSp = 16,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.DATETIME,
                        alignment = ElementAlignment.END,
                        fontSizeSp = 12,
                        color = 0xFF666666.toInt(),
                        format = "yyyy.MM.dd HH:mm:ss",
                        line = 1
                    )
                )
            }

            return FrameEditorDraft(
                name = "",
                layout = if (imageFrame) {
                    FrameLayoutDraft(
                        position = FramePosition.IMAGE,
                        backgroundColor = Color.WHITE
                    )
                } else {
                    FrameLayoutDraft(
                        position = FramePosition.BORDER,
                        heightDp = 80,
                        backgroundColor = Color.WHITE,
                        paddingDp = 20,
                        borderWidthDp = 4
                    )
                },
                elements = defaultElements,
                selectedElementId = defaultElements.firstOrNull()?.draftId
            )
        }

        fun fromTemplate(
            template: FrameTemplate,
            frameInfo: FrameInfo? = null
        ): FrameEditorDraft {
            val elements = template.elements.map { FrameElementDraft.fromElement(it) }
            val elementsTop = template.elementsTop?.map { FrameElementDraft.fromElement(it) }
            val editableFrameId = frameInfo?.id?.takeIf { frameInfo.isBuiltIn == false }
            return FrameEditorDraft(
                sourceFrameId = editableFrameId ?: template.id,
                editableFrameId = editableFrameId,
                isBuiltInSource = frameInfo?.isBuiltIn ?: false,
                name = template.getName(),
                layout = FrameLayoutDraft.fromLayout(template.layout),
                elements = elements,
                elementsTop = elementsTop,
                selectedElementId = elements.firstOrNull()?.draftId
            )
        }
    }
}

data class FrameLayoutDraft(
    val position: FramePosition = FramePosition.BOTTOM,
    val heightDp: Int = 80,
    val backgroundColor: Int = Color.WHITE,
    val borderColor: Int = backgroundColor,
    val lineSpacingDp: Int = 8,
    val paddingDp: Int = 16,
    val borderWidthDp: Int = 0,
    val photoCornerRadiusDp: Int = 0,
    val photoShadowEnabled: Boolean = false,
    val photoShadowRadiusDp: Int = 0,
    val photoShadowOffsetXDp: Int = 0,
    val photoShadowOffsetYDp: Int = 2,
    val photoShadowColor: Int = 0xCC000000.toInt(),
    val imageResName: String? = null,
    val imagePath: String? = null
) {
    fun toFrameLayout(): FrameLayout = FrameLayout(
        position = position,
        heightDp = heightDp.coerceAtLeast(0),
        backgroundColor = backgroundColor,
        borderColor = borderColor,
        lineSpacingDp = lineSpacingDp,
        paddingDp = paddingDp.coerceAtLeast(0),
        borderWidthDp = borderWidthDp.coerceAtLeast(0),
        photoCornerRadiusDp = photoCornerRadiusDp.coerceAtLeast(0),
        photoShadowEnabled = photoShadowEnabled,
        photoShadowRadiusDp = photoShadowRadiusDp.coerceAtLeast(0),
        photoShadowOffsetXDp = photoShadowOffsetXDp,
        photoShadowOffsetYDp = photoShadowOffsetYDp,
        photoShadowColor = photoShadowColor,
        imageResName = imageResName,
        imagePath = imagePath
    )

    companion object {
        fun fromLayout(layout: FrameLayout): FrameLayoutDraft = FrameLayoutDraft(
            position = layout.position,
            heightDp = layout.heightDp,
            backgroundColor = layout.backgroundColor,
            borderColor = layout.borderColor,
            lineSpacingDp = layout.lineSpacingDp,
            paddingDp = layout.paddingDp,
            borderWidthDp = layout.borderWidthDp,
            photoCornerRadiusDp = layout.photoCornerRadiusDp,
            photoShadowEnabled = layout.photoShadowEnabled,
            photoShadowRadiusDp = layout.photoShadowRadiusDp,
            photoShadowOffsetXDp = layout.photoShadowOffsetXDp,
            photoShadowOffsetYDp = layout.photoShadowOffsetYDp,
            photoShadowColor = layout.photoShadowColor,
            imageResName = layout.imageResName,
            imagePath = layout.imagePath
        )
    }
}

sealed class FrameElementDraft(
    open val draftId: String = UUID.randomUUID().toString(),
    open val line: Int,
) {
    abstract fun toFrameElement(): FrameElement

    data class Text(
        override val draftId: String = UUID.randomUUID().toString(),
        val textType: TextType = TextType.DEVICE_MODEL,
        val alignment: ElementAlignment = ElementAlignment.START,
        val fontSizeSp: Int = 14,
        val color: Int = Color.DKGRAY,
        val fontWeight: FontWeight = FontWeight.NORMAL,
        val fontFamily: String? = null,
        val overrideText: String? = null,
        val format: String? = null,
        val prefix: String? = null,
        val suffix: String? = null,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Text(
            textType = textType,
            alignment = alignment,
            fontSizeSp = fontSizeSp.coerceAtLeast(0),
            color = color,
            fontWeight = fontWeight,
            fontFamily = fontFamily,
            overrideText = overrideText,
            format = format,
            prefix = prefix,
            suffix = suffix,
            line = line
        )
    }

    data class Logo(
        override val draftId: String = UUID.randomUUID().toString(),
        val logoType: LogoType = LogoType.BRAND,
        val overrideSource: String? = null,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val sizeDp: Int = 24,
        val maxWidth: Int = 0,
        val light: Boolean = false,
        val marginDp: Int = 8,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Logo(
            logoType = logoType,
            overrideSource = overrideSource,
            alignment = alignment,
            sizeDp = sizeDp.coerceAtLeast(0),
            maxWidth = maxWidth.coerceAtLeast(0),
            light = light,
            marginDp = marginDp.coerceAtLeast(0),
            line = line
        )
    }

    data class Divider(
        override val draftId: String = UUID.randomUUID().toString(),
        val orientation: DividerOrientation = DividerOrientation.VERTICAL,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val lengthDp: Int = 16,
        val thicknessDp: Int = 1,
        val color: Int = Color.LTGRAY,
        val marginDp: Int = 8,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Divider(
            orientation = orientation,
            alignment = alignment,
            lengthDp = lengthDp.coerceAtLeast(0),
            thicknessDp = thicknessDp.coerceAtLeast(0),
            color = color,
            marginDp = marginDp.coerceAtLeast(0),
            line = line
        )
    }

    data class Spacer(
        override val draftId: String = UUID.randomUUID().toString(),
        val widthDp: Int = 8,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Spacer(
            widthDp = widthDp.coerceAtLeast(0),
            line = line
        )
    }

    companion object {
        fun fromElement(element: FrameElement): FrameElementDraft {
            return when (element) {
                is FrameElement.Text -> Text(
                    textType = element.textType,
                    alignment = element.alignment,
                fontSizeSp = element.fontSizeSp,
                color = element.color,
                fontWeight = element.fontWeight,
                fontFamily = element.fontFamily,
                overrideText = element.overrideText,
                format = element.format,
                prefix = element.prefix,
                suffix = element.suffix,
                line = element.line
            )

            is FrameElement.Logo -> Logo(
                logoType = element.logoType,
                overrideSource = element.overrideSource,
                alignment = element.alignment,
                sizeDp = element.sizeDp,
                maxWidth = element.maxWidth,
                light = element.light,
                marginDp = element.marginDp,
                    line = element.line
                )

                is FrameElement.Divider -> Divider(
                    orientation = element.orientation,
                    alignment = element.alignment,
                    lengthDp = element.lengthDp,
                    thicknessDp = element.thicknessDp,
                    color = element.color,
                    marginDp = element.marginDp,
                    line = element.line
                )

                is FrameElement.Spacer -> Spacer(
                    widthDp = element.widthDp,
                    line = element.line
                )
            }
        }
    }
}
