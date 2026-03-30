.class public final Lcom/google/android/apps/camera/jni/facebeautification/FaceBeautificationNative;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

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

    nop

    :goto_6
    const-class v0, Lcom/google/android/apps/camera/jni/facebeautification/FaceBeautificationNative;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "gcastartup"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
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
.end method

.method public static native createHandle(IIZZZZ)J
.end method

.method public static native doFaceBeautification(JIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;IIJ)[B
.end method

.method public static native releaseHandle(J)V
.end method
