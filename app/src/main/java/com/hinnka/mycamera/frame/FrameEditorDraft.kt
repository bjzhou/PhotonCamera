package com.hinnka.mycamera.frame

import android.graphics.Color
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
            version = FrameTemplate.CURRENT_VERSION,
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
                        fontSizePx = 60.0f,
                        color = Color.BLACK,
                        fontWeight = FontWeight.BOLD,
                        line = -1
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.APERTURE,
                        alignment = ElementAlignment.END,
                        fontSizePx = 48.0f,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.FOCAL_LENGTH_35MM,
                        alignment = ElementAlignment.END,
                        fontSizePx = 48.0f,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.SHUTTER_SPEED,
                        alignment = ElementAlignment.END,
                        fontSizePx = 48.0f,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.ISO,
                        alignment = ElementAlignment.END,
                        fontSizePx = 48.0f,
                        color = 0xFF333333.toInt(),
                        fontWeight = FontWeight.BOLD,
                        line = 0
                    ),
                    FrameElementDraft.Text(
                        textType = TextType.DATETIME,
                        alignment = ElementAlignment.END,
                        fontSizePx = 36.0f,
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
                        heightPx = 240.0f,
                        backgroundColor = Color.WHITE,
                        paddingPx = 60.0f,
                        verticalPaddingPx = 60.0f,
                        borderWidthPx = 12.0f,
                        borderHeightPx = 12.0f
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
    val designSize: FrameDesignSize = FrameDesignSize(),
    val heightPx: Float = 240.0f,
    val backgroundColor: Int = Color.WHITE,
    val backgroundType: FrameBackgroundType = FrameBackgroundType.COLOR,
    val backgroundBlurRadiusPx: Float = 96.0f,
    val borderColor: Int = backgroundColor,
    val elementSpacingPx: Float = 24.0f,
    val lineSpacingPx: Float = 24.0f,
    val paddingPx: Float = 48.0f,
    val verticalPaddingPx: Float = paddingPx,
    val borderWidthPx: Float = 0f,
    val borderHeightPx: Float = borderWidthPx,
    val photoCornerRadiusPx: Float = 0f,
    val photoShadowEnabled: Boolean = false,
    val photoShadowRadiusPx: Float = 0f,
    val photoShadowOffsetXPx: Float = 0f,
    val photoShadowOffsetYPx: Float = 6.0f,
    val photoShadowColor: Int = 0xCC000000.toInt(),
    val imageResName: String? = null,
    val imagePath: String? = null
) {
    fun toFrameLayout(): FrameLayout = FrameLayout(
        position = position,
        designSize = designSize,
        heightPx = heightPx,
        backgroundColor = backgroundColor,
        backgroundType = backgroundType.forPosition(position),
        backgroundBlurRadiusPx = backgroundBlurRadiusPx,
        borderColor = borderColor,
        elementSpacingPx = elementSpacingPx,
        lineSpacingPx = lineSpacingPx,
        paddingPx = paddingPx,
        verticalPaddingPx = verticalPaddingPx,
        borderWidthPx = borderWidthPx,
        borderHeightPx = borderHeightPx,
        photoCornerRadiusPx = photoCornerRadiusPx,
        photoShadowEnabled = photoShadowEnabled,
        photoShadowRadiusPx = photoShadowRadiusPx,
        photoShadowOffsetXPx = photoShadowOffsetXPx,
        photoShadowOffsetYPx = photoShadowOffsetYPx,
        photoShadowColor = photoShadowColor,
        imageResName = imageResName,
        imagePath = imagePath
    )

    companion object {
        fun fromLayout(layout: FrameLayout): FrameLayoutDraft = FrameLayoutDraft(
            position = layout.position,
            designSize = layout.designSize,
            heightPx = layout.heightPx,
            backgroundColor = layout.backgroundColor,
            backgroundType = layout.effectiveBackgroundType,
            backgroundBlurRadiusPx = layout.backgroundBlurRadiusPx,
            borderColor = layout.borderColor,
            elementSpacingPx = layout.elementSpacingPx,
            lineSpacingPx = layout.lineSpacingPx,
            paddingPx = layout.paddingPx,
            verticalPaddingPx = layout.verticalPaddingPx,
            borderWidthPx = layout.borderWidthPx,
            borderHeightPx = layout.borderHeightPx,
            photoCornerRadiusPx = layout.photoCornerRadiusPx,
            photoShadowEnabled = layout.photoShadowEnabled,
            photoShadowRadiusPx = layout.photoShadowRadiusPx,
            photoShadowOffsetXPx = layout.photoShadowOffsetXPx,
            photoShadowOffsetYPx = layout.photoShadowOffsetYPx,
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
        val fontSizePx: Float = 42.0f,
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
            fontSizePx = fontSizePx,
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
        val widthPx: Float? = 240.0f,
        val legacyHeightPx: Float = 72.0f,
        val legacyMaxWidthPx: Float = 0f,
        val light: Boolean = false,
        val marginPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Logo(
            logoType = logoType,
            overrideSource = overrideSource,
            alignment = alignment,
            widthPx = widthPx,
            sizePx = legacyHeightPx,
            maxWidthPx = legacyMaxWidthPx,
            light = light,
            marginPx = marginPx,
            line = line
        )
    }

    data class Divider(
        override val draftId: String = UUID.randomUUID().toString(),
        val orientation: DividerOrientation = DividerOrientation.VERTICAL,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val lengthPx: Float = 48.0f,
        val thicknessPx: Float = 3.0f,
        val color: Int = Color.LTGRAY,
        val marginPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Divider(
            orientation = orientation,
            alignment = alignment,
            lengthPx = lengthPx,
            thicknessPx = thicknessPx,
            color = color,
            marginPx = marginPx,
            line = line
        )
    }

    data class Spacer(
        override val draftId: String = UUID.randomUUID().toString(),
        val widthPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElementDraft(draftId, line) {
        override fun toFrameElement(): FrameElement = FrameElement.Spacer(
            widthPx = widthPx,
            line = line
        )
    }

    companion object {
        fun fromElement(element: FrameElement): FrameElementDraft {
            return when (element) {
                is FrameElement.Text -> Text(
                    textType = element.textType,
                    alignment = element.alignment,
                    fontSizePx = element.fontSizePx,
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
                    widthPx = element.widthPx,
                    legacyHeightPx = element.sizePx,
                    legacyMaxWidthPx = element.maxWidthPx,
                    light = element.light,
                    marginPx = element.marginPx,
                    line = element.line
                )

                is FrameElement.Divider -> Divider(
                    orientation = element.orientation,
                    alignment = element.alignment,
                    lengthPx = element.lengthPx,
                    thicknessPx = element.thicknessPx,
                    color = element.color,
                    marginPx = element.marginPx,
                    line = element.line
                )

                is FrameElement.Spacer -> Spacer(
                    widthPx = element.widthPx,
                    line = element.line
                )
            }
        }
    }
}
