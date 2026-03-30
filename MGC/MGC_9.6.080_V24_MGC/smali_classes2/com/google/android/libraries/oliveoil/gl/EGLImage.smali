.class public Lcom/google/android/libraries/oliveoil/gl/EGLImage;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqfb;


# instance fields
.field private final a:Landroid/hardware/HardwareBuffer;

.field public final b:J


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long p0, v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_4
    new-instance v0, Lqhk;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    const-wide/16 p0, -0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->createImage(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "eglGetNativeClientBufferANDROID failed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    sget v0, Lcom/google/android/libraries/oliveoil/util/JniUtil;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmp-long p0, v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_17
    const v1, 0x11

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "eglCreateImageKHR failed"

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

    :goto_1a
    const-string p0, "unsupported Android version"

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p0, "unknown error"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    cmp-long p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0}, Lqhk;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    if-gez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_22
    const-wide/16 p0, -0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    const-string p1, "Could not create EGLImage: %s (EGL error %d)."

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    cmp-long p0, v0, p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_10

    nop

    :goto_27
    const-wide/16 p0, -0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_2b
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    :goto_2f
    iput-wide v0, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_1b

    nop

    nop

    :goto_31
    goto/32 :goto_1a

    nop

    nop
.end method

.method public static native attachToRbo(J)V
.end method

.method public static native attachToTexture(J)V
.end method

.method private static native close(J)V
.end method

.method private static native createImage(Landroid/hardware/HardwareBuffer;)J
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:Landroid/hardware/HardwareBuffer;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lqfd;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    new-instance v1, Lqfd;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v0, p0}, Lqfd;-><init>(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

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

    nop
.end method

.method public close()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
