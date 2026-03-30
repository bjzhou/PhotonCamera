.class public final Ljnn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljnl;


# instance fields
.field private a:Z

.field private final b:Ljava/util/ArrayList;

.field private final c:[F


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljnn;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Ljnn;->a:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ljnn;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Ljnn;->c:[F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(FLjng;[FII)V
    .locals 18

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Ljnn;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    :goto_2
    add-int/lit8 v14, v14, 0x1

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

    :goto_3
    move v4, v5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v8, v14

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

    :goto_9
    iget-object v6, v1, Ljng;->e:Ljmj;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    move v13, v5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    if-nez v4, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    nop

    nop

    :goto_e
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    move-object v6, v12

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    move-object/from16 v10, p3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Ljnn;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :cond_3
    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v15, v7

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    move/from16 v12, v16

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    const/16 v8, 0x10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    move v15, v3

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

    :goto_1c
    const v1, 0x2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    mul-float v7, v7, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    const/high16 v7, 0x41a00000    # 20.0f

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

    :goto_1f
    goto/16 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v7, 0x2

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

    :goto_21
    move-object/from16 v0, p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v6, v3, :cond_5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    new-array v12, v8, [F

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

    :goto_24
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_47

    nop

    nop

    :goto_25
    iget-object v4, v1, Ljng;->g:Ljns;

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

    :goto_26
    invoke-virtual {v4, v5}, Ljns;->j(F)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_29
    move v11, v13

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

    :goto_2a
    const/4 v3, 0x0

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

    :goto_2b
    goto/16 :goto_b

    nop

    :goto_2c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v4}, Ljmh;->c()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    const/4 v7, -0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v6, 0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_32
    move v14, v7

    nop

    nop

    :goto_33
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_34
    move v10, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_35
    move v4, v3

    nop

    :goto_36
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    if-ge v4, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    move-object v10, v5

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    iget-object v5, v1, Ljng;->e:Ljmj;

    nop

    nop

    iget-object v6, v1, Ljng;->k:[F

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    const/4 v7, 0x0

    nop

    move-object v8, v2

    nop

    nop

    nop

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v12, v1, Ljng;->j:[F

    nop

    iget-object v14, v1, Ljng;->k:[F

    nop

    nop

    nop

    iget-object v6, v1, Ljng;->i:[F

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v1, Ljng;->j:[F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljng;->c([F)V

    iget-object v6, v1, Ljng;->j:[F

    nop

    nop

    nop

    aget v7, v6, v3

    nop

    nop

    nop

    nop

    nop

    iget v8, v1, Ljng;->m:F

    nop

    nop

    mul-float/2addr v7, v8

    nop

    nop

    nop

    add-float/2addr v7, v8

    nop

    const/4 v8, 0x1

    nop

    nop

    aget v6, v6, v8

    nop

    iget v9, v1, Ljng;->n:F

    nop

    mul-float/2addr v6, v9

    nop

    nop

    add-float/2addr v6, v9

    nop

    nop

    nop

    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    const v9, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v10, p3

    nop

    nop

    invoke-virtual {v5, v10, v7, v6, v9}, Ljmj;->f([FFFF)V
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_38

    nop

    nop

    :goto_38
    iget-boolean v3, v0, Ljnn;->a:Z

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    if-le v14, v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3a
    move-object v7, v12

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v14, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3c
    if-ne v6, v3, :cond_8

    nop

    goto/32 :goto_2c

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    mul-float v9, v7, v8

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_33

    nop

    :goto_40
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v2, v0, Ljnn;->c:[F

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_42
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_43
    invoke-static {v12, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, v1, Ljng;->g:Ljns;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v7, v15, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_48
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_16

    nop

    :goto_4b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v13, v4

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

    nop

    :goto_4d
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop
.end method
