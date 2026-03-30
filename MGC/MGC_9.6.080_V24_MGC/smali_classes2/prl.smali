.class public final Lprl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lprf;

.field public final b:F

.field public final c:F

.field public final d:F

.field private final e:[Landroid/graphics/PointF;

.field private final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lprf;[B[F[F)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    :goto_0
    aget-byte v4, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    iput-object v0, p0, Lprl;->e:[Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lprl;->e:[Landroid/graphics/PointF;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    iget-object v2, p0, Lprl;->f:Ljava/util/HashMap;

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

    :goto_4
    aget v6, p3, v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [Landroid/graphics/PointF;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    aget v3, p3, v4

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    aget p1, p4, v3

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

    :goto_9
    iput p1, p0, Lprl;->b:F

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

    :goto_a
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    aget p1, p4, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v2, p2

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    iput p1, p0, Lprl;->d:F

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

    :goto_11
    goto/32 :goto_20

    nop

    nop

    :goto_12
    const/4 p1, 0x2

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

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_14
    add-int v4, v1, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15
    aget p1, p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lprl;->f:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lprl;->a:Lprf;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    array-length v0, p2

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

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    const v1, 0x20

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

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

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    aput-object v5, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_26
    if-lt v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    move v1, v0

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    iput p1, p0, Lprl;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v5, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static h(Lprk;)Ljava/util/List;
    .locals 19

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1
    add-int/lit8 v8, v8, 0x1

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

    :goto_2
    add-int/lit8 v7, v2, 0x3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3
    new-array v14, v10, [F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4
    move-object/from16 v17, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v0, p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v2, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v4, Lnyl;->n:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v9, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v2, v15, v15

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_f
    array-length v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-le v2, v7, :cond_0

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_0
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v7, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v5, :cond_1

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_1
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_16
    new-array v13, v12, [F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    invoke-static {v7, v12}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4, v9, v11, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "FaceExt2018"

    nop

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

    :goto_1c
    sget-object v7, Lnyl;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1f
    if-le v15, v7, :cond_3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5d

    nop

    nop

    :goto_20
    goto/32 :goto_51

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "faceLandmarkIds length is too short:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "faceOrientation length is too short:"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    move-object/from16 v3, v16

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v2, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v1, Lprl;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, v3}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2e
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x1e

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    mul-int/lit8 v2, v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_31
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    aget v10, v3, v8

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

    :goto_35
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    :goto_36
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    :goto_38
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_39
    new-array v11, v10, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v4, [B

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v2}, Lprf;->a(Landroid/hardware/camera2/params/Face;)Lprf;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v6, v9, v14, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_6

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    :goto_41
    sget-object v3, Lnyl;->m:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

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

    :goto_42
    const/4 v9, 0x0

    nop

    :goto_43
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-array v3, v7, [F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v7, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v6, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_47
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v15, v9, v10

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v0, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4c
    goto/16 :goto_18

    nop

    :goto_4d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v2, v17

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4f
    sget-object v6, Lnyl;->p:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-object v2

    nop

    :goto_51
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, [F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_53
    if-le v7, v9, :cond_7

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_7
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_54
    invoke-direct {v1, v2, v11, v13, v3}, Lprl;-><init>(Lprf;[B[F[F)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v7, 0x0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v0, v4}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_57
    invoke-interface {v0, v6}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_58
    if-le v15, v7, :cond_8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aget-object v2, v18, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5a
    sget-object v5, Lnyl;->o:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_5b
    if-nez v0, :cond_9

    nop

    goto/32 :goto_49

    nop

    :cond_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5c
    move v9, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5d
    move-object/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v3, [I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_60
    array-length v10, v2

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    array-length v9, v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_63
    check-cast v5, [F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_64
    const-string v2, "faceLandmarkDepth length is too short:"

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v0, v7}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v7, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_69
    add-int v12, v10, v10

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v2, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6b
    if-lt v8, v10, :cond_b

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6c
    invoke-static {v5, v2, v13, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v12, "faceLandmarkXy length is too short:"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int v2, v9, v9

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_70
    array-length v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_71
    const/4 v7, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_3e

    nop

    nop
.end method


# virtual methods
.method public final a(B)Landroid/graphics/PointF;
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lprl;->e:[Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Landmark:"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_8
    const/16 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object p0, p1, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    const-string v1, " not detected for this face."

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    iget-object p0, p0, Lprl;->f:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    aput-object v0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    aput-object v1, v2, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lprl;->f:Ljava/util/HashMap;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x3

    nop

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

.method public final f()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    :goto_2
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final g()Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lprl;->a(B)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "{ bounds: %s, score: %s, id: %d }"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

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

    :goto_8
    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lprl;->a:Lprf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lprf;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget v0, v0, Lprf;->b:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
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

    nop

    nop

    :goto_12
    iget-object v0, p0, Lprl;->a:Lprf;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
