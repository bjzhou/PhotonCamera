package com.hinnka.mycamera.ui.icons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.addPathNodes
import androidx.compose.ui.graphics.vector.group
import androidx.compose.ui.unit.dp

object AppIcons {
    val AutoMirroredArrowLeft: ImageVector
        get() {
            _autoMirroredArrowLeft?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.AutoMirroredArrowLeft",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = true,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M560-280 360-480l200-200v400Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _autoMirroredArrowLeft = it
            }
        }

    val AutoMirroredArrowRight: ImageVector
        get() {
            _autoMirroredArrowRight?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.AutoMirroredArrowRight",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = true,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M400-280v-400l200 200-200 200Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _autoMirroredArrowRight = it
            }
        }

    val AutoMirroredOutlinedUndo: ImageVector
        get() {
            _autoMirroredOutlinedUndo?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.AutoMirroredOutlinedUndo",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = true,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M280-200v-80h284q63 0 109.5-40T720-420q0-60-46.5-100T564-560H312l104 104-56 56-200-200 200-200 56 56-104 104h252q97 0 166.5 63T800-420q0 94-69.5 157T564-200H280Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _autoMirroredOutlinedUndo = it
            }
        }

    val AddPhotoAlternate: ImageVector
        get() {
            _addPhotoAlternate?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.AddPhotoAlternate",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h360q-20 26-30 57t-10 63q0 83 58.5 141.5T720-520q32 0 63-10t57-30v360q0 33-23.5 56.5T760-120H200Zm40-160h480L570-480 450-320l-90-120-120 160Zm440-320v-80h-80v-80h80v-80h80v80h80v80h-80v80h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _addPhotoAlternate = it
            }
        }

    val Article: ImageVector
        get() {
            _article?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Article",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 24f,
                viewportHeight = 24f,
                autoMirror = true,
            ).apply {
                addPath(
                    pathData = addPathNodes("M19,3L5,3c-1.1,0 -2,0.9 -2,2v14c0,1.1 0.9,2 2,2h14c1.1,0 2,-0.9 2,-2L21,5c0,-1.1 -0.9,-2 -2,-2zM14,17L7,17v-2h7v2zM17,13L7,13v-2h10v2zM17,9L7,9L7,7h10v2z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
            }.build().also {
                _article = it
            }
        }

    val AutoAwesome: ImageVector
        get() {
            _autoAwesome?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.AutoAwesome",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m760-600-50-110-110-50 110-50 50-110 50 110 110 50-110 50-50 110Zm0 560-50-110-110-50 110-50 50-110 50 110 110 50-110 50-50 110ZM360-160 260-380 40-480l220-100 100-220 100 220 220 100-220 100-100 220Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _autoAwesome = it
            }
        }

    val BarChart: ImageVector
        get() {
            _barChart?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.BarChart",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M640-160v-280h160v280H640Zm-240 0v-640h160v640H400Zm-240 0v-440h160v440H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _barChart = it
            }
        }

    val Bolt: ImageVector
        get() {
            _bolt?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Bolt",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m320-80 40-280H160l360-520h80l-40 320h240L400-80h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _bolt = it
            }
        }

    val Bookmark: ImageVector
        get() {
            _bookmark?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Bookmark",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 24f,
                viewportHeight = 24f,
                autoMirror = false,
            ).apply {
                addPath(
                    pathData = addPathNodes("M17,3H7c-1.1,0 -1.99,0.9 -1.99,2L5,21l7,-3 7,3V5c0,-1.1 -0.9,-2 -2,-2z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
            }.build().also {
                _bookmark = it
            }
        }

    val BorderBottom: ImageVector
        get() {
            _borderBottom?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.BorderBottom",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M120-120v-80h720v80H120Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm160 320v-80h80v80h-80Zm0-320v-80h80v80h-80Zm160 480v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm160 320v-80h80v80h-80Zm0-320v-80h80v80h-80Zm160 480v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _borderBottom = it
            }
        }

    val BurstMode: ImageVector
        get() {
            _burstMode?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.BurstMode",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M40-200v-560h80v560H40Zm160 0v-560h80v560h-80Zm240 0q-33 0-56.5-23.5T360-280v-400q0-33 23.5-56.5T440-760h400q33 0 56.5 23.5T920-680v400q0 33-23.5 56.5T840-200H440Zm40-160h320L696-500l-76 100-56-74-84 114Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _burstMode = it
            }
        }

    val Business: ImageVector
        get() {
            _business?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Business",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M80-120v-720h400v160h400v560H80Zm80-80h80v-80h-80v80Zm0-160h80v-80h-80v80Zm0-160h80v-80h-80v80Zm0-160h80v-80h-80v80Zm160 480h80v-80h-80v80Zm0-160h80v-80h-80v80Zm0-160h80v-80h-80v80Zm0-160h80v-80h-80v80Zm160 480h320v-400H480v80h80v80h-80v80h80v80h-80v80Zm160-240v-80h80v80h-80Zm0 160v-80h80v80h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _business = it
            }
        }

    val CameraAlt: ImageVector
        get() {
            _cameraAlt?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.CameraAlt",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480-260q75 0 127.5-52.5T660-440q0-75-52.5-127.5T480-620q-75 0-127.5 52.5T300-440q0 75 52.5 127.5T480-260Zm0-80q-42 0-71-29t-29-71q0-42 29-71t71-29q42 0 71 29t29 71q0 42-29 71t-71 29ZM160-120q-33 0-56.5-23.5T80-200v-480q0-33 23.5-56.5T160-760h126l74-80h240l74 80h126q33 0 56.5 23.5T880-680v480q0 33-23.5 56.5T800-120H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _cameraAlt = it
            }
        }

    val Cameraswitch: ImageVector
        get() {
            _cameraswitch?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Cameraswitch",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M320-280q-33 0-56.5-23.5T240-360v-240q0-33 23.5-56.5T320-680h40l40-40h160l40 40h40q33 0 56.5 23.5T720-600v240q0 33-23.5 56.5T640-280H320Zm160-120q33 0 56.5-23.5T560-480q0-33-23.5-56.5T480-560q-33 0-56.5 23.5T400-480q0 33 23.5 56.5T480-400ZM342-940q34-11 68.5-15.5T480-960q94 0 177.5 33.5t148 93Q870-774 911-693.5T960-520h-80q-7-72-38-134.5T762.5-765Q714-813 651-842.5T516-878l62 62-56 56-180-180ZM618-20Q584-9 549.5-4.5T480 0q-94 0-177.5-33.5t-148-93Q90-186 49-266.5T0-440h80q8 72 38.5 134.5t79 110.5Q246-147 309-117.5T444-82l-62-62 56-56L618-20Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _cameraswitch = it
            }
        }

    val CheckBox: ImageVector
        get() {
            _checkBox?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.CheckBox",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m424-312 282-282-56-56-226 226-114-114-56 56 170 170ZM200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _checkBox = it
            }
        }

    val CheckBoxOutlineBlank: ImageVector
        get() {
            _checkBoxOutlineBlank?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.CheckBoxOutlineBlank",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm0-80h560v-560H200v560Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _checkBoxOutlineBlank = it
            }
        }

    val ChevronRight: ImageVector
        get() {
            _chevronRight?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.ChevronRight",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M504-480 320-664l56-56 240 240-240 240-56-56 184-184Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _chevronRight = it
            }
        }

    val ContentCopy: ImageVector
        get() {
            _contentCopy?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.ContentCopy",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M360-240q-33 0-56.5-23.5T280-320v-480q0-33 23.5-56.5T360-880h360q33 0 56.5 23.5T800-800v480q0 33-23.5 56.5T720-240H360ZM200-80q-33 0-56.5-23.5T120-160v-560h80v560h440v80H200Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _contentCopy = it
            }
        }

    val Contrast: ImageVector
        get() {
            _contrast?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Contrast",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M324-111.5Q251-143 197-197t-85.5-127Q80-397 80-480t31.5-156Q143-709 197-763t127-85.5Q397-880 480-880t156 31.5Q709-817 763-763t85.5 127Q880-563 880-480t-31.5 156Q817-251 763-197t-127 85.5Q563-80 480-80t-156-31.5ZM520-163q119-15 199.5-104.5T800-480q0-123-80.5-212.5T520-797v634Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _contrast = it
            }
        }

    val Crop169: ImageVector
        get() {
            _crop169?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Crop169",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-280q-33 0-56.5-23.5T120-360v-240q0-33 23.5-56.5T200-680h560q33 0 56.5 23.5T840-600v240q0 33-23.5 56.5T760-280H200Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _crop169 = it
            }
        }

    val DirectionsWalk: ImageVector
        get() {
            _directionsWalk?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.DirectionsWalk",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m280-40 112-564-72 28v136h-80v-188l202-86q14-6 29.5-7t29.5 4q14 5 26.5 14t20.5 23l40 64q26 42 70.5 69T760-520v80q-70 0-125-29t-94-74l-25 123 84 80v300h-80v-260l-84-64-72 324h-84Zm203.5-723.5Q460-787 460-820t23.5-56.5Q507-900 540-900t56.5 23.5Q620-853 620-820t-23.5 56.5Q573-740 540-740t-56.5-23.5Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _directionsWalk = it
            }
        }

    val Download: ImageVector
        get() {
            _download?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Download",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480-320 280-520l56-58 104 104v-326h80v326l104-104 56 58-200 200ZM240-160q-33 0-56.5-23.5T160-240v-120h80v120h480v-120h80v120q0 33-23.5 56.5T720-160H240Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _download = it
            }
        }

    val DragHandle: ImageVector
        get() {
            _dragHandle?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.DragHandle",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M160-360v-80h640v80H160Zm0-160v-80h640v80H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _dragHandle = it
            }
        }

    val ExpandLess: ImageVector
        get() {
            _expandLess?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.ExpandLess",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m296-345-56-56 240-240 240 240-56 56-184-184-184 184Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _expandLess = it
            }
        }

    val ExpandMore: ImageVector
        get() {
            _expandMore?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.ExpandMore",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480-345 240-585l56-56 184 184 184-184 56 56-240 240Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _expandMore = it
            }
        }

    val FilterFrames: ImageVector
        get() {
            _filterFrames?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FilterFrames",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M160-80q-33 0-56.5-23.5T80-160v-560q0-33 23.5-56.5T160-800h160l160-160 160 160h160q33 0 56.5 23.5T880-720v560q0 33-23.5 56.5T800-80H160Zm0-80h640v-560H160v560Zm80-80v-400h480v400H240Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _filterFrames = it
            }
        }

    val FilterNone: ImageVector
        get() {
            _filterNone?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FilterNone",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M320-240q-33 0-56.5-23.5T240-320v-480q0-33 23.5-56.5T320-880h480q33 0 56.5 23.5T880-800v480q0 33-23.5 56.5T800-240H320ZM160-80q-33 0-56.5-23.5T80-160v-560h80v560h560v80H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _filterNone = it
            }
        }

    val FilterVintage: ImageVector
        get() {
            _filterVintage?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FilterVintage",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M381-116q-44-36-55-92-53 17-107-2t-83-66q-30-48-22-106.5t52-97.5q-42-38-50.5-94T134-678q27-48 81.5-69.5T324-752q11-56 55-92t101-36q57 0 101 36t55 92q56-17 108.5 3t81.5 71q27 50 19.5 104.5T794-480q44 39 52.5 96.5T828-276q-29 51-81.5 68T638-208q-11 56-55 92T482-80q-57 0-101-36Zm99-204q66 0 113-47t47-113q0-66-47-113t-113-47q-66 0-113 47t-47 113q0 66 47 113t113 47Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _filterVintage = it
            }
        }

    val Flag: ImageVector
        get() {
            _flag?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Flag",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120v-680h360l16 80h224v400H520l-16-80H280v280h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _flag = it
            }
        }

    val FlashOff: ImageVector
        get() {
            _flashOff?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FlashOff",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M280-880h400l-80 280h160L643-431 280-794v-86ZM400-80v-320H280v-166L55-791l57-57 736 736-57 57-241-241L400-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _flashOff = it
            }
        }

    val FlashOn: ImageVector
        get() {
            _flashOn?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FlashOn",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M400-80v-320H280v-480h400l-80 280h160L400-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _flashOn = it
            }
        }

    val FlashlightOff: ImageVector
        get() {
            _flashlightOff?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FlashlightOff",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M320-80v-448L56-792l56-56 736 736-56 56-152-152v128H320Zm-80-754v-46h480v120H314l-74-74Zm400 400L394-680h326v40l-80 120v86Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _flashlightOff = it
            }
        }

    val FlashlightOn: ImageVector
        get() {
            _flashlightOn?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.FlashlightOn",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M240-760v-120h480v120H240Zm282.5 402.5Q540-375 540-400t-17.5-42.5Q505-460 480-460t-42.5 17.5Q420-425 420-400t17.5 42.5Q455-340 480-340t42.5-17.5ZM320-80v-440l-80-120v-40h480v40l-80 120v440H320Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _flashlightOn = it
            }
        }

    val Grain: ImageVector
        get() {
            _grain?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Grain",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M240-160q-33 0-56.5-23.5T160-240q0-33 23.5-56.5T240-320q33 0 56.5 23.5T320-240q0 33-23.5 56.5T240-160Zm320 0q-33 0-56.5-23.5T480-240q0-33 23.5-56.5T560-320q33 0 56.5 23.5T640-240q0 33-23.5 56.5T560-160ZM400-320q-33 0-56.5-23.5T320-400q0-33 23.5-56.5T400-480q33 0 56.5 23.5T480-400q0 33-23.5 56.5T400-320Zm320 0q-33 0-56.5-23.5T640-400q0-33 23.5-56.5T720-480q33 0 56.5 23.5T800-400q0 33-23.5 56.5T720-320ZM240-480q-33 0-56.5-23.5T160-560q0-33 23.5-56.5T240-640q33 0 56.5 23.5T320-560q0 33-23.5 56.5T240-480Zm320 0q-33 0-56.5-23.5T480-560q0-33 23.5-56.5T560-640q33 0 56.5 23.5T640-560q0 33-23.5 56.5T560-480ZM400-640q-33 0-56.5-23.5T320-720q0-33 23.5-56.5T400-800q33 0 56.5 23.5T480-720q0 33-23.5 56.5T400-640Zm320 0q-33 0-56.5-23.5T640-720q0-33 23.5-56.5T720-800q33 0 56.5 23.5T800-720q0 33-23.5 56.5T720-640Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _grain = it
            }
        }

    val GridView: ImageVector
        get() {
            _gridView?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.GridView",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M120-520v-320h320v320H120Zm0 400v-320h320v320H120Zm400-400v-320h320v320H520Zm0 400v-320h320v320H520Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _gridView = it
            }
        }

    val Image: ImageVector
        get() {
            _image?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Image",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm40-160h480L570-480 450-320l-90-120-120 160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _image = it
            }
        }

    val Iso: ImageVector
        get() {
            _iso?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Iso",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm0-80h560v-560L200-200Zm380-40v-80h-80v-60h80v-80h60v80h80v60h-80v80h-60ZM240-620h200v-60H240v60Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _iso = it
            }
        }

    val Label: ImageVector
        get() {
            _label?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Label",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 20f,
                viewportHeight = 20f,
                autoMirror = true,
            ).apply {
                addPath(
                    pathData = addPathNodes("M13.63,4H4c-1.1,0 -2,0.9 -2,2v8c0,1.1 0.9,2 2,2h9.63c0.6,0 1.14,-0.29 1.46,-0.72L19,10l-3.91,-5.28c-0.32,-0.43 -0.85,-0.72 -1.46,-0.72z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
            }.build().also {
                _label = it
            }
        }

    val Layers: ImageVector
        get() {
            _layers?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Layers",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480-118 120-398l66-50 294 228 294-228 66 50-360 280Zm0-202L120-600l360-280 360 280-360 280Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _layers = it
            }
        }

    val MoreHoriz: ImageVector
        get() {
            _moreHoriz?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.MoreHoriz",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _moreHoriz = it
            }
        }

    val OpenInFull: ImageVector
        get() {
            _openInFull?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.OpenInFull",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 24f,
                viewportHeight = 24f,
                autoMirror = false,
            ).apply {
                addPath(
                    pathData = addPathNodes("M21,11l0,-8l-8,0l3.29,3.29l-10,10l-3.29,-3.29l0,8l8,0l-3.29,-3.29l10,-10z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
            }.build().also {
                _openInFull = it
            }
        }

    val Output: ImageVector
        get() {
            _output?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Output",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 20f,
                viewportHeight = 20f,
                autoMirror = false,
            ).apply {
                addPath(
                    pathData = addPathNodes("M14,14l4,-4l-4,-4l-1.06,1.06l2.19,2.19l-7.13,0l0,1.5l7.13,0l-2.19,2.19z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
                addPath(
                    pathData = addPathNodes("M15.5,15.5h-11v-11h11V6H17V4.5C17,3.67 16.33,3 15.5,3h-11C3.67,3 3,3.67 3,4.5v11C3,16.33 3.67,17 4.5,17h11c0.83,0 1.5,-0.67 1.5,-1.5V14h-1.5V15.5z"),
                    fill = SolidColor(Color.Black),
                    pathFillType = PathFillType.NonZero,
                )
            }.build().also {
                _output = it
            }
        }

    val Palette: ImageVector
        get() {
            _palette?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Palette",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480-80q-82 0-155-31.5t-127.5-86Q143-252 111.5-325T80-480q0-83 32.5-156t88-127Q256-817 330-848.5T488-880q80 0 151 27.5t124.5 76q53.5 48.5 85 115T880-518q0 115-70 176.5T640-280h-74q-9 0-12.5 5t-3.5 11q0 12 15 34.5t15 51.5q0 50-27.5 74T480-80ZM303-457q17-17 17-43t-17-43q-17-17-43-17t-43 17q-17 17-17 43t17 43q17 17 43 17t43-17Zm120-160q17-17 17-43t-17-43q-17-17-43-17t-43 17q-17 17-17 43t17 43q17 17 43 17t43-17Zm200 0q17-17 17-43t-17-43q-17-17-43-17t-43 17q-17 17-17 43t17 43q17 17 43 17t43-17Zm120 160q17-17 17-43t-17-43q-17-17-43-17t-43 17q-17 17-17 43t17 43q17 17 43 17t43-17Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _palette = it
            }
        }

    val Pause: ImageVector
        get() {
            _pause?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Pause",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M560-200v-560h160v560H560Zm-320 0v-560h160v560H240Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _pause = it
            }
        }

    val Photo: ImageVector
        get() {
            _photo?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Photo",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm40-160h480L570-480 450-320l-90-120-120 160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _photo = it
            }
        }

    val PhotoLibrary: ImageVector
        get() {
            _photoLibrary?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.PhotoLibrary",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M360-400h400L622-580l-92 120-62-80-108 140Zm-40 160q-33 0-56.5-23.5T240-320v-480q0-33 23.5-56.5T320-880h480q33 0 56.5 23.5T880-800v480q0 33-23.5 56.5T800-240H320ZM160-80q-33 0-56.5-23.5T80-160v-560h80v560h560v80H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _photoLibrary = it
            }
        }

    val PictureInPictureAlt: ImageVector
        get() {
            _pictureInPictureAlt?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.PictureInPictureAlt",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M440-280h320v-240H440v240ZM160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h640q33 0 56.5 23.5T880-720v480q0 33-23.5 56.5T800-160H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _pictureInPictureAlt = it
            }
        }

    val Public: ImageVector
        get() {
            _public?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Public",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M324-111.5Q251-143 197-197t-85.5-127Q80-397 80-480t31.5-156Q143-709 197-763t127-85.5Q397-880 480-880t156 31.5Q709-817 763-763t85.5 127Q880-563 880-480t-31.5 156Q817-251 763-197t-127 85.5Q563-80 480-80t-156-31.5ZM440-162v-78q-33 0-56.5-23.5T360-320v-40L168-552q-3 18-5.5 36t-2.5 36q0 121 79.5 212T440-162Zm276-102q41-45 62.5-100.5T800-480q0-98-54.5-179T600-776v16q0 33-23.5 56.5T520-680h-80v80q0 17-11.5 28.5T400-560h-80v80h240q17 0 28.5 11.5T600-440v120h40q26 0 47 15.5t29 40.5Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _public = it
            }
        }

    val PushPin: ImageVector
        get() {
            _pushPin?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.PushPin",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m640-480 80 80v80H520v240l-40 40-40-40v-240H240v-80l80-80v-280h-40v-80h400v80h-40v280Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _pushPin = it
            }
        }

    val RestartAlt: ImageVector
        get() {
            _restartAlt?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.RestartAlt",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M440-122q-121-15-200.5-105.5T160-440q0-66 26-126.5T260-672l57 57q-38 34-57.5 79T240-440q0 88 56 155.5T440-202v80Zm80 0v-80q87-16 143.5-83T720-440q0-100-70-170t-170-70h-3l44 44-56 56-140-140 140-140 56 56-44 44h3q134 0 227 93t93 227q0 121-79.5 211.5T520-122Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _restartAlt = it
            }
        }

    val ScreenRotation: ImageVector
        get() {
            _screenRotation?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.ScreenRotation",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M480 0q-99 0-186.5-37.5t-153-103Q75-206 37.5-293.5T0-480h80q0 71 24 136t66.5 117Q213-175 272-138.5T401-87L296-192l56-56L588-12q-26 6-53.5 9T480 0Zm400-480q0-71-24-136t-66.5-117Q747-785 688-821.5T559-873l105 105-56 56-236-236q26-6 53.5-9t54.5-3q99 0 186.5 37.5t153 103q65.5 65.5 103 153T960-480h-80ZM496.05-182 182-496q-10.52-11-16.26-25-5.74-14-5.74-29t5.74-29q5.74-14 16.26-25l173.62-174q11.03-11 25.08-16.5 14.05-5.5 29.11-5.5 15.05 0 29.1 5.5T464-778l313.97 313.97Q789-453 794.5-439q5.5 14 5.5 29t-5.74 29q-5.74 14-16.26 25L604.42-182q-11.04 11-25.09 16.5-14.04 5.5-29.09 5.5t-29.1-5.5q-14.05-5.5-25.09-16.5ZM373-556q13 0 21.5-9t8.5-21q0-13-8.5-21.5T373-616q-12 0-21 8.5t-9 21.5q0 12 9 21t21 9Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _screenRotation = it
            }
        }

    val SelectAll: ImageVector
        get() {
            _selectAll?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.SelectAll",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M280-280v-400h400v400H280Zm80-80h240v-240H360v240ZM200-200v80q-33 0-56.5-23.5T120-200h80Zm-80-80v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm80-160h-80q0-33 23.5-56.5T200-840v80Zm80 640v-80h80v80h-80Zm0-640v-80h80v80h-80Zm160 640v-80h80v80h-80Zm0-640v-80h80v80h-80Zm160 640v-80h80v80h-80Zm0-640v-80h80v80h-80Zm160 640v-80h80q0 33-23.5 56.5T760-120Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80h80v80h-80Zm0-160v-80q33 0 56.5 23.5T840-760h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _selectAll = it
            }
        }

    val Shuffle: ImageVector
        get() {
            _shuffle?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Shuffle",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M560-160v-80h104L537-367l57-57 126 126v-102h80v240H560Zm-344 0-56-56 504-504H560v-80h240v240h-80v-104L216-160Zm151-377L160-744l56-56 207 207-56 56Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _shuffle = it
            }
        }

    val StarBorder: ImageVector
        get() {
            _starBorder?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.StarBorder",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _starBorder = it
            }
        }

    val Stop: ImageVector
        get() {
            _stop?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Stop",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M240-240v-480h480v480H240Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _stop = it
            }
        }

    val SwapHoriz: ImageVector
        get() {
            _swapHoriz?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.SwapHoriz",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M280-160 80-360l200-200 56 57-103 103h287v80H233l103 103-56 57Zm400-240-56-57 103-103H440v-80h287L624-743l56-57 200 200-200 200Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _swapHoriz = it
            }
        }

    val Timer: ImageVector
        get() {
            _timer?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Timer",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M360-840v-80h240v80H360Zm80 440h80v-240h-80v240Zm-99.5 291.5Q275-137 226-186t-77.5-114.5Q120-366 120-440t28.5-139.5Q177-645 226-694t114.5-77.5Q406-800 480-800q62 0 119 20t107 58l56-56 56 56-56 56q38 50 58 107t20 119q0 74-28.5 139.5T734-186q-49 49-114.5 77.5T480-80q-74 0-139.5-28.5Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _timer = it
            }
        }

    val Tune: ImageVector
        get() {
            _tune?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Tune",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M440-120v-240h80v80h320v80H520v80h-80Zm-320-80v-80h240v80H120Zm160-160v-80H120v-80h160v-80h80v240h-80Zm160-80v-80h400v80H440Zm160-160v-240h80v80h160v80H680v80h-80Zm-480-80v-80h400v80H120Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _tune = it
            }
        }

    val Vibration: ImageVector
        get() {
            _vibration?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Vibration",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M320-120q-33 0-56.5-23.5T240-200v-560q0-33 23.5-56.5T320-840h320q33 0 56.5 23.5T720-760v560q0 33-23.5 56.5T640-120H320Zm188.5-531.5Q520-663 520-680t-11.5-28.5Q497-720 480-720t-28.5 11.5Q440-697 440-680t11.5 28.5Q463-640 480-640t28.5-11.5ZM0-360v-240h80v240H0Zm120 80v-400h80v400h-80Zm760-80v-240h80v240h-80Zm-120 80v-400h80v400h-80Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _vibration = it
            }
        }

    val Videocam: ImageVector
        get() {
            _videocam?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Videocam",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h480q33 0 56.5 23.5T720-720v180l160-160v440L720-420v180q0 33-23.5 56.5T640-160H160Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _videocam = it
            }
        }

    val Visibility: ImageVector
        get() {
            _visibility?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.Visibility",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M607.5-372.5Q660-425 660-500t-52.5-127.5Q555-680 480-680t-127.5 52.5Q300-575 300-500t52.5 127.5Q405-320 480-320t127.5-52.5Zm-204-51Q372-455 372-500t31.5-76.5Q435-608 480-608t76.5 31.5Q588-545 588-500t-31.5 76.5Q525-392 480-392t-76.5-31.5ZM214-281.5Q94-363 40-500q54-137 174-218.5T480-800q146 0 266 81.5T920-500q-54 137-174 218.5T480-200q-146 0-266-81.5Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _visibility = it
            }
        }

    val VisibilityOff: ImageVector
        get() {
            _visibilityOff?.let { return it }
            return ImageVector.Builder(
                name = "AppIcons.VisibilityOff",
                defaultWidth = 24f.dp,
                defaultHeight = 24f.dp,
                viewportWidth = 960f,
                viewportHeight = 960f,
                autoMirror = false,
            ).apply {
                group(
                    translationY = 960f,
                ) {
                    addPath(
                        pathData = addPathNodes("M792-56 624-222q-35 11-70.5 16.5T480-200q-151 0-269-83.5T40-500q21-53 53-98.5t73-81.5L56-792l56-56 736 736-56 56ZM480-320q11 0 20.5-1t20.5-4L305-541q-3 11-4 20.5t-1 20.5q0 75 52.5 127.5T480-320Zm292 18L645-428q7-17 11-34.5t4-37.5q0-75-52.5-127.5T480-680q-20 0-37.5 4T408-664L306-766q41-17 84-25.5t90-8.5q151 0 269 83.5T920-500q-23 59-60.5 109.5T772-302ZM587-486 467-606q28-5 51.5 4.5T559-574q17 18 24.5 41.5T587-486Z"),
                        fill = SolidColor(Color.Black),
                        pathFillType = PathFillType.NonZero,
                    )
                }
            }.build().also {
                _visibilityOff = it
            }
        }

}

private var _autoMirroredArrowLeft: ImageVector? = null
private var _autoMirroredArrowRight: ImageVector? = null
private var _autoMirroredOutlinedUndo: ImageVector? = null
private var _addPhotoAlternate: ImageVector? = null
private var _article: ImageVector? = null
private var _autoAwesome: ImageVector? = null
private var _barChart: ImageVector? = null
private var _bolt: ImageVector? = null
private var _bookmark: ImageVector? = null
private var _borderBottom: ImageVector? = null
private var _burstMode: ImageVector? = null
private var _business: ImageVector? = null
private var _cameraAlt: ImageVector? = null
private var _cameraswitch: ImageVector? = null
private var _checkBox: ImageVector? = null
private var _checkBoxOutlineBlank: ImageVector? = null
private var _chevronRight: ImageVector? = null
private var _contentCopy: ImageVector? = null
private var _contrast: ImageVector? = null
private var _crop169: ImageVector? = null
private var _directionsWalk: ImageVector? = null
private var _download: ImageVector? = null
private var _dragHandle: ImageVector? = null
private var _expandLess: ImageVector? = null
private var _expandMore: ImageVector? = null
private var _filterFrames: ImageVector? = null
private var _filterNone: ImageVector? = null
private var _filterVintage: ImageVector? = null
private var _flag: ImageVector? = null
private var _flashOff: ImageVector? = null
private var _flashOn: ImageVector? = null
private var _flashlightOff: ImageVector? = null
private var _flashlightOn: ImageVector? = null
private var _grain: ImageVector? = null
private var _gridView: ImageVector? = null
private var _image: ImageVector? = null
private var _iso: ImageVector? = null
private var _label: ImageVector? = null
private var _layers: ImageVector? = null
private var _moreHoriz: ImageVector? = null
private var _openInFull: ImageVector? = null
private var _output: ImageVector? = null
private var _palette: ImageVector? = null
private var _pause: ImageVector? = null
private var _photo: ImageVector? = null
private var _photoLibrary: ImageVector? = null
private var _pictureInPictureAlt: ImageVector? = null
private var _public: ImageVector? = null
private var _pushPin: ImageVector? = null
private var _restartAlt: ImageVector? = null
private var _screenRotation: ImageVector? = null
private var _selectAll: ImageVector? = null
private var _shuffle: ImageVector? = null
private var _starBorder: ImageVector? = null
private var _stop: ImageVector? = null
private var _swapHoriz: ImageVector? = null
private var _timer: ImageVector? = null
private var _tune: ImageVector? = null
private var _vibration: ImageVector? = null
private var _videocam: ImageVector? = null
private var _visibility: ImageVector? = null
private var _visibilityOff: ImageVector? = null
