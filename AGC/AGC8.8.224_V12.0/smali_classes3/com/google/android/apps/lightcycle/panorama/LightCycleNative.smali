.class public final Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lightcycle"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native AddImage([F)Ljava/lang/String;
.end method

.method public static native AlignNextImage()V
.end method

.method public static native CalibrateFieldOfViewDeg(Ljava/lang/String;)F
.end method

.method public static native CanUndo()Z
.end method

.method public static native CreateFrameTexture(I)V
.end method

.method public static native CreateNewStitchingSession()I
.end method

.method public static native DeviceOrientationStatus()I
.end method

.method public static native EndGyroCalibration([FII)[F
.end method

.method public static native FinishCapture(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native GetFrameGeometry(II)[F
.end method

.method public static native GetNumCapturedTargets()I
.end method

.method public static native GetNumTotalTargets()I
.end method

.method public static native GetTargetInRange()I
.end method

.method public static native GetTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.end method

.method public static native Init(IIFLcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;)V
.end method

.method public static native InitFrameTexture(III)V
.end method

.method public static native InitTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.end method

.method public static native MovingTooFast()Z
.end method

.method public static native PhotoSkippedTooFast()Z
.end method

.method public static native ProcessFrame([BIIZ)[F
.end method

.method public static native RenderNextSession(I)Z
.end method

.method public static native ResetForFisheyeCapture(Ljava/lang/String;F)V
.end method

.method public static native ResetForHorizontalCapture(Ljava/lang/String;F)V
.end method

.method public static native ResetForPhotoSphereCapture(Ljava/lang/String;F)V
.end method

.method public static native ResetForVerticalCapture(Ljava/lang/String;F)V
.end method

.method public static native ResetForWideCapture(Ljava/lang/String;F)V
.end method

.method public static native ResetTargets()V
.end method

.method public static native SetAppVersion(Ljava/lang/String;)V
.end method

.method public static native SetFilteredRotation([F)V
.end method

.method public static native SetOutputResolutionLarge()V
.end method

.method public static native SetSensorMovementTooFast(Z)V
.end method

.method public static native SetTargetHitAngleRadians(F)V
.end method

.method public static native StartGyroCalibration(F)V
.end method

.method public static native TakeNewPhoto()Z
.end method

.method public static native TargetHit()Z
.end method

.method public static native UndoAddImage()Z
.end method

.method public static native UpdateFrameTexture(I)V
.end method
