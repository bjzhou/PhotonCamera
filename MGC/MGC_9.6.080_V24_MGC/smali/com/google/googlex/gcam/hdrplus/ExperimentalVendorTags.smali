.class final Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private afMultiDepthFaceDeblur:[B

.field private afTargetFocus:[B

.field private clutIds:[B

.field private clutWeights:[F

.field private faceDetectionTimestamp:J

.field private faceLandmarkCount:[I

.field private faceLandmarkIds:[B

.field private faceLandmarkXy:[F

.field private faceOrientation:[F

.field private faceRectangleSkinArea:[I

.field private flickerConfHighRes:I

.field private flickerFreqHighRes:I

.field private floatSensorInfoSensitivityRange:[F

.field private floatSensorMaxAnalogSensitivity:F

.field private floatSensorSensitivity:F

.field private gcamAeOutput:[F

.field private gcamAeSkipped:Z

.field private hasFaceDetectionTimestamp:Z

.field private hasFlickerConfHighRes:Z

.field private hasFlickerFreqHighRes:Z

.field private hasFloatSensorMaxAnalogSensitivity:Z

.field private hasFloatSensorSensitivity:Z

.field private hasGcamAeSkipped:Z

.field private hasIdcgEnabled:Z

.field private hasMeshWarpIsForwardMesh:Z

.field private hasMeshWarpIsIdentityTransform:Z

.field private idcgEnabled:Z

.field private lensDistortionActiveRectangleHighQuality:[I

.field private lensDistortionCoefficientsHighQuality:[F

.field private lensDistortionNormalizationHighQuality:[F

.field private lensDistortionOpticalCenterHighQuality:[F

.field private lensDistortionValidRectangleHighQuality:[I

.field private liveHdrSettings:[F

.field private meshWarpCropRegion:[I

.field private meshWarpData:[F

.field private meshWarpIsForwardMesh:Z

.field private meshWarpIsIdentityTransform:Z

.field private meshWarpSize:[I

.field private oisShiftDacX:[I

.field private oisShiftDacY:[I

.field private oisTimestamps:[J

.field private segmentationAwbParams:[F

.field private segmentationMaskPortrait:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_0
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->clutWeights:[F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->flickerConfHighRes:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    new-array v1, v0, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    iput v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->floatSensorMaxAnalogSensitivity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    new-array v1, v0, [I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceOrientation:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasFloatSensorSensitivity:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasFlickerConfHighRes:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_10
    new-array v1, v0, [I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceLandmarkXy:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_12
    iput-wide v2, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceDetectionTimestamp:J

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasFloatSensorMaxAnalogSensitivity:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->oisShiftDacY:[I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->meshWarpData:[F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->oisShiftDacX:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->oisTimestamps:[J

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v1, v0, [F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1e
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->meshWarpIsForwardMesh:Z

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-array v1, v0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceLandmarkCount:[I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->floatSensorInfoSensitivityRange:[F

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasGcamAeSkipped:Z

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_25
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->afTargetFocus:[B

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->lensDistortionOpticalCenterHighQuality:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_27
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->segmentationMaskPortrait:[B

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->gcamAeSkipped:Z

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->meshWarpCropRegion:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    iput v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->floatSensorSensitivity:F

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2b
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->lensDistortionNormalizationHighQuality:[F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2c
    new-array v1, v0, [B

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasIdcgEnabled:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->meshWarpSize:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_30
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasMeshWarpIsForwardMesh:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_32
    new-array v1, v0, [B

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceLandmarkIds:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_34
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasFaceDetectionTimestamp:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x13

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_23

    nop

    :goto_37
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasMeshWarpIsIdentityTransform:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->lensDistortionValidRectangleHighQuality:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_39
    new-array v1, v0, [F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->clutIds:[B

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->gcamAeOutput:[F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-array v1, v0, [B

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->meshWarpIsIdentityTransform:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_40
    new-array v1, v0, [I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-array v1, v0, [B

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->liveHdrSettings:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_43
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_44
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->faceRectangleSkinArea:[I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_45
    iput v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->flickerFreqHighRes:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_48
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->lensDistortionCoefficientsHighQuality:[F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-array v1, v0, [I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4a
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->idcgEnabled:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->segmentationAwbParams:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4c
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4e
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->lensDistortionActiveRectangleHighQuality:[I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4f
    iput-object v1, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->afMultiDepthFaceDeblur:[B

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v0, p0, Lcom/google/googlex/gcam/hdrplus/ExperimentalVendorTags;->hasFlickerFreqHighRes:Z

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop
.end method
