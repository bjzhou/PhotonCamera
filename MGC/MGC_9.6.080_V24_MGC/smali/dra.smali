.class public final Ldra;
.super Ldqw;
.source "PG"


# instance fields
.field public f:I

.field final g:Ldqz;

.field private h:[Ldrb;

.field private i:[Ldrb;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldra;->i:[Ldrb;

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

    :goto_1
    const/4 p1, 0x0

    nop

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array p1, p1, [Ldrb;

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

    :goto_4
    new-array v0, p1, [Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ldra;->h:[Ldrb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0x80

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
    iput-object p1, p0, Ldra;->g:Ldqz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ldqw;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput p1, p0, Ldra;->f:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0}, Ldqz;-><init>(Ldra;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ldqz;

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
.end method


# virtual methods
.method public final d(Ldqx;Ldqw;Z)V
    .locals 16

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    aput v13, v5, v10

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5, v7}, Ldra;->n(Ldrb;)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    if-lt v10, v12, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    if-ltz v5, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    goto :goto_d

    nop

    :goto_6
    goto/32 :goto_4c

    nop

    nop

    :goto_7
    move-object/from16 v1, p2

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

    :goto_8
    cmpl-float v14, v10, v13

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

    :goto_9
    goto/16 :goto_3d

    nop

    :goto_a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v5, v12, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    add-int/lit8 v6, v6, 0x1

    nop

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

    :goto_f
    mul-float/2addr v7, v8

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

    :goto_10
    mul-float/2addr v10, v8

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const/16 v12, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    iget-object v10, v9, Ldqz;->a:Ldrb;

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

    :goto_16
    aget v10, v10, v5

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

    :goto_17
    goto/16 :goto_40

    nop

    :goto_18
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1a
    add-float/2addr v15, v5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    iput-object v7, v9, Ldqz;->a:Ldrb;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iget-object v10, v9, Ldqz;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v7, v1, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    mul-float/2addr v5, v8

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    cmpg-float v14, v14, v11

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

    :goto_21
    iget-object v5, v9, Ldqz;->a:Ldrb;

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

    :goto_22
    const v1, 0x6

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_30

    nop

    :goto_24
    iget-object v14, v9, Ldqz;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3, v6}, Ldqv;->d(I)Ldrb;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    aput v10, v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    iput v5, v0, Ldra;->b:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v6}, Ldqv;->b(I)F

    move-result v8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    iget v4, v3, Ldqv;->a:I

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

    :goto_2a
    iget-object v5, v9, Ldqz;->b:Ldra;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v14, v9, Ldqz;->a:Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2c
    aput v15, v14, v10

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v14, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_5
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, v2, Ldrb;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2f
    iget-object v10, v2, Ldrb;->i:[F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    goto/32 :goto_48

    nop

    nop

    :goto_31
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v14, v14, Ldrb;->i:[F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_33
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v7, v9, Ldqz;->a:Ldrb;

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

    :goto_36
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_15

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

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

    :goto_3a
    iget v5, v0, Ldra;->b:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    cmpg-float v5, v5, v11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v7, 0x0

    nop

    :goto_40
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_59

    nop

    nop

    :goto_43
    iget-object v9, v0, Ldra;->g:Ldqz;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_44
    aget v5, v5, v10

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_45
    if-nez v14, :cond_7

    nop

    goto/32 :goto_38

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, v1, Ldqw;->a:Ldrb;

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

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

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

    :goto_4a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v7, 0x1

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

    :goto_4c
    invoke-virtual {v0, v7}, Ldra;->m(Ldrb;)V

    :goto_4d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v10, v13

    nop

    nop

    :goto_51
    goto/32 :goto_24

    nop

    nop

    :goto_52
    aput v13, v10, v5

    nop

    :goto_53
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-boolean v10, v10, Ldrb;->b:Z

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_55
    iget-object v10, v10, Ldrb;->i:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_56
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v5, v5, Ldrb;->i:[F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_59
    iget-object v3, v1, Ldqw;->e:Ldqv;

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

    nop

    :goto_5a
    add-int/lit8 v5, v5, 0x1

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

    :goto_5b
    if-lt v6, v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v5, v7

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

    :goto_5d
    invoke-virtual {v0, v2}, Ldra;->n(Ldrb;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v14, v14, Ldrb;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5f
    aget v15, v14, v10

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v10, :cond_9

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

    nop

    :cond_9
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_61
    const v11, 0x38d1b717    # 1.0E-4f

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ldra;->f:I

    nop

    nop

    nop

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

    :goto_3
    const/4 p0, 0x0

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

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k([Z)Ldrb;
    .locals 9

    goto/32 :goto_13

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v7, v5, Ldqz;->a:Ldrb;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4
    aget-object v3, v3, v2

    nop

    nop

    :goto_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v4, v4, -0x1

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_9
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    aget-object v4, v3, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v6, v6, v4

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

    :goto_d
    iget-object v2, v5, Ldqz;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v4, 0x8

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

    nop

    :goto_f
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Ldra;->h:[Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    aget-object p0, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    if-ltz v2, :cond_0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    :goto_15
    if-eq v2, v1, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    iget-object v2, v2, Ldrb;->i:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_19
    if-lt v0, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v6, v2, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_2e

    nop

    nop

    :goto_1d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v5, v4, Ldrb;->c:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpg-float v3, v7, v6

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

    :goto_20
    if-ltz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_5
    :goto_21
    goto/32 :goto_35

    nop

    nop

    :goto_22
    add-int/lit8 v4, v4, -0x1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_23
    if-lez v0, :cond_6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    :goto_24
    iget-object v6, v3, Ldrb;->i:[F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v5, p0, Ldra;->g:Ldqz;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    :goto_28
    iput-object v4, v5, Ldqz;->a:Ldrb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    aget-boolean v5, p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v2, v1, :cond_7

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

    :cond_7
    :goto_2b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2d
    goto :goto_2b

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    :goto_31
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aget v7, v7, v4

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

    :goto_38
    iget-object v7, v7, Ldrb;->i:[F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    if-gez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    :goto_3c
    aget v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    cmpg-float v2, v2, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3e
    iget v3, p0, Ldra;->f:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3f
    const/4 v1, -0x1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_40
    cmpl-float v8, v7, v6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Ldra;->h:[Ldrb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v2, v1

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-gez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final m(Ldrb;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    aget-object v4, v4, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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
    check-cast v0, [Ldrb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    iget-object v3, p0, Ldra;->i:[Ldrb;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ldra;->i:[Ldrb;

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Ldra;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8
    check-cast v0, [Ldrb;

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

    :goto_9
    if-gt v0, v3, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    iget-object v2, p0, Ldra;->i:[Ldrb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ldra;->h:[Ldrb;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v1, p1, Ldrb;->b:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, v0, Ldrb;->c:I

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

    :goto_10
    move v2, v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_13
    if-gt v3, v1, :cond_1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ldra;->h:[Ldrb;

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

    nop

    nop

    :goto_18
    new-instance v4, Ldqy;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    aput-object v4, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v2, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1b
    iget v2, p1, Ldrb;->c:I

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

    :goto_1c
    iget-object v3, p0, Ldra;->i:[Ldrb;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1d
    invoke-direct {v4, v0}, Ldqy;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    array-length v2, v0

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    :goto_22
    aget-object v3, v3, v0

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

    :goto_23
    if-gt v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    :goto_25
    iget-object v2, p0, Ldra;->h:[Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    aput-object p1, v0, v2

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

    :goto_27
    const v1, 0xe

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

    :goto_28
    if-lt v2, v3, :cond_4

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

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2c
    iget v3, p0, Ldra;->f:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16

    nop

    :goto_2e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2e

    nop

    nop

    :goto_31
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    iget v0, p0, Ldra;->f:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    aput-object v3, v2, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    iget-object v4, p0, Ldra;->h:[Ldrb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, p0, Ldra;->f:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Ldra;->h:[Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, p0}, Ldrb;->a(Ldqw;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    array-length v3, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput v3, p0, Ldra;->f:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3e
    add-int/2addr v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3f
    aget-object v0, v0, v2

    nop

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
.end method

.method public final n(Ldrb;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1b

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    aget-object v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-eq v2, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Ldra;->h:[Ldrb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput v2, p0, Ldra;->f:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v4, v2, v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Ldra;->h:[Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iget v2, p0, Ldra;->f:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v3, v1, 0x1

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

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Ldra;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aput-object v4, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    const v1, 0x20

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

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    :goto_1e
    iput-boolean v0, p1, Ldrb;->b:Z

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

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Ldra;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ldra;->b:F

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, " goal -> ("

    nop

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

    :goto_9
    const-string v1, ") : "

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Ldra;->h:[Ldrb;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget-object v2, v2, v1

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

    :goto_17
    iget-object v3, p0, Ldra;->g:Ldqz;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    iput-object v2, v3, Ldqz;->a:Ldrb;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    iget-object v0, p0, Ldra;->g:Ldqz;

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

    :goto_23
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop
.end method
