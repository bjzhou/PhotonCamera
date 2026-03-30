.class public Lcom/google/android/apps/camera/imax/cyclops/processing/NativePoseEstimatorImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Livp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->HwEOXZ:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public native computePose(Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)Z
.end method
