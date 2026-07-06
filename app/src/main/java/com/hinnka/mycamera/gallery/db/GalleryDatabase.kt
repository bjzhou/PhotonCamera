package com.hinnka.mycamera.gallery.db

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.hinnka.mycamera.raw.RawToneMappingParameters

@Database(
    entities = [GalleryMediaEntity::class],
    version = 20,
    exportSchema = false
)
@androidx.room.TypeConverters(GalleryConverters::class)
abstract class GalleryDatabase : RoomDatabase() {
    abstract fun galleryMediaDao(): GalleryMediaDao

    companion object {
        @Volatile
        private var INSTANCE: GalleryDatabase? = null

        private val MIGRATION_1_2 = object : androidx.room.migration.Migration(1, 2) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawDROEnabled INTEGER")
            }
        }

        private val MIGRATION_2_3 = object : androidx.room.migration.Migration(2, 3) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN applyEffectsToVideo INTEGER NOT NULL DEFAULT 0")
            }
        }

        private val MIGRATION_3_4 = object : androidx.room.migration.Migration(3, 4) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmEnabled INTEGER NOT NULL DEFAULT 0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmStock TEXT")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmPrint TEXT")
            }
        }

        private val MIGRATION_4_5 = object : androidx.room.migration.Migration(4, 5) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmCDensityGain REAL NOT NULL DEFAULT 1.0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmMDensityGain REAL NOT NULL DEFAULT 1.0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN spectralFilmYDensityGain REAL NOT NULL DEFAULT 1.0")
            }
        }

        private val MIGRATION_5_6 = object : androidx.room.migration.Migration(5, 6) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN recipe_bloom REAL")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN baseline_recipe_bloom REAL")
            }
        }

        private val MIGRATION_6_7 = object : androidx.room.migration.Migration(6, 7) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN recipe_softLight REAL")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN baseline_recipe_softLight REAL")
            }
        }

        private val MIGRATION_7_8 = object : androidx.room.migration.Migration(7, 8) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawHighlightsAdjustment REAL")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawShadowsAdjustment REAL")
            }
        }

        private val MIGRATION_8_9 = object : androidx.room.migration.Migration(8, 9) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawColorEngine TEXT NOT NULL DEFAULT 'AdobeCurve'")
            }
        }

        private val MIGRATION_9_10 = object : androidx.room.migration.Migration(9, 10) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawCfaCorrectionMode TEXT DEFAULT 'Default'")
            }
        }

        private val MIGRATION_10_11 = object : androidx.room.migration.Migration(10, 11) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawAgxBlackRelativeExposure REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT
                )
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawAgxWhiteRelativeExposure REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT
                )
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawAgxToe REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.AGX_TOE_DEFAULT
                )
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawAgxShoulder REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.AGX_SHOULDER_DEFAULT
                )
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawFilmicBlackRelativeExposure REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT
                )
                db.execSQL(
                    "ALTER TABLE gallery_media ADD COLUMN rawFilmicWhiteRelativeExposure REAL NOT NULL DEFAULT " +
                        RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT
                )
            }
        }

        private val MIGRATION_11_12 = object : androidx.room.migration.Migration(11, 12) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawWhiteLevelMode TEXT DEFAULT 'Default'")
            }
        }

        private val MIGRATION_12_13 = object : androidx.room.migration.Migration(12, 13) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN tonemapMode TEXT")
            }
        }

        private val MIGRATION_13_14 = object : androidx.room.migration.Migration(13, 14) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN captureNoiseReductionLevel INTEGER")
            }
        }

        private val MIGRATION_14_15 = object : androidx.room.migration.Migration(14, 15) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawLensShadingCorrectionEnabled INTEGER")
            }
        }

        private val MIGRATION_15_16 = object : androidx.room.migration.Migration(15, 16) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawGooglePixelToneMap INTEGER NOT NULL DEFAULT 0")
            }
        }

        private val MIGRATION_16_17 = object : androidx.room.migration.Migration(16, 17) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawGooglePixelToneMapExplicit INTEGER NOT NULL DEFAULT 0")
            }
        }

        private val MIGRATION_17_18 = object : androidx.room.migration.Migration(17, 18) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawBlackBorderCropLeftPx INTEGER NOT NULL DEFAULT 0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawBlackBorderCropTopPx INTEGER NOT NULL DEFAULT 0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawBlackBorderCropRightPx INTEGER NOT NULL DEFAULT 0")
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawBlackBorderCropBottomPx INTEGER NOT NULL DEFAULT 0")
            }
        }

        private val MIGRATION_18_19 = object : androidx.room.migration.Migration(18, 19) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE gallery_media ADD COLUMN rawOppoMasterToneMap INTEGER NOT NULL DEFAULT 0")
            }
        }

        private val MIGRATION_19_20 = object : androidx.room.migration.Migration(19, 20) {
            override fun migrate(db: androidx.sqlite.db.SupportSQLiteDatabase) {
                rebuildGalleryMediaWithoutLegacyGoogleToneMapFlag(db)
            }
        }

        private fun rebuildGalleryMediaWithoutLegacyGoogleToneMapFlag(
            db: androidx.sqlite.db.SupportSQLiteDatabase
        ) {
            val columns =
                "`id`, `mediaType`, `dateAdded`, `size`, `photoPath`, `thumbnailPath`, `videoPath`, `dngPath`, `yuvPath`, " +
                    "`hasOriginal`, `hasThumbnail`, `hasVideo`, `hasDng`, `hasYuv`, `isBurstPhoto`, `updatedAt`, `version`, `lutId`, " +
                    "`tonemapMode`, `baselineTarget`, `baselineLutId`, `sharpening`, `noiseReduction`, `chromaNoiseReduction`, " +
                    "`captureNoiseReductionLevel`, `rawDenoiseValue`, `rawExposureCompensation`, `rawAutoExposure`, " +
                    "`rawHighlightsAdjustment`, `rawShadowsAdjustment`, `rawBlackPointCorrection`, `rawWhitePointCorrection`, " +
                    "`rawAutoWhiteBalanceEstimate`, `rawLensShadingCorrectionEnabled`, `rawDcpId`, `rawColorEngine`, " +
                    "`rawAgxBlackRelativeExposure`, `rawAgxWhiteRelativeExposure`, `rawAgxToe`, `rawAgxShoulder`, " +
                    "`rawFilmicBlackRelativeExposure`, `rawFilmicWhiteRelativeExposure`, `rawGooglePixelToneMap`, " +
                    "`rawOppoMasterToneMap`, `frameId`, `width`, `height`, `ratio`, `cropLeft`, `cropTop`, `cropRight`, " +
                    "`cropBottom`, `rotation`, `deviceModel`, `brand`, `dateTaken`, `location`, `latitude`, `longitude`, `altitude`, " +
                    "`iso`, `shutterSpeed`, `focalLength`, `focalLength35mm`, `aperture`, `exposureBias`, `isImported`, `sourceUri`, " +
                    "`mimeType`, `durationMs`, `frameRate`, `bitrate`, `rotationDegrees`, `hasAudio`, `videoWidth`, `videoHeight`, " +
                    "`customProperties`, `exportedUris`, `computationalAperture`, `focusPointX`, `focusPointY`, `postCropLeft`, " +
                    "`postCropTop`, `postCropRight`, `postCropBottom`, `presentationTimestampUs`, `droMode`, `software`, " +
                    "`isMirrored`, `colorSpace`, `manualHdrEffectEnabled`, `hdrEffectStrength`, `hasEmbeddedGainmap`, " +
                    "`dynamicRangeProfile`, `captureMode`, `multipleExposureFrameCount`, `hasAiDenoisedBase`, `aiDenoiseStrength`, " +
                    "`rawBlackLevelMode`, `rawCustomBlackLevel`, `rawWhiteLevelMode`, `rawCfaCorrectionMode`, " +
                    "`rawBlackBorderCropLeftPx`, `rawBlackBorderCropTopPx`, `rawBlackBorderCropRightPx`, " +
                    "`rawBlackBorderCropBottomPx`, `rawDROEnabled`, `cameraId`, `applyEffectsToVideo`, `spectralFilmEnabled`, " +
                    "`spectralFilmStock`, `spectralFilmPrint`, `spectralFilmCDensityGain`, `spectralFilmMDensityGain`, " +
                    "`spectralFilmYDensityGain`, `recipe_exposure`, `recipe_contrast`, `recipe_saturation`, `recipe_temperature`, " +
                    "`recipe_tint`, `recipe_fade`, `recipe_color`, `recipe_highlights`, `recipe_shadows`, `recipe_toneToe`, " +
                    "`recipe_toneShoulder`, `recipe_tonePivot`, `recipe_paletteX`, `recipe_paletteY`, `recipe_paletteDensity`, " +
                    "`recipe_filmGrain`, `recipe_vignette`, `recipe_bleachBypass`, `recipe_bloom`, `recipe_softLight`, " +
                    "`recipe_halation`, `recipe_redHalation`, `recipe_chromaticAberration`, `recipe_noise`, `recipe_lowRes`, " +
                    "`recipe_skinHue`, `recipe_skinChroma`, `recipe_skinLightness`, `recipe_redHue`, `recipe_redChroma`, " +
                    "`recipe_redLightness`, `recipe_orangeHue`, `recipe_orangeChroma`, `recipe_orangeLightness`, `recipe_yellowHue`, " +
                    "`recipe_yellowChroma`, `recipe_yellowLightness`, `recipe_greenHue`, `recipe_greenChroma`, " +
                    "`recipe_greenLightness`, `recipe_cyanHue`, `recipe_cyanChroma`, `recipe_cyanLightness`, `recipe_blueHue`, " +
                    "`recipe_blueChroma`, `recipe_blueLightness`, `recipe_purpleHue`, `recipe_purpleChroma`, " +
                    "`recipe_purpleLightness`, `recipe_magentaHue`, `recipe_magentaChroma`, `recipe_magentaLightness`, " +
                    "`recipe_primaryRedHue`, `recipe_primaryRedSaturation`, `recipe_primaryRedLightness`, `recipe_primaryGreenHue`, " +
                    "`recipe_primaryGreenSaturation`, `recipe_primaryGreenLightness`, `recipe_primaryBlueHue`, " +
                    "`recipe_primaryBlueSaturation`, `recipe_primaryBlueLightness`, `recipe_lutIntensity`, `recipe_remarks`, " +
                    "`recipe_masterCurvePoints`, `recipe_redCurvePoints`, `recipe_greenCurvePoints`, `recipe_blueCurvePoints`, " +
                    "`baseline_recipe_exposure`, `baseline_recipe_contrast`, `baseline_recipe_saturation`, " +
                    "`baseline_recipe_temperature`, `baseline_recipe_tint`, `baseline_recipe_fade`, `baseline_recipe_color`, " +
                    "`baseline_recipe_highlights`, `baseline_recipe_shadows`, `baseline_recipe_toneToe`, " +
                    "`baseline_recipe_toneShoulder`, `baseline_recipe_tonePivot`, `baseline_recipe_paletteX`, " +
                    "`baseline_recipe_paletteY`, `baseline_recipe_paletteDensity`, `baseline_recipe_filmGrain`, " +
                    "`baseline_recipe_vignette`, `baseline_recipe_bleachBypass`, `baseline_recipe_bloom`, " +
                    "`baseline_recipe_softLight`, `baseline_recipe_halation`, `baseline_recipe_redHalation`, " +
                    "`baseline_recipe_chromaticAberration`, `baseline_recipe_noise`, `baseline_recipe_lowRes`, " +
                    "`baseline_recipe_skinHue`, `baseline_recipe_skinChroma`, `baseline_recipe_skinLightness`, " +
                    "`baseline_recipe_redHue`, `baseline_recipe_redChroma`, `baseline_recipe_redLightness`, " +
                    "`baseline_recipe_orangeHue`, `baseline_recipe_orangeChroma`, `baseline_recipe_orangeLightness`, " +
                    "`baseline_recipe_yellowHue`, `baseline_recipe_yellowChroma`, `baseline_recipe_yellowLightness`, " +
                    "`baseline_recipe_greenHue`, `baseline_recipe_greenChroma`, `baseline_recipe_greenLightness`, " +
                    "`baseline_recipe_cyanHue`, `baseline_recipe_cyanChroma`, `baseline_recipe_cyanLightness`, " +
                    "`baseline_recipe_blueHue`, `baseline_recipe_blueChroma`, `baseline_recipe_blueLightness`, " +
                    "`baseline_recipe_purpleHue`, `baseline_recipe_purpleChroma`, `baseline_recipe_purpleLightness`, " +
                    "`baseline_recipe_magentaHue`, `baseline_recipe_magentaChroma`, `baseline_recipe_magentaLightness`, " +
                    "`baseline_recipe_primaryRedHue`, `baseline_recipe_primaryRedSaturation`, `baseline_recipe_primaryRedLightness`, " +
                    "`baseline_recipe_primaryGreenHue`, `baseline_recipe_primaryGreenSaturation`, " +
                    "`baseline_recipe_primaryGreenLightness`, `baseline_recipe_primaryBlueHue`, " +
                    "`baseline_recipe_primaryBlueSaturation`, `baseline_recipe_primaryBlueLightness`, " +
                    "`baseline_recipe_lutIntensity`, `baseline_recipe_remarks`, `baseline_recipe_masterCurvePoints`, " +
                    "`baseline_recipe_redCurvePoints`, `baseline_recipe_greenCurvePoints`, `baseline_recipe_blueCurvePoints`"

            db.execSQL("ALTER TABLE `gallery_media` RENAME TO `gallery_media_old`")
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS `gallery_media` (
                    `id` TEXT NOT NULL,
                    `mediaType` TEXT NOT NULL,
                    `dateAdded` INTEGER NOT NULL,
                    `size` INTEGER NOT NULL,
                    `photoPath` TEXT,
                    `thumbnailPath` TEXT,
                    `videoPath` TEXT,
                    `dngPath` TEXT,
                    `yuvPath` TEXT,
                    `hasOriginal` INTEGER NOT NULL,
                    `hasThumbnail` INTEGER NOT NULL,
                    `hasVideo` INTEGER NOT NULL,
                    `hasDng` INTEGER NOT NULL,
                    `hasYuv` INTEGER NOT NULL,
                    `isBurstPhoto` INTEGER NOT NULL,
                    `updatedAt` INTEGER NOT NULL,
                    `version` INTEGER NOT NULL,
                    `lutId` TEXT,
                    `tonemapMode` TEXT,
                    `baselineTarget` TEXT,
                    `baselineLutId` TEXT,
                    `sharpening` REAL,
                    `noiseReduction` REAL,
                    `chromaNoiseReduction` REAL,
                    `captureNoiseReductionLevel` INTEGER,
                    `rawDenoiseValue` REAL,
                    `rawExposureCompensation` REAL,
                    `rawAutoExposure` INTEGER,
                    `rawHighlightsAdjustment` REAL,
                    `rawShadowsAdjustment` REAL,
                    `rawBlackPointCorrection` REAL,
                    `rawWhitePointCorrection` REAL,
                    `rawAutoWhiteBalanceEstimate` INTEGER,
                    `rawLensShadingCorrectionEnabled` INTEGER,
                    `rawDcpId` TEXT,
                    `rawColorEngine` TEXT NOT NULL,
                    `rawAgxBlackRelativeExposure` REAL NOT NULL,
                    `rawAgxWhiteRelativeExposure` REAL NOT NULL,
                    `rawAgxToe` REAL NOT NULL,
                    `rawAgxShoulder` REAL NOT NULL,
                    `rawFilmicBlackRelativeExposure` REAL NOT NULL,
                    `rawFilmicWhiteRelativeExposure` REAL NOT NULL,
                    `rawGooglePixelToneMap` INTEGER NOT NULL,
                    `rawOppoMasterToneMap` INTEGER NOT NULL,
                    `frameId` TEXT,
                    `width` INTEGER NOT NULL,
                    `height` INTEGER NOT NULL,
                    `ratio` TEXT,
                    `cropLeft` INTEGER,
                    `cropTop` INTEGER,
                    `cropRight` INTEGER,
                    `cropBottom` INTEGER,
                    `rotation` INTEGER NOT NULL,
                    `deviceModel` TEXT,
                    `brand` TEXT,
                    `dateTaken` INTEGER,
                    `location` TEXT,
                    `latitude` REAL,
                    `longitude` REAL,
                    `altitude` REAL,
                    `iso` INTEGER,
                    `shutterSpeed` TEXT,
                    `focalLength` TEXT,
                    `focalLength35mm` TEXT,
                    `aperture` TEXT,
                    `exposureBias` REAL,
                    `isImported` INTEGER NOT NULL,
                    `sourceUri` TEXT,
                    `mimeType` TEXT,
                    `durationMs` INTEGER,
                    `frameRate` INTEGER,
                    `bitrate` INTEGER,
                    `rotationDegrees` INTEGER,
                    `hasAudio` INTEGER,
                    `videoWidth` INTEGER,
                    `videoHeight` INTEGER,
                    `customProperties` TEXT,
                    `exportedUris` TEXT,
                    `computationalAperture` REAL,
                    `focusPointX` REAL,
                    `focusPointY` REAL,
                    `postCropLeft` INTEGER,
                    `postCropTop` INTEGER,
                    `postCropRight` INTEGER,
                    `postCropBottom` INTEGER,
                    `presentationTimestampUs` INTEGER,
                    `droMode` TEXT,
                    `software` TEXT,
                    `isMirrored` INTEGER NOT NULL,
                    `colorSpace` TEXT NOT NULL,
                    `manualHdrEffectEnabled` INTEGER NOT NULL,
                    `hdrEffectStrength` REAL NOT NULL,
                    `hasEmbeddedGainmap` INTEGER NOT NULL,
                    `dynamicRangeProfile` TEXT,
                    `captureMode` TEXT,
                    `multipleExposureFrameCount` INTEGER,
                    `hasAiDenoisedBase` INTEGER NOT NULL,
                    `aiDenoiseStrength` REAL,
                    `rawBlackLevelMode` TEXT,
                    `rawCustomBlackLevel` REAL,
                    `rawWhiteLevelMode` TEXT,
                    `rawCfaCorrectionMode` TEXT,
                    `rawBlackBorderCropLeftPx` INTEGER NOT NULL,
                    `rawBlackBorderCropTopPx` INTEGER NOT NULL,
                    `rawBlackBorderCropRightPx` INTEGER NOT NULL,
                    `rawBlackBorderCropBottomPx` INTEGER NOT NULL,
                    `rawDROEnabled` INTEGER,
                    `cameraId` TEXT,
                    `applyEffectsToVideo` INTEGER NOT NULL,
                    `spectralFilmEnabled` INTEGER NOT NULL,
                    `spectralFilmStock` TEXT,
                    `spectralFilmPrint` TEXT,
                    `spectralFilmCDensityGain` REAL NOT NULL,
                    `spectralFilmMDensityGain` REAL NOT NULL,
                    `spectralFilmYDensityGain` REAL NOT NULL,
                    `recipe_exposure` REAL,
                    `recipe_contrast` REAL,
                    `recipe_saturation` REAL,
                    `recipe_temperature` REAL,
                    `recipe_tint` REAL,
                    `recipe_fade` REAL,
                    `recipe_color` REAL,
                    `recipe_highlights` REAL,
                    `recipe_shadows` REAL,
                    `recipe_toneToe` REAL,
                    `recipe_toneShoulder` REAL,
                    `recipe_tonePivot` REAL,
                    `recipe_paletteX` REAL,
                    `recipe_paletteY` REAL,
                    `recipe_paletteDensity` REAL,
                    `recipe_filmGrain` REAL,
                    `recipe_vignette` REAL,
                    `recipe_bleachBypass` REAL,
                    `recipe_bloom` REAL,
                    `recipe_softLight` REAL,
                    `recipe_halation` REAL,
                    `recipe_redHalation` REAL,
                    `recipe_chromaticAberration` REAL,
                    `recipe_noise` REAL,
                    `recipe_lowRes` REAL,
                    `recipe_skinHue` REAL,
                    `recipe_skinChroma` REAL,
                    `recipe_skinLightness` REAL,
                    `recipe_redHue` REAL,
                    `recipe_redChroma` REAL,
                    `recipe_redLightness` REAL,
                    `recipe_orangeHue` REAL,
                    `recipe_orangeChroma` REAL,
                    `recipe_orangeLightness` REAL,
                    `recipe_yellowHue` REAL,
                    `recipe_yellowChroma` REAL,
                    `recipe_yellowLightness` REAL,
                    `recipe_greenHue` REAL,
                    `recipe_greenChroma` REAL,
                    `recipe_greenLightness` REAL,
                    `recipe_cyanHue` REAL,
                    `recipe_cyanChroma` REAL,
                    `recipe_cyanLightness` REAL,
                    `recipe_blueHue` REAL,
                    `recipe_blueChroma` REAL,
                    `recipe_blueLightness` REAL,
                    `recipe_purpleHue` REAL,
                    `recipe_purpleChroma` REAL,
                    `recipe_purpleLightness` REAL,
                    `recipe_magentaHue` REAL,
                    `recipe_magentaChroma` REAL,
                    `recipe_magentaLightness` REAL,
                    `recipe_primaryRedHue` REAL,
                    `recipe_primaryRedSaturation` REAL,
                    `recipe_primaryRedLightness` REAL,
                    `recipe_primaryGreenHue` REAL,
                    `recipe_primaryGreenSaturation` REAL,
                    `recipe_primaryGreenLightness` REAL,
                    `recipe_primaryBlueHue` REAL,
                    `recipe_primaryBlueSaturation` REAL,
                    `recipe_primaryBlueLightness` REAL,
                    `recipe_lutIntensity` REAL,
                    `recipe_remarks` TEXT,
                    `recipe_masterCurvePoints` TEXT,
                    `recipe_redCurvePoints` TEXT,
                    `recipe_greenCurvePoints` TEXT,
                    `recipe_blueCurvePoints` TEXT,
                    `baseline_recipe_exposure` REAL,
                    `baseline_recipe_contrast` REAL,
                    `baseline_recipe_saturation` REAL,
                    `baseline_recipe_temperature` REAL,
                    `baseline_recipe_tint` REAL,
                    `baseline_recipe_fade` REAL,
                    `baseline_recipe_color` REAL,
                    `baseline_recipe_highlights` REAL,
                    `baseline_recipe_shadows` REAL,
                    `baseline_recipe_toneToe` REAL,
                    `baseline_recipe_toneShoulder` REAL,
                    `baseline_recipe_tonePivot` REAL,
                    `baseline_recipe_paletteX` REAL,
                    `baseline_recipe_paletteY` REAL,
                    `baseline_recipe_paletteDensity` REAL,
                    `baseline_recipe_filmGrain` REAL,
                    `baseline_recipe_vignette` REAL,
                    `baseline_recipe_bleachBypass` REAL,
                    `baseline_recipe_bloom` REAL,
                    `baseline_recipe_softLight` REAL,
                    `baseline_recipe_halation` REAL,
                    `baseline_recipe_redHalation` REAL,
                    `baseline_recipe_chromaticAberration` REAL,
                    `baseline_recipe_noise` REAL,
                    `baseline_recipe_lowRes` REAL,
                    `baseline_recipe_skinHue` REAL,
                    `baseline_recipe_skinChroma` REAL,
                    `baseline_recipe_skinLightness` REAL,
                    `baseline_recipe_redHue` REAL,
                    `baseline_recipe_redChroma` REAL,
                    `baseline_recipe_redLightness` REAL,
                    `baseline_recipe_orangeHue` REAL,
                    `baseline_recipe_orangeChroma` REAL,
                    `baseline_recipe_orangeLightness` REAL,
                    `baseline_recipe_yellowHue` REAL,
                    `baseline_recipe_yellowChroma` REAL,
                    `baseline_recipe_yellowLightness` REAL,
                    `baseline_recipe_greenHue` REAL,
                    `baseline_recipe_greenChroma` REAL,
                    `baseline_recipe_greenLightness` REAL,
                    `baseline_recipe_cyanHue` REAL,
                    `baseline_recipe_cyanChroma` REAL,
                    `baseline_recipe_cyanLightness` REAL,
                    `baseline_recipe_blueHue` REAL,
                    `baseline_recipe_blueChroma` REAL,
                    `baseline_recipe_blueLightness` REAL,
                    `baseline_recipe_purpleHue` REAL,
                    `baseline_recipe_purpleChroma` REAL,
                    `baseline_recipe_purpleLightness` REAL,
                    `baseline_recipe_magentaHue` REAL,
                    `baseline_recipe_magentaChroma` REAL,
                    `baseline_recipe_magentaLightness` REAL,
                    `baseline_recipe_primaryRedHue` REAL,
                    `baseline_recipe_primaryRedSaturation` REAL,
                    `baseline_recipe_primaryRedLightness` REAL,
                    `baseline_recipe_primaryGreenHue` REAL,
                    `baseline_recipe_primaryGreenSaturation` REAL,
                    `baseline_recipe_primaryGreenLightness` REAL,
                    `baseline_recipe_primaryBlueHue` REAL,
                    `baseline_recipe_primaryBlueSaturation` REAL,
                    `baseline_recipe_primaryBlueLightness` REAL,
                    `baseline_recipe_lutIntensity` REAL,
                    `baseline_recipe_remarks` TEXT,
                    `baseline_recipe_masterCurvePoints` TEXT,
                    `baseline_recipe_redCurvePoints` TEXT,
                    `baseline_recipe_greenCurvePoints` TEXT,
                    `baseline_recipe_blueCurvePoints` TEXT,
                    PRIMARY KEY(`id`))
                """.trimIndent()
            )
            db.execSQL("INSERT INTO `gallery_media` ($columns) SELECT $columns FROM `gallery_media_old`")
            db.execSQL("DROP TABLE `gallery_media_old`")
            db.execSQL("CREATE INDEX IF NOT EXISTS `index_gallery_media_dateAdded` ON `gallery_media` (`dateAdded`)")
            db.execSQL("CREATE INDEX IF NOT EXISTS `index_gallery_media_mediaType` ON `gallery_media` (`mediaType`)")
        }

        fun getInstance(context: Context): GalleryDatabase {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: Room.databaseBuilder(
                    context.applicationContext,
                    GalleryDatabase::class.java,
                    "gallery_media.db"
                )
                    .addMigrations(
                        MIGRATION_1_2,
                        MIGRATION_2_3,
                        MIGRATION_3_4,
                        MIGRATION_4_5,
                        MIGRATION_5_6,
                        MIGRATION_6_7,
                        MIGRATION_7_8,
                        MIGRATION_8_9,
                        MIGRATION_9_10,
                        MIGRATION_10_11,
                        MIGRATION_11_12,
                        MIGRATION_12_13,
                        MIGRATION_13_14,
                        MIGRATION_14_15,
                        MIGRATION_15_16,
                        MIGRATION_16_17,
                        MIGRATION_17_18,
                        MIGRATION_18_19,
                        MIGRATION_19_20
                    )
                    .fallbackToDestructiveMigrationOnDowngrade(false)
                    .fallbackToDestructiveMigration(false)
                    .build()
                    .also { INSTANCE = it }
            }
        }
    }
}
