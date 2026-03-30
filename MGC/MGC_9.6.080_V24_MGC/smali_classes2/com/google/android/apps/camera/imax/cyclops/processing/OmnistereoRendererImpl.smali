.class public Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Livn;


# instance fields
.field public a:I

.field public b:Z

.field private exposureScalesRef:J

.field private modelRef:J

.field private rendererRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "cyclops"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;ZDD)V
    .locals 9

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

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

    :goto_4
    iput-boolean p1, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeInitialize(Ljava/lang/String;IZDD)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->rendererRef:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    :goto_d
    move-wide v7, p5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-wide v5, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_12
    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->modelRef:J

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->exposureScalesRef:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    move v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method private native nativeInitialize(Ljava/lang/String;IZDD)Z
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeRelease()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public native getResult(Z)Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;
.end method

.method public native nativeApplyTexture(IIII)V
.end method

.method public native nativeRelease()V
.end method
