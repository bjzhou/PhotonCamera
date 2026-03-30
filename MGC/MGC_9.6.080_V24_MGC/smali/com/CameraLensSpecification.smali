.class public Lcom/CameraLensSpecification;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final HWa:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MIa:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MIb:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MIc:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private static characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field public final A:Ljava/lang/Object;

.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final ca:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/util/ArrayMap;

.field public final ea:Ljava/lang/Object;

.field public final eb:Ljava/lang/Object;

.field public final ec:Ljava/lang/Object;

.field public final ed:Ljava/lang/Object;

.field public final f:Landroid/util/ArrayMap;

.field public final fa:I


# direct methods
.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(II)Z

    move-result v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v1, v2

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v6}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, [Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    check-cast v0, [Landroid/util/Size;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_5f

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v2, Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_13
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_17
    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v4, [Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget-object v1, v0, v2

    nop

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

    :goto_1f
    aget-object v2, v0, v2

    nop

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

    :goto_20
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_22
    new-instance v2, Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2a
    aget-object v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2b
    return-object v4

    nop

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Lolx;->aK([Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x12

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

    :goto_32
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move/from16 v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    array-length v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_37
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3b
    if-gt v1, v2, :cond_4

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, [I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    div-int/lit16 v1, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lcom/CameraLensSpecification;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2d

    nop

    nop

    :goto_42
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_43
    iget v0, v0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v2, Landroid/util/Size;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_47
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v5, 0x0

    nop

    :goto_49
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object v0

    nop

    nop

    nop

    .local v1, "b":I
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4e
    array-length v1, v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4f
    aget-object v6, p1, v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_50
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lcom/CameraLensSpecification;->ca:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_54
    iget v1, v0, Lpck;->b:I

    nop

    nop

    nop

    nop

    .local v0, "a":I
    goto/32 :goto_43

    nop

    nop

    :goto_55
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-lt v5, v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    div-int/lit8 v3, v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_58
    move/from16 v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_59
    mul-int/lit16 v1, v1, 0x9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-array v5, v5, [Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5c
    if-lt v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    mul-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget v3, p2, v2

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

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    if-lt v2, v1, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_10
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/util/Map;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v4, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_1

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    aput v3, v0, v5

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

    :goto_1b
    array-length v1, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    new-array v0, v0, [I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "x"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    div-float/2addr v1, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    :goto_e
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const v1, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    check-cast p1, Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    div-float/2addr v1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

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

    :goto_17
    const v2, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Ljava/lang/String;

    nop

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

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
.end method

.method private 166277962e993c138a6b1f0c9b571cc0m(II)Z
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    div-float v0, p1, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-lez v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v1, 0x3fc66666    # 1.55f

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

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    cmpl-float v2, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

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

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop
.end method

.method private 84ab354920246c5f1ae31b2c628bca43m(Landroid/hardware/camera2/CameraCharacteristics$Key;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object p1, Lcom/samsung/CameraCharacteristics;->r0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, [J

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    aget-wide v1, p1, v0

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    aget-wide v2, p1, v1

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p1, Lcom/samsung/CameraCharacteristics;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    sget v0, Lcom/a;->aca:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, p1, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    :try_start_2
    sget-object p1, Lcom/samsung/CameraCharacteristics;->j:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, [I

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_d
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, p1, :cond_4

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

    nop

    :cond_4
    :try_start_3
    sget-object p1, Lcom/samsung/CameraCharacteristics;->X:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    :goto_14
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_16
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    const v0, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_4
    sget-object p1, Lcom/samsung/CameraCharacteristics;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    if-eq v0, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_7
    :goto_24
    :try_start_5
    sget-object p1, Lcom/samsung/CameraCharacteristics;->t0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/graphics/Rect;

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object v0

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    :goto_27
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_28
    return-object v0

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_b

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    if-eq v0, p1, :cond_9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_9
    :try_start_6
    sget-object p1, Lcom/samsung/CameraCharacteristics;->Z:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    sget-object p1, Lcom/samsung/CameraCharacteristics;->X:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_30
    if-eq v0, p1, :cond_a

    nop

    goto/32 :goto_26

    nop

    :cond_a
    :try_start_7
    sget-object p1, Lcom/samsung/CameraCharacteristics;->F:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_25

    nop

    nop

    :goto_31
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v0, p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_b
    :try_start_8
    sget-object p1, Lcom/samsung/CameraCharacteristics;->v0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, [I

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    aget v1, p1, v0

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    aget v2, p1, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    :goto_35
    const v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_36
    goto/32 :goto_32

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3
    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4
    const-string/jumbo v2, "qcom"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8
    new-array v1, v1, [Ljava/lang/Class;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v2, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lcom/CameraLensSpecification;->characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    aput-object v2, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v1, Lcom/CameraLensSpecification;->MIb:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "Y29tLmh1YXdlaS5kZXZpY2UuY2FwYWJpbGl0aWVzLmh3Q2FwdHVyZVJhd1N0cmVhbUNvbmZpZ3VyYXRpb25z"

    nop

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

    :goto_14
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    :goto_16
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-class v2, Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lcom/CameraLensSpecification;->characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "YW5kcm9pZC5oYXJkd2FyZS5jYW1lcmEyLkNhbWVyYUNoYXJhY3RlcmlzdGljcyRLZXk="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object v2, v1, v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "b3JnLmNvZGVhdXJvcmEucWNhbWVyYTMucXVhZHJhX2NmYS5hY3RpdmVBcnJheVNpemU"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_25
    sget-object v0, Lcom/CameraLensSpecification;->characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput-object v2, v1, v3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sput-object v1, Lcom/CameraLensSpecification;->MIc:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aput-object v2, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aput-object v2, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sput-object v1, Lcom/CameraLensSpecification;->MIa:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_31
    aput-object v2, v1, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Ljava/lang/String;

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

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_38
    const-string v2, "eGlhb21pLnNjYWxlci5hdmFpbGFibGVTdXBlclJlc29sdXRpb25TdHJlYW1Db25maWd1cmF0aW9ucw"

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3a
    const-string v2, "mt[0-9]*"

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_39

    nop

    :goto_3e
    goto/32 :goto_38

    nop

    nop

    :goto_3f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_40
    aput-object v2, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_41
    const-string v2, "b3JnLmNvZGVhdXJvcmEucWNhbWVyYTMucXVhZHJhX2NmYS5hdmFpbGFibGVTdHJlYW1Db25maWd1cmF0aW9ucw"

    nop

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

    :goto_42
    if-nez v0, :cond_3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aput-object v2, v1, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_45
    aput-object v2, v1, v3

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

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-class v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_50
    aput-object v2, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_51
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_52
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_53
    const-class v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sput-object v1, Lcom/CameraLensSpecification;->HWa:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_59
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5b
    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5c
    sput-object v0, Lcom/CameraLensSpecification;->characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_5d
    const v0, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5e
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_61
    const/4 v1, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v0, Lcom/CameraLensSpecification;->characteristicsKeyConstructor:Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_63
    const-string v2, "Y29tLnhpYW9taS5zY2FsZXIuYXZhaWxhYmxlU3VwZXJSZXNvbHV0aW9uU3RyZWFtQ29uZmlndXJhdGlvbnM"

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8

    goto/32 :goto_7f

    nop

    nop

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2
    iget v3, v2, Lpck;->a:I

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v7, "FIX_SENSOR_INFO_PHYSICAL_SIZE"

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v7, v2}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_44

    nop

    nop

    :goto_6
    iput-object v2, p0, Lcom/CameraLensSpecification;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v7, v4}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/CameraLensSpecification;->A:Ljava/lang/Object;

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

    nop

    :goto_a
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v6, Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v4, 0x3ff

    nop

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

    :goto_13
    new-instance v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    aget v3, v3, v6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_18
    aget v5, v3, v4

    nop

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c4

    nop

    nop

    :goto_19
    invoke-direct {p0, v7, v5}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v4, " "

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, [Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v7, "FIX_SENSOR_INFO_PIXEL_ARRAY_SIZE"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    if-nez v7, :cond_1

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v3, v3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_24
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_b2

    nop

    nop

    :goto_25
    const-string v1, "cHJlZl9jYW1lcmFfcmVzb2x1dGlvbg=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_0
    :goto_2b
    goto/32 :goto_e6

    nop

    nop

    :goto_2c
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v6, Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v7, v5}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_82

    nop

    nop

    :goto_30
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_31
    iput-object v5, p0, Lcom/CameraLensSpecification;->eb:Ljava/lang/Object;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    :goto_33
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    array-length v2, v3

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_38
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_1
    :goto_39
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_3a
    check-cast v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_7a

    nop

    :cond_2
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v4, v3, v2}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3f
    aget v5, v3, v6

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_40
    invoke-direct {p0, v6}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    aget v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_42
    iget v3, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_43
    const-string v2, "max"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v3, p0, Lcom/CameraLensSpecification;->ca:Ljava/lang/Object;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sub-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_49
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v4, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 v4, 0x184

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v6, p0, Lcom/CameraLensSpecification;->e:Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v2}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    array-length v5, v3

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_50
    new-array v3, v3, [I

    nop

    fill-array-data v3, :array_1

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lcom/CameraLensSpecification;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_52
    new-array v3, v3, [I

    nop

    fill-array-data v3, :array_2

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    aget v4, v3, v6

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_54
    const-string v7, "FIX_SENSOR_INFO_ACTIVE_ARRAY_SIZE"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :cond_3
    :try_start_2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v5, v4, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_c0

    nop

    nop

    :goto_57
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_58
    const-string v7, "FIX_SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_4
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v4, "FORMAT = "

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_2
    goto/32 :goto_6d

    nop

    nop

    :goto_5c
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_ab

    nop

    :goto_5e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v3, "HUAWEI_CAPTURE_RAW_STREAM_CONFIGURATIONS"

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_60
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d6

    nop

    nop

    :goto_61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_62
    const-string v4, "ID = "

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_63
    aget v2, v3, v2

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v3, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v6, v4, v3}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v7, "FIX_Landroid/graphics/Rect; = SENSOR_INFO_ACTIVE_ARRAY_SIZE"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_68
    const/4 v4, 0x0

    nop

    :goto_69
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6a
    array-length v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v4, "SIZE = "

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    :catchall_3
    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v2, p0, Lcom/CameraLensSpecification;->d:Ljava/lang/Object;

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

    :goto_6f
    div-float/2addr v3, v4

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_70
    sub-int/2addr v5, v3

    nop

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

    :goto_71
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_72
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_74
    iput-object p1, p0, Lcom/CameraLensSpecification;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_75
    if-ne v2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_7
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v2, 0x3

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v6, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_7e
    new-instance v5, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_7f
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_80
    iput-object v6, p0, Lcom/CameraLensSpecification;->f:Landroid/util/ArrayMap;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_82
    new-instance v4, Landroid/util/Size;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    add-int/lit8 v3, v3, -0x1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_84
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-object v4, p0, Lcom/CameraLensSpecification;->ca:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_86
    invoke-direct {p0, v7, v4}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_87
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_89
    sget-object v0, Lcom/a;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput v2, p0, Lcom/CameraLensSpecification;->fa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_8b
    sget v3, Lcom/a;->ae:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_8c
    invoke-direct {p0, v2, v3}, Lcom/CameraLensSpecification;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

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

    :goto_8d
    goto/32 :goto_ac

    nop

    :goto_8e
    if-lt v4, v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8f
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_90
    new-array v3, v3, [I

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput v2, p0, Lcom/CameraLensSpecification;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_92
    new-array v4, v4, [Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_93
    goto/16 :goto_46

    nop

    nop

    :catchall_4
    :cond_a
    :goto_94
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v1}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_c9

    nop

    nop

    :goto_98
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_9a
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_9d
    iput-object v4, p0, Lcom/CameraLensSpecification;->ed:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9e
    invoke-direct {p0, v6, p1}, Lcom/CameraLensSpecification;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-ne v2, v3, :cond_b

    nop

    goto/32 :goto_7a

    nop

    :cond_b
    goto/32 :goto_7b

    nop

    nop

    :goto_a0
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez v3, :cond_c

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_c
    :try_start_4
    sget-object v3, Lcom/CameraLensSpecification;->HWa:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_a

    nop

    nop

    check-cast v3, [I

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_a4
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_a5
    new-instance v4, Landroid/util/SizeF;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v2, :cond_d

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a9
    aget v3, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_be

    nop

    :goto_ac
    goto/32 :goto_e1

    nop

    nop

    :goto_ad
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_ae
    move-object/from16 v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_af
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :cond_e
    :goto_b1
    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v5, v0}, Lcom/CameraLensSpecification;->84ab354920246c5f1ae31b2c628bca43m(Landroid/hardware/camera2/CameraCharacteristics$Key;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    :goto_b2
    const-string v2, "d2xfa2V5"

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_b6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b7
    invoke-static {v2}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    check-cast v3, [I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_bb
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v2, Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_bd
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x25
        0x20
        0x24
        0x26
    .end array-data

    :array_1
    .array-data 4
        0x23
        0x100
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x3
        0x4
        0x5
    .end array-data

    :goto_be
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    :catchall_5
    :goto_c2
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c4
    if-nez v6, :cond_f

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_c5
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_c6
    const-string v3, "HUAWEI_CAPTURE_RAW_STREAM_CONFIGURATIONS"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c8
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_c9
    iput-object v2, p0, Lcom/CameraLensSpecification;->ea:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_cc
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_80

    nop

    nop

    :goto_cd
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_ce
    const/4 v6, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    new-array v3, v3, [I

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_d1
    div-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_d2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_d3
    const/16 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_d4
    iget v4, v2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_d5
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_d6
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_d8
    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_d9
    aput-object v6, v4, v3

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a8

    nop

    nop

    :goto_db
    iput-object v4, p0, Lcom/CameraLensSpecification;->ec:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-static {v2}, Lolx;->aK([Landroid/util/Size;)Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_de
    const v4, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v4, v3, v2}, Landroid/util/SizeF;-><init>(FF)V

    goto/32 :goto_36

    nop

    nop

    :goto_e0
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_58

    nop

    nop

    :goto_e1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_e2
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const-string v4, "Not Support ID = "

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_93

    nop

    nop

    :goto_e5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    aput-object v0, p1, v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-array p1, p1, [Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    check-cast p2, Ljava/lang/String;

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

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p2}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x1

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

    :goto_13
    const-string v1, ""

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

    :goto_14
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "cmF3X3Jlc19rZXk"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A()Z
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_5
    const-string v0, "MDI1MkMwMENfbnVsbF9wdGhjcl9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/CameraLensSpecification;->C()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/util/Map;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_17
    const/16 v1, 0x25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

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
.end method

.method public final B()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xfff

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x20

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

    :goto_2
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lcom/CameraLensSpecification;->fa:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

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

    nop

    :cond_0
    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/CameraLensSpecification;->ca:Ljava/lang/Object;

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

    :goto_b
    const-string v0, "cmF3X2tleQ=="

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v1, v1, [I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v1

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lcom/CameraLensSpecification;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final C()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object v1, p0, Lcom/CameraLensSpecification;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    :goto_e
    goto :goto_17

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0xfff

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

    :goto_13
    new-instance v1, Ljava/util/HashMap;

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

    :goto_14
    iget-object v2, p0, Lcom/CameraLensSpecification;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/CameraLensSpecification;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    iget v0, p0, Lcom/CameraLensSpecification;->fa:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v2, Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    :goto_20
    const-string v0, "cmF3X2tleQ=="

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_25
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
