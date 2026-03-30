.class public final Lcom/google/googlex/gcam/AndroidJniUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static native getAHardwareBufferPtr(Landroid/hardware/HardwareBuffer;)Lcom/google/googlex/gcam/base/OwningNativePointer;
.end method

.method static native invokeRunnableAndCatch(Ljava/lang/Runnable;Z)Ljava/lang/String;
.end method

.method public static native lockBitmap(Landroid/graphics/Bitmap;)J
.end method

.method static native lockSurface(Landroid/view/Surface;)J
.end method

.method public static native unlockBitmap(Landroid/graphics/Bitmap;)V
.end method

.method static native unlockSurface(J)V
.end method
