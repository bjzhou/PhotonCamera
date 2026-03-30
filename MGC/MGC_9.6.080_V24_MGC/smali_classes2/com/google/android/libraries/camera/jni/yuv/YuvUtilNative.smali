.class public Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

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

    :goto_1
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "yuv-jni"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    const-class v0, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

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
.end method

.method public static a(Lprw;Lppo;)Landroid/graphics/Bitmap;
    .locals 17

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Lprv;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Lprv;->getPixelStride()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-static/range {v4 .. v16}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->convertYUV420ToARGBNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[II)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-nez v3, :cond_1

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    mul-int v4, v15, v14

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, v0, Lppo;->j:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    move-object/from16 p0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-interface/range {p0 .. p0}, Lprw;->g()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2}, Lprv;->getRowStride()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v14, v1

    nop

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

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v16, v3

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

    :goto_1f
    move v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface/range {p0 .. p0}, Lprw;->b()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    move v13, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_38

    nop

    nop

    :goto_24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface/range {p0 .. p0}, Lprw;->c()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface/range {p0 .. p0}, Lprw;->b()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    invoke-interface {v1}, Lprv;->getPixelStride()I

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    check-cast v3, Lprv;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-array v13, v4, [I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface/range {p0 .. p0}, Lprw;->c()I

    move-result v15

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    move v2, v14

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    iget v3, v0, Lppo;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_30
    move-object/from16 v3, p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_31
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_32
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_36
    move-object/from16 v15, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v0, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v3, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Lprv;

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method private static native convertYUV420ToARGBNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[II)Z
.end method

.method public static native copyYUV_420_888Native(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z
.end method

.method public static native downsampleYUV_420_888toNV21Native(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
.end method

.method private static native generateCircleThumbnailNative(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII[I)Z
.end method
