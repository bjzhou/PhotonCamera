.class public final Lih;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Typeface;

.field public c:Z

.field private final d:Landroid/widget/TextView;

.field private e:Llt;

.field private f:Llt;

.field private g:Llt;

.field private h:Llt;

.field private i:Llt;

.field private j:Llt;

.field private final k:Lim;

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;Landroidx/wear/ambient/AmbientDelegate;)Z
    .locals 19

    goto/32 :goto_33

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    :goto_1
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2
    iput-object v1, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v7, 0x0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_4a

    nop

    nop

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, v0, Lih;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v10, v0, v6, v9, v11}, Lif;-><init>(Lih;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget v15, v0, Lih;->a:I

    nop

    nop

    iget-object v6, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/content/res/TypedArray;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    nop

    nop

    nop

    nop

    if-nez v13, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_2
    iget-object v6, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    new-instance v6, Landroid/util/TypedValue;

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    :cond_3
    iget-object v6, v1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    iget-object v9, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    sget-object v11, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    move-object v11, v6

    nop

    nop

    check-cast v11, Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/content/Context;->isRestricted()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_4

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    move-object v14, v9

    nop

    nop

    nop

    nop

    check-cast v14, Landroid/util/TypedValue;

    nop

    move-object v12, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Landroid/content/Context;

    nop

    nop

    nop

    nop

    const/16 v17, 0x1

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    nop

    move-object/from16 v16, v10

    nop

    nop

    invoke-static/range {v12 .. v18}, Ldtx;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILdtw;ZZ)Landroid/graphics/Typeface;

    move-result-object v5

    nop

    nop

    nop

    :goto_c
    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget v6, v0, Lih;->l:I

    nop

    nop

    nop

    nop

    nop

    if-eq v6, v4, :cond_6

    nop

    nop

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    nop

    nop

    iget v6, v0, Lih;->l:I

    nop

    iget v9, v0, Lih;->a:I

    nop

    nop

    nop

    nop

    and-int/2addr v9, v3

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    nop

    nop

    move v9, v8

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_5
    move v9, v7

    nop

    :goto_d
    invoke-static {v5, v6, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iput-object v5, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    iput-object v5, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    nop

    :cond_7
    :goto_e
    iget-object v5, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    if-nez v5, :cond_8

    nop

    move v5, v8

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_8
    move v5, v7

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v5, v0, Lih;->c:Z

    nop
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    iget-object v5, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v1, v3, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lew;->a:[I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v5, v0, Lih;->b:Landroid/graphics/Typeface;

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

    :goto_16
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v5

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

    :goto_17
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v6}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_47

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    iput v2, v0, Lih;->a:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    iput v2, v0, Lih;->l:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v0, Lih;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_20
    return v8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v2, v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v11, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_28
    if-ne v2, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2b
    if-eqz v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v2, v0, Lih;->l:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v8, v8}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v2, 0xe

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

    :goto_32
    and-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x1a

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

    :goto_34
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_d
    goto/32 :goto_2c

    nop

    nop

    :goto_35
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_38
    iget v6, v0, Lih;->l:I

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

    nop

    :goto_39
    new-instance v10, Lif;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v10, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3d
    if-eqz v10, :cond_e

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v1, v0, Lih;->b:Landroid/graphics/Typeface;

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

    :goto_3f
    if-eqz v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2, v4}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_41
    invoke-virtual {v1, v6}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_42
    if-ne v1, v8, :cond_10

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_12

    nop

    nop

    :goto_43
    goto/32 :goto_5b

    nop

    :goto_44
    const/16 v6, 0xf

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

    :goto_45
    iput-boolean v7, v0, Lih;->c:Z

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

    :goto_46
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v8, v9, :cond_11

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_29

    nop

    nop

    :goto_49
    iput-object v1, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    :goto_4a
    goto/32 :goto_5c

    nop

    nop

    :goto_4b
    if-ne v1, v2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4c
    and-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v8}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

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

    :goto_4e
    if-lez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5a

    nop

    :goto_4f
    const/16 v2, 0x10

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v2, v6

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v7, v8

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_62

    nop

    nop

    :goto_54
    if-nez v3, :cond_14

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_52

    nop

    nop

    :goto_55
    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_56
    return v7

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v2, 0x3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v5, :cond_15

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_1e

    nop

    nop

    :goto_5c
    return v8

    nop

    nop

    :goto_5d
    goto/32 :goto_56

    nop

    nop

    :goto_5e
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5f
    new-instance v11, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_60
    iget v2, v0, Lih;->a:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_61
    iget v9, v0, Lih;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_62
    invoke-static {v1, v2, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v2, v0, Lih;->a:I

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

    nop

    :goto_64
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/16 v2, 0xa

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_66
    iget v4, v0, Lih;->a:I

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

    :goto_67
    iput v2, v0, Lih;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_69
    const/4 v4, -0x1

    nop

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

    nop

    :goto_6a
    invoke-virtual {v1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6b
    iput-object v2, v0, Lih;->m:Ljava/lang/String;

    nop

    :goto_6c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(Z)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

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

    :goto_2
    iget-object p1, p0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    iget v1, p0, Lih;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

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

    nop

    :goto_d
    iget-object p1, p0, Lih;->m:Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lih;->b:Landroid/graphics/Typeface;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lih;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p0, Lih;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    goto :goto_14

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    invoke-static {p0, p1}, Lig;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput v0, p0, Lih;->a:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lih;->k:Lim;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lih;->m:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lim;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lih;->l:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1}, Lim;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lih;->d:Landroid/widget/TextView;

    nop

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

    nop
.end method

.method public static b(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 2

    goto/32 :goto_d

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-static {p0, v1}, Lig;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, v0}, Lig;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_10
    goto/32 :goto_4

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

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lig;->a:Lxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

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

    :goto_15
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lih;->d:Landroid/widget/TextView;

    nop

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

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2, p0}, Lle;->g(Landroid/graphics/drawable/Drawable;Llt;[I)V

    :goto_6
    goto/32 :goto_1

    nop

    nop
.end method

.method private static f(Landroid/content/Context;Lhn;I)Llt;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p0, p1, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0, p2}, Lhn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p1}, Llt;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Llt;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x1

    nop

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

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    iput-boolean p2, p1, Llt;->d:Z

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

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v3, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lih;->i:Llt;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_8
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lih;->h:Llt;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v2, v3}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    iget-object v0, p0, Lih;->f:Llt;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lih;->e:Llt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const/4 v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Lih;->h:Llt;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-object v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_1a
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lih;->g:Llt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v3, v4}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p0, Lih;->i:Llt;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    invoke-direct {p0, v3, v4}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    goto/32 :goto_35

    nop

    nop

    :goto_20
    goto/16 :goto_33

    nop

    :goto_21
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lih;->j:Llt;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v0, v3}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, p0, Lih;->e:Llt;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_28
    iget-object v0, p0, Lih;->d:Landroid/widget/TextView;

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

    :goto_29
    iget-object v4, p0, Lih;->f:Llt;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    invoke-direct {p0, v3, v4}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    aget-object v3, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lih;->j:Llt;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v0, v1}, Lih;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/graphics/drawable/Drawable;Llt;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Lih;->g:Llt;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :goto_33
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_35
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 20

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v6, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    :goto_2
    const/4 v14, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v13, v3}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v13, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v17, :cond_0

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v6, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v4, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aput v4, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_232

    nop

    nop

    nop

    :goto_d
    if-lt v15, v7, :cond_1

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_e
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    new-array v2, v1, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_113

    nop

    :goto_13
    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_22e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v13, v5}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "px) is less or equal to minimum auto-size text size ("

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v2, v6, v9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_83

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_244

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_24
    move-object/from16 v0, p0

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_27
    move/from16 v16, v3

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1a9

    nop

    nop

    :goto_2c
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v11, v10, v8}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v6, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v13, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_31
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aput v19, v14, v15

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v2, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_34
    iput-object v2, v0, Lih;->f:Llt;

    nop

    :goto_35
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v13, v6}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_3a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    :goto_3b
    goto/32 :goto_17b

    nop

    nop

    :goto_3c
    invoke-virtual {v13, v15}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v15}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v17

    nop

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

    :goto_3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3f
    iget v2, v13, Lim;->b:F

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_40
    const/4 v3, -0x1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_4

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_231

    nop

    :goto_42
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_be

    nop

    nop

    :goto_43
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_45
    if-nez v10, :cond_6

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_46
    iget v2, v13, Lim;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, v13}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_49
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_da

    nop

    nop

    :goto_4b
    iget-object v3, v13, Lim;->e:[I

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v17, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v1, Lew;->w:[I

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v3, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v8, v2, v9, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move/from16 v6, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_52
    if-eqz v2, :cond_9

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    :cond_9
    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v3, v3, Lim;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_54
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    :cond_a
    :goto_55
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    :goto_57
    invoke-static {v0, v1}, Ldvz;->c(Landroid/widget/TextView;I)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_153

    nop

    :goto_59
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v13, :cond_b

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

    :cond_b
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :goto_5c
    goto/32 :goto_1d1

    nop

    nop

    :goto_5d
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_5e
    iput v14, v13, Lim;->c:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_256

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-float/2addr v4, v6

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v2, :cond_c

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_c
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_63
    if-ne v4, v2, :cond_d

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

    nop

    :cond_d
    goto/32 :goto_19e

    nop

    nop

    nop

    :goto_64
    int-to-float v3, v3

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v8, 0x7

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_67
    float-to-int v1, v3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1, v5, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    array-length v2, v1

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v1, :cond_e

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_6b
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1, v13}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_6e
    if-nez v18, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v5, v19

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v13, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_bc

    nop

    nop

    :goto_71
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result v2

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Lih;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v1, v13, Lim;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v14}, Lim;->b([I)[I

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    :goto_77
    if-eq v7, v8, :cond_11

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v11, v10, v4}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_1dd

    nop

    nop

    :goto_79
    invoke-static {v2}, Lim;->b([I)[I

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    aget-object v5, v3, v8

    nop

    :goto_7b
    goto/32 :goto_178

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v4, p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_7d
    aget-object v2, v4, v9

    nop

    nop

    :goto_7e
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    cmpg-float v3, v5, v1

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-nez v3, :cond_12

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    :goto_82
    array-length v7, v3

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_83
    if-eqz v4, :cond_13

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_85
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v8, 0x3

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    int-to-float v14, v14

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_8a
    if-ne v5, v3, :cond_14

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_14
    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v6, v15, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

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

    :goto_8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_71

    nop

    nop

    :goto_8d
    iget v1, v13, Lim;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    :goto_8e
    invoke-virtual {v1, v5, v3}, Landroidx/wear/ambient/AmbientDelegate;->n(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :goto_90
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_92
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_94
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_95
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v6, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_a7

    nop

    :goto_99
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static/range {v1 .. v7}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget v3, v6, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-eqz v13, :cond_15

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_15
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    throw v0

    nop

    :goto_9e
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v2, :cond_16

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_14b

    nop

    nop

    :goto_a0
    iget-object v4, v0, Lih;->k:Lim;

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const/high16 v5, 0x41400000    # 12.0f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a2
    move v6, v2

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->n(II)I

    move-result v3

    nop

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

    :goto_a4
    cmpl-float v1, v3, v1

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct {v0, v10, v1}, Lih;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;Landroidx/wear/ambient/AmbientDelegate;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a6
    move v15, v12

    nop

    nop

    :goto_a7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a8
    iput v2, v13, Lim;->b:F

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_a9
    iput v4, v13, Lim;->d:F

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_aa
    if-nez v3, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_17
    goto/32 :goto_253

    nop

    nop

    nop

    :goto_ab
    int-to-float v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    :goto_ac
    return-void

    nop

    nop

    :goto_ad
    goto/32 :goto_74

    nop

    nop

    :goto_ae
    if-ne v6, v3, :cond_18

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v10, v8, v1}, Landroidx/wear/ambient/AmbientDelegate;->B(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-gtz v7, :cond_19

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_b1
    iget v2, v1, Lim;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_b4
    aget-object v5, v6, v8

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_210

    nop

    nop

    :goto_b6
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_b7
    invoke-static {v5}, Ldvu;->r(I)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v1, v13, Lim;->h:Landroid/content/Context;

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_ba
    sub-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v11, v10, v2}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_bc
    invoke-virtual {v1, v15}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v17

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_e6

    nop

    nop

    :goto_be
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const/4 v7, 0x3

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iput-boolean v12, v13, Lim;->f:Z

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    :goto_c1
    aget-object v2, v3, v9

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :goto_c4
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/16 v16, 0x1

    nop

    nop

    :goto_c6
    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    throw v0

    nop

    :goto_c8
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    :goto_ca
    aget-object v10, v3, v8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_cb
    const/16 v2, 0xd

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v1, v8, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_175

    nop

    nop

    :goto_ce
    goto/32 :goto_df

    nop

    nop

    :goto_cf
    return-void

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v2, :cond_1a

    nop

    goto/32 :goto_35

    nop

    :cond_1a
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v6, v3}, Landroid/widget/TextView;->setLineHeight(IF)V

    :goto_d3
    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_d4
    move/from16 v6, p2

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iput-boolean v14, v13, Lim;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_d6
    if-eqz v3, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    goto/16 :goto_121

    nop

    nop

    :goto_d8
    goto/32 :goto_120

    nop

    nop

    nop

    :goto_d9
    if-ne v8, v3, :cond_1c

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_2d

    nop

    nop

    :goto_da
    invoke-virtual {v13}, Lim;->a()Z

    move-result v2

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    cmpg-float v3, v4, v5

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_dc
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_dd
    move v14, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_de
    iget-object v1, v0, Lih;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v2, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_e0
    iget-object v2, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/16 v6, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v1, v2, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_e3
    goto/32 :goto_1d2

    nop

    nop

    nop

    :goto_e4
    aget-object v3, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    aget v14, v3, v12

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_e6
    invoke-virtual {v1, v12}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/4 v15, 0x3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    float-to-double v1, v1

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

    :goto_eb
    invoke-virtual {v13}, Lim;->a()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_ec
    move v6, v2

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v1, v12, v14}, Landroidx/wear/ambient/AmbientDelegate;->n(II)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    if-eqz v4, :cond_1d

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v3, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_f2
    if-lt v3, v1, :cond_1e

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    :cond_1e
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v7, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f4
    const-string v2, "Maximum auto-size text size ("

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v13, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f6
    const-string v6, "px) is less or equal to (0px)"

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_f7
    goto/16 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_f9
    goto/16 :goto_15c

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_54

    nop

    nop

    :goto_fb
    if-gtz v3, :cond_20

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :cond_20
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_fd
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_ff
    cmpg-float v1, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-direct {v0, v10, v1}, Lih;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;Landroidx/wear/ambient/AmbientDelegate;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iput v12, v13, Lim;->a:I

    nop

    :goto_102
    goto/32 :goto_159

    nop

    nop

    :goto_103
    iput-object v2, v0, Lih;->h:Llt;

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_105
    move v14, v12

    nop

    :goto_106
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_108
    goto/16 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10b
    cmpl-float v6, v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_10c
    move/from16 v9, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    if-gtz v3, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    if-nez v1, :cond_22

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :cond_22
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_2a

    nop

    nop

    :goto_111
    invoke-virtual {v13, v4}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_112
    move/from16 v16, v3

    nop

    :goto_113
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/16 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_118
    if-nez v14, :cond_23

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :goto_119
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_11b
    invoke-direct {v0, v12}, Lih;->19e596a3e324281407eb5c11093c0152m(Z)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    move v3, v12

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    :goto_11e
    iget-object v13, v0, Lih;->k:Lim;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    cmpl-float v2, v2, v3

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_120
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_122
    if-nez v2, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_24
    goto/32 :goto_24b

    nop

    nop

    :goto_123
    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;->n(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iput-object v2, v0, Lih;->j:Llt;

    nop

    nop

    :goto_125
    goto/32 :goto_204

    nop

    nop

    :goto_126
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static/range {v17 .. v17}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_128
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_129
    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :goto_12a
    const/4 v5, 0x6

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    if-nez v5, :cond_25

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    :cond_25
    :goto_12c
    goto/32 :goto_4f

    nop

    nop

    :goto_12d
    invoke-virtual {v1, v13, v12}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    if-eqz v5, :cond_26

    nop

    goto/32 :goto_b5

    nop

    :cond_26
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    if-nez v5, :cond_27

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :cond_27
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_130
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    :goto_131
    move v3, v12

    nop

    nop

    nop

    nop

    nop

    :goto_132
    goto/32 :goto_f2

    nop

    nop

    :goto_133
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_135
    iget-object v1, v13, Lim;->e:[I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget-object v2, v0, Lih;->k:Lim;

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_137
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_b

    nop

    nop

    :goto_139
    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    if-eq v9, v7, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    iput v5, v13, Lim;->c:F

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    if-nez v6, :cond_29

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_97

    nop

    nop

    :goto_13d
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_13e
    const/16 v5, 0x12

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iput v9, v13, Lim;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-virtual {v13, v3, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_142
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_143
    if-eqz v6, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :goto_144
    move-object/from16 v19, v3

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    nop

    :goto_145
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_146
    if-eqz v6, :cond_2b

    nop

    goto/32 :goto_116

    nop

    :cond_2b
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_147
    const/4 v3, -0x1

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    if-nez v2, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_14a
    if-ne v2, v3, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_229

    nop

    nop

    :goto_14b
    invoke-virtual {v13, v5, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    iget-object v3, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    if-nez v2, :cond_2e

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    :goto_151
    move v7, v12

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    :goto_152
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_153
    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_154
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    :goto_155
    move-object/from16 v8, p1

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v13, v7, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_158
    move v1, v12

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_159
    iget-object v1, v0, Lih;->k:Lim;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_15a
    move v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_15b
    invoke-virtual {v8, v6, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_15c
    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_15e
    new-array v14, v7, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    :goto_160
    invoke-static/range {v1 .. v7}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    :goto_161
    invoke-virtual {v13, v7}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v2

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_162
    goto/16 :goto_38

    nop

    :goto_163
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_164
    double-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    const/16 v17, 0x0

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_166
    iput-object v2, v0, Lih;->e:Llt;

    nop

    nop

    nop

    nop

    nop

    :goto_167
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_169
    check-cast v5, Landroid/content/res/TypedArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    if-nez v3, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    :cond_2f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_16b
    sget-object v3, Lig;->a:Lxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_16c
    move v14, v6

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    const/16 v13, 0x11

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    :goto_16e
    iput v3, v13, Lim;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_16f
    const/16 v2, 0xf

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_170
    const-string v3, "The auto-size step granularity ("

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_171
    goto/16 :goto_213

    nop

    nop

    nop

    :goto_172
    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    move v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_174
    invoke-virtual {v2, v1, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :goto_175
    goto/32 :goto_21f

    nop

    nop

    :goto_176
    const/4 v6, 0x2

    nop

    nop

    nop

    :goto_177
    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    :goto_178
    iget-object v4, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    :goto_179
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    sget-object v2, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->AvCCzIaHEPiLMJT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_17e
    if-gtz v7, :cond_30

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    iget-boolean v1, v13, Lim;->f:Z

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    sget-object v1, Lew;->h:[I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    iget v4, v13, Lim;->c:F

    nop

    goto/32 :goto_215

    nop

    nop

    :goto_182
    if-eqz v2, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_48

    nop

    nop

    :goto_183
    iget-object v3, v0, Lih;->k:Lim;

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

    :goto_184
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_185
    if-eqz v1, :cond_32

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    goto/16 :goto_138

    nop

    :goto_187
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_188
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v13, v12, v14}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_18a
    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_18c
    iput-object v2, v0, Lih;->g:Llt;

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_217

    nop

    nop

    nop

    nop

    :goto_18e
    aget-object v6, v3, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    iget-object v1, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_190
    goto/16 :goto_129

    nop

    nop

    nop

    :goto_191
    goto/32 :goto_128

    nop

    nop

    :goto_192
    invoke-virtual {v1, v3}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v6

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v13, v15, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_194
    if-gtz v7, :cond_33

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    :cond_33
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    goto/16 :goto_132

    nop

    nop

    nop

    nop

    :goto_196
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :goto_198
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_199
    invoke-static {v10, v11, v2}, Lih;->f(Landroid/content/Context;Lhn;I)Llt;

    move-result-object v2

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_19b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_19c
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_19d
    if-nez v2, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    :cond_34
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    iget-object v1, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_19f
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    :goto_1a0
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    if-gt v5, v4, :cond_35

    nop

    goto/32 :goto_e3

    nop

    nop

    :cond_35
    goto/32 :goto_23c

    nop

    nop

    nop

    :goto_1a3
    if-nez v6, :cond_36

    nop

    goto/32 :goto_187

    nop

    :cond_36
    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    aget-object v4, v6, v8

    nop

    nop

    :goto_1a5
    goto/32 :goto_12e

    nop

    nop

    :goto_1a6
    move v3, v12

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_1a7
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    iget v1, v13, Lim;->d:F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1a9
    const/16 v4, 0x9

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    if-nez v4, :cond_37

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_1ac
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    if-nez v1, :cond_38

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    :cond_38
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    const/4 v15, 0x0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v11, v10, v6}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :goto_1b3
    cmpl-float v1, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    :goto_1b4
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :goto_1b5
    invoke-virtual {v11, v10, v5}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

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

    :goto_1b7
    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_1b8
    if-gtz v1, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_13f

    nop

    nop

    :goto_1b9
    iget-object v1, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :goto_1ba
    if-eqz v1, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    :cond_3a
    :goto_1bb
    goto/32 :goto_1a8

    nop

    nop

    :goto_1bc
    if-eqz v2, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    :cond_3b
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_1bd
    if-eqz v2, :cond_3c

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1be
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_1bf
    if-nez v2, :cond_3d

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_193

    nop

    nop

    nop

    :goto_1c0
    iput-object v2, v0, Lih;->i:Llt;

    nop

    :goto_1c1
    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :goto_1c2
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_1c3
    iget v4, v4, Lim;->b:F

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    :goto_1c4
    invoke-static {}, Lhn;->d()Lhn;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_1c5
    iput v9, v13, Lim;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    move-object/from16 v4, p1

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    iput v3, v13, Lim;->b:F

    nop

    nop

    nop

    nop

    :goto_1c8
    goto/32 :goto_8f

    nop

    nop

    :goto_1c9
    goto/16 :goto_258

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    goto/32 :goto_257

    nop

    nop

    :goto_1cb
    invoke-static {v2, v4}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    and-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    check-cast v6, Landroid/content/res/TypedArray;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_1ce
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_1d0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1d1
    if-ne v5, v2, :cond_3e

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    aget-object v6, v4, v12

    nop

    nop

    :goto_1d4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1d5
    invoke-static {v10, v8, v1, v9, v12}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v13

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d6
    if-eqz v7, :cond_3f

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    :goto_1d7
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    if-eq v6, v1, :cond_40

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_216

    nop

    nop

    nop

    :goto_1d9
    goto/16 :goto_138

    nop

    nop

    nop

    nop

    :goto_1da
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_1db
    invoke-virtual {v1, v2, v3, v4, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_1dc
    if-nez v16, :cond_41

    nop

    nop

    goto/32 :goto_21d

    nop

    :cond_41
    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    goto/16 :goto_239

    nop

    :goto_1de
    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    const/16 v16, 0x1

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

    :goto_1e0
    invoke-virtual {v1, v15}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v13

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    iget-object v4, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    :goto_1e2
    if-eq v1, v9, :cond_42

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_1e3
    iput-object v1, v13, Lim;->e:[I

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    :goto_1e4
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    sget-object v16, Lew;->i:[I

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_1e7
    goto/16 :goto_240

    nop

    nop

    :goto_1e8
    goto/32 :goto_23f

    nop

    nop

    nop

    :goto_1e9
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_1ea
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_1eb
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    if-nez v4, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    :cond_43
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    iget v3, v6, Landroid/util/TypedValue;->data:I

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    iget-object v1, v1, Lim;->e:[I

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

    :goto_1f0
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    aget-object v3, v4, v8

    nop

    nop

    nop

    :goto_1f2
    goto/32 :goto_1f6

    nop

    nop

    :goto_1f3
    move-object/from16 v1, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_1f4
    if-eqz v7, :cond_44

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_1f6
    iget-object v8, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_1f7
    if-nez v2, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    :goto_1f8
    const/4 v3, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f9
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8c

    nop

    nop

    :goto_1fc
    if-eqz v6, :cond_46

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_6c

    nop

    nop

    :goto_1fd
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-static {v4}, Ldvu;->r(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_200
    mul-float/2addr v6, v5

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_201
    add-int/2addr v7, v14

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    :goto_202
    if-eqz v5, :cond_47

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_47
    goto/32 :goto_7a

    nop

    nop

    :goto_203
    sget-object v4, Lew;->h:[I

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_204
    invoke-virtual {v13}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_205
    if-ne v2, v3, :cond_48

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_bb

    nop

    nop

    :goto_206
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :goto_207
    move/from16 v7, v17

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_208
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_209
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_20a
    invoke-virtual {v13, v4, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_20b
    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    nop

    nop

    :goto_20c
    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_20d
    iput-object v3, v13, Lim;->e:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_20e
    goto/16 :goto_1fe

    nop

    :goto_20f
    goto/32 :goto_1fd

    nop

    nop

    nop

    :goto_210
    invoke-virtual {v3, v7, v2, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_211
    iget-object v1, v13, Lim;->g:Landroid/widget/TextView;

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

    nop

    nop

    :goto_212
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    :goto_213
    goto/32 :goto_2e

    nop

    nop

    :goto_214
    if-nez v2, :cond_49

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :cond_49
    goto/32 :goto_230

    nop

    nop

    nop

    :goto_215
    iget v5, v13, Lim;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_216
    iget-object v0, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_217
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_218
    invoke-virtual {v1, v15}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v17

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_219
    if-eqz v6, :cond_4a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :cond_4a
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_21a
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_21b
    if-ne v1, v14, :cond_4b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :cond_4b
    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    invoke-virtual {v0, v3}, Lih;->e(Z)V

    :goto_21d
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21e
    iget v7, v6, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    sget-object v1, Lew;->i:[I

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_220
    const/4 v8, 0x3

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_221
    move-object v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_222
    aget-object v7, v6, v12

    nop

    nop

    :goto_223
    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_224
    iget-object v4, v0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_225
    const/16 v15, 0x12

    nop

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    :goto_226
    const/4 v14, -0x1

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_227
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_228
    move-object/from16 v3, v16

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_229
    invoke-virtual {v11, v10, v2}, Lhn;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_22a
    if-eqz v2, :cond_4c

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4c
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_22b
    const/16 v2, 0xb

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_22c
    sget-object v2, Lew;->i:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    :goto_22e
    goto/32 :goto_154

    nop

    nop

    :goto_22f
    invoke-static {v10, v1, v3}, Landroidx/wear/ambient/AmbientDelegate;->A(Landroid/content/Context;I[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_230
    invoke-virtual {v13, v6, v12}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v2

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

    :goto_231
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_232
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_233
    aget-object v5, v4, v7

    nop

    nop

    :goto_234
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_235
    if-nez v2, :cond_4d

    nop

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :cond_4d
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_236
    aget v3, v3, v7

    nop

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

    nop

    :goto_237
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_238
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_239
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_23a
    const/high16 v4, 0x42e00000    # 112.0f

    nop

    goto/32 :goto_20b

    nop

    nop

    :goto_23b
    move-object/from16 v17, v7

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    sub-int/2addr v5, v2

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_23d
    const-string v2, "px)"

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_23e
    if-eqz v2, :cond_4e

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :cond_4e
    goto/32 :goto_f0

    nop

    nop

    :goto_23f
    move v7, v9

    nop

    :goto_240
    goto/32 :goto_224

    nop

    nop

    nop

    nop

    nop

    :goto_241
    if-gtz v2, :cond_4f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    :cond_4f
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_242
    add-int/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_243
    if-ne v4, v3, :cond_50

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    :cond_50
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_244
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_245
    invoke-static {v10, v8, v1, v9, v12}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_246
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_247
    iget v2, v2, Lim;->c:F

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_248
    move v15, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :goto_249
    const/16 v3, 0x13

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    const/4 v8, 0x5

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_24b
    iget-object v1, v0, Lih;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_24c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_24d
    cmpl-float v7, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    :goto_24e
    sget-object v3, Lew;->w:[I

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    goto/16 :goto_102

    nop

    nop

    :goto_250
    goto/32 :goto_101

    nop

    nop

    :goto_251
    iput v2, v13, Lim;->a:I

    nop

    nop

    :goto_252
    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_253
    invoke-virtual {v1, v13, v12}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_254
    if-eqz v1, :cond_51

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_51
    goto/32 :goto_3a

    nop

    nop

    :goto_255
    const/4 v6, 0x0

    nop

    nop

    :goto_256
    goto/32 :goto_66

    nop

    nop

    :goto_257
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_258
    goto/32 :goto_16f

    nop

    nop
.end method

.method public final d(Landroid/content/Context;I)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, v2, v0}, Landroidx/wear/ambient/AmbientDelegate;->n(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lih;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lih;->19e596a3e324281407eb5c11093c0152m(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, p2}, Lih;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;Landroidx/wear/ambient/AmbientDelegate;)Z

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const/4 v0, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->A(Landroid/content/Context;I[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lih;->e(Z)V

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    const v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lew;->w:[I

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

    :goto_1b
    const v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method final e(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lih;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method
