.class public final Lcom/google/android/apps/camera/moments/api/GroupPhotoUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Llsc;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/apps/camera/moments/api/GroupPhotoUtils;->b(Llsc;F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

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

.method public static b(Llsc;F)I
    .locals 12

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v10, v11

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v7, v1, :cond_0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    mul-int/2addr v10, v9

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v11, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Llsc;->q:[Llsf;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    array-length v1, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

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

    :goto_d
    cmpg-float v10, v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_5d

    nop

    nop

    :goto_f
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    if-eq v10, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    int-to-float v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_13
    move v8, v7

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_16
    int-to-float v11, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    if-ne v3, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v10, :cond_3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    if-lt v8, v10, :cond_4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v9, v9, Llsf;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    const/16 v4, 0x10e

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    :goto_1f
    int-to-float v1, v8

    nop

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

    :goto_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

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

    :goto_26
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    if-gtz v0, :cond_7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v10, v9, Llsf;->k:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    iget-object v10, v9, Llsf;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2f
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_30
    if-nez v1, :cond_8

    nop

    goto/32 :goto_4d

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v9, v0, v7

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

    :goto_36
    goto/32 :goto_6

    nop

    nop

    :goto_37
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v3, v4, :cond_9

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

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v10, v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3c
    const/16 v5, 0x5a

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_54

    nop

    nop

    :goto_3f
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    :goto_40
    goto/32 :goto_12

    nop

    nop

    :goto_41
    if-eqz v8, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_44

    nop

    nop

    :goto_43
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_44
    move v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_45
    const v11, 0x3fd9999a    # 1.7f

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4a
    if-lt v2, p0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v3, p0, Llsc;->s:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return p1

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v10, v9, Llsf;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_50
    const v1, 0x3ea8f5c3    # 0.33f

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_51
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_52
    move v8, v10

    nop

    nop

    :goto_53
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v10, v9, Llsf;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    mul-float/2addr v10, v11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_14

    nop

    nop

    :goto_57
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v10, p0, Llsc;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5a
    if-ltz v10, :cond_d

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move p1, v2

    nop

    :goto_5d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5f
    cmpl-float v10, v10, v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
