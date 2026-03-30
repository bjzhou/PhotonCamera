.class public final Lcom/google/android/apps/camera/jni/eis/EisNative;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "gcastartup"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v0, Lcom/google/android/apps/camera/jni/eis/EisNative;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native createHandle(IIIFZILjava/lang/String;ILjava/lang/String;)J
.end method

.method public static native getNumStrips(J)I
.end method

.method public static native getTransformBetweenFrames(JJJJJJJJJIIZZFFFFFFIII[F)Z
.end method

.method public static native processFrame(J[BIIJJJJFFFZJ[F[F[FIZ)J
.end method

.method public static native processGyro(JFFFJ)Z
.end method

.method public static native processLensOffset(JFFJI)Z
.end method

.method public static native releaseHandle(J)V
.end method

.method public static native setActiveArraySize(JII)V
.end method

.method public static native setCropWindowSize(JII)V
.end method

.method public static native setStabilizationStrength(JF)V
.end method
