.class public final Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;
.super Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;
.source "PG"

# interfaces
.implements Ltbq;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final b:Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->b:Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native staticInitializeNative()V
.end method


# virtual methods
.method public native nativeAddPayloadFrame(Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;JILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;JJLjava/lang/Runnable;JLjava/lang/Runnable;Lcom/google/googlex/gcam/base/OwningNativePointer;Ljava/lang/Runnable;)Z
.end method
