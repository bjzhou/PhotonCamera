.class public Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const-string v1, "jpeg-jni"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v0, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Lprw;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lpcg;)I
    .locals 27

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v9, v6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v4, "Only ImageFormat.YUV_420_888 is supported, found %s"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    move v9, v5

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_2

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    sget-object v8, Landroidx/viewpager2/widget/jY/lIiWb;->teLwcOi:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v3, v6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-interface {v7}, Lprv;->getPixelStride()I

    move-result v15

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-double/2addr v1, v5

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface/range {p0 .. p0}, Lprw;->a()I

    move-result v7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_10
    const/16 v21, 0x5f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_12
    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    move-object/from16 v0, p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_15
    goto/32 :goto_4f

    nop

    nop

    :goto_16
    move v5, v6

    nop

    nop

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v9}, Lrrf;->x(Z)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, v0, Lpcg;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1a
    invoke-interface/range {p0 .. p0}, Lprw;->c()I

    move-result v5

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

    :goto_1b
    move v3, v5

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1c
    const-string v10, "Pixel stride for chroma (U) plane must be 2."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1d
    move v3, v6

    nop

    :goto_1e
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v9

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_21
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_43

    nop

    nop

    :goto_23
    invoke-static {v9}, Lrrf;->x(Z)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    :goto_26
    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v18

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v3, v4, :cond_1

    nop

    goto/32 :goto_6c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_28
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v20, p1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2a
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2b
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v6, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    nop

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

    nop

    :goto_31
    iget v4, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v5, v11, -0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v9, "Pixel stride for chroma (V) plane must be 2."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_35
    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_36
    invoke-static {v9, v10}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_37
    move v9, v6

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v7}, Lprv;->getPixelStride()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3a
    const-string v2, "Compressed %d bytes in %.2fms"

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3b
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3c
    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3e
    iget v8, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_3f
    return v0

    nop

    :goto_40
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v8, v9}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_61

    nop

    nop

    :goto_42
    invoke-static {v9}, Lrrf;->x(Z)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_43
    move-object/from16 v0, p2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v3, v4, v7}, Lrrf;->z(ZLjava/lang/String;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_45
    iget v8, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v10, "Pixel stride for luma (Y) plane must be 1."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v3, v4, v0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v7, Lprv;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v3, Lprv;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v4, Lprv;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v12, v6, v8}, Lrrf;->L(III)I

    move-result v22

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_51
    if-eq v8, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v4, 0x23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_54
    move v8, v6

    nop

    nop

    :goto_55
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_56
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_58
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_5a
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5b
    iget v3, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5c
    move v3, v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v19

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static/range {v9 .. v26}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->compressJpegFromYUV420spNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIII)I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_60
    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_61
    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_63
    invoke-static {v8, v6, v5}, Lrrf;->L(III)I

    move-result v23

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface/range {p0 .. p0}, Lprw;->b()I

    move-result v11

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v8, v5, -0x1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move/from16 v26, v0

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

    :goto_67
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_68
    if-eq v9, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v0, v6, v11}, Lrrf;->L(III)I

    move-result v25

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6a
    if-lt v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v4}, Lprv;->getPixelStride()I

    move-result v9

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_6e
    move v3, v6

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_55

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_17

    nop

    :goto_74
    goto/32 :goto_16

    nop

    nop

    :goto_75
    move v10, v11

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_76
    const v0, 0x11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_77
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_78
    if-eq v9, v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_6
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move v9, v5

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v4}, Lprv;->getPixelStride()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v4, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->UCJOjj:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface/range {p0 .. p0}, Lprw;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_82
    if-eq v9, v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_7
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_22

    nop

    :goto_84
    invoke-interface {v4}, Lprv;->getRowStride()I

    move-result v13

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-lt v3, v7, :cond_8

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-wide v5, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_87
    move v9, v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_88
    move v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_89
    const-string v4, "Invalid crop rectangle: %s"

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_8a
    sub-long/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v3, v4, v0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_8c
    iget v12, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_8d
    long-to-double v1, v5

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_8e
    invoke-static {v8, v6, v5}, Lrrf;->L(III)I

    move-result v24

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-interface/range {p0 .. p0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v5, v8}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move v3, v5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_92
    invoke-static {v9, v10}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native compressJpegFromYUV420spNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIII)I
.end method
