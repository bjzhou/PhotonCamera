.class public Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Livl;


# instance fields
.field public final a:I

.field public final b:F

.field private nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "cyclops"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x42700000    # 60.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    const/16 v0, 0x200

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;-><init>(IF)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(IF)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    iput p2, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->b:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->nativeRef:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public native getCaptureProgress()F
.end method

.method public native getPreview(I)Landroid/graphics/Bitmap;
.end method

.method public native getPreviewAsTexture()Lcom/google/android/libraries/vision/opengl/Texture;
.end method

.method public native getTrackerStats(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V
.end method

.method public native initialize(IIIIIF)V
.end method

.method public native release()V
.end method

.method public native setMetaData(FIZIZ)V
.end method

.method public native startCapture()V
.end method

.method public native stopCapture(Ljava/lang/String;)I
.end method

.method public native trackTexture([F[F)Z
.end method
