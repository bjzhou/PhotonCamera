.class public final Ljnc;
.super Ljmf;
.source "PG"


# instance fields
.field public final f:[F

.field public final g:[F

.field public final h:[F

.field public final i:Ljna;

.field public final j:Ljava/util/Vector;

.field private final k:[F

.field private final l:Lnpk;

.field private m:Ljnt;

.field private n:D


# direct methods
.method public constructor <init>(Ljna;)V
    .locals 7

    goto/32 :goto_7

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

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1
    goto/32 :goto_1c

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lnpk;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Ljnc;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

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

    nop

    :goto_8
    iput-object v0, p0, Ljnc;->l:Lnpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    iput-object v0, p0, Ljnc;->k:[F

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

    :goto_a
    iget-object v1, p0, Ljnc;->h:[F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    new-array v0, v0, [F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljnc;->i:Ljna;

    nop

    :try_start_0
    new-instance p1, Ljnt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Ljnt;-><init>()V

    iput-object p1, p0, Ljnc;->m:Ljnt;

    nop

    nop

    nop

    nop

    const-string p1, "photo collection"

    nop

    nop

    invoke-static {p1}, Ljmg;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    new-array v1, v0, [F

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const v1, 0x10

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljmf;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_16
    new-array v1, v0, [F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p0, Ljnc;->n:D

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

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

    nop

    :goto_1e
    iput-object v1, p0, Ljnc;->g:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    const/high16 v3, 0x43340000    # 180.0f

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Ljnc;->f:[F

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

    :goto_21
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

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

    :goto_23
    invoke-virtual {p1}, Ljmg;->printStackTrace()V

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Ljnc;->h:[F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lnpk;

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


# virtual methods
.method public final b()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljnc;->j:Ljava/util/Vector;

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
.end method

.method public final c([F)V
    .locals 37

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    move v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    const-wide v15, 0x3fee666666666666L    # 0.95

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

    :goto_3
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    cmpl-double v1, v7, v15

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide v11, v0, Ljnc;->n:D

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    move/from16 v1, v26

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, v0, Ljna;->l:Z

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

    :goto_8
    add-double/2addr v7, v15

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

    :goto_9
    mul-double v15, v15, v17

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    move/from16 v1, v25

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    iget-wide v7, v0, Ljnc;->n:D

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    :goto_10
    iget-object v0, v0, Ljnc;->i:Ljna;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

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

    :goto_12
    const-wide v17, 0x3fa999999999999aL    # 0.05

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v1, Ljmf;->e:Ljmh;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    iput-object v7, v1, Ljmf;->e:Ljmh;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-wide v7, v0, Ljnc;->n:D

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

    :goto_1c
    monitor-enter v7

    nop

    nop

    nop

    :goto_1d
    :try_start_0
    iget-object v8, v0, Ljnc;->j:Ljava/util/Vector;

    nop

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    if-ge v5, v8, :cond_c

    nop

    iget-object v8, v0, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    invoke-virtual {v8, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ljnb;

    nop

    iget-boolean v15, v8, Ljnb;->g:Z

    nop

    if-nez v15, :cond_1

    nop

    nop

    nop

    nop

    nop

    move/from16 v24, v1

    nop

    nop

    move/from16 v25, v3

    nop

    nop

    nop

    move/from16 v26, v4

    nop

    nop

    nop

    move/from16 v27, v5

    nop

    nop

    nop

    nop

    nop

    move-wide v3, v11

    nop

    move-wide/from16 v19, v13

    nop

    nop

    nop

    nop

    move-wide/from16 v35, v9

    nop

    nop

    move-object v10, v2

    nop

    nop

    nop

    nop

    nop

    move v2, v6

    nop

    nop

    move-wide/from16 v5, v35

    nop

    nop

    nop

    nop

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget v15, v8, Ljnb;->e:F

    nop

    nop

    nop

    nop

    nop

    iget v6, v8, Ljnb;->h:I

    nop

    nop

    iget-object v11, v8, Ljnb;->i:Loql;

    nop

    nop

    nop

    nop

    iget v11, v11, Loql;->a:I

    nop

    nop

    nop

    const/4 v12, -0x1

    nop

    nop

    nop

    nop

    if-eq v11, v12, :cond_2

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-boolean v11, v8, Ljnb;->f:Z

    nop

    nop

    :cond_2
    iget-object v11, v8, Ljnb;->a:[F

    nop

    nop

    nop

    nop

    iget-wide v12, v0, Ljnc;->n:D

    nop

    nop

    nop

    cmpl-double v21, v12, v9

    nop

    nop

    nop

    nop

    if-ltz v21, :cond_7

    nop

    iget-object v11, v8, Ljnb;->c:Lnpk;

    nop

    nop

    iget-object v14, v8, Ljnb;->d:Lnpk;

    nop

    nop

    nop

    iget-object v9, v0, Ljnc;->l:Lnpk;

    nop

    nop

    nop

    nop

    move/from16 v24, v1

    nop

    nop

    move-object v10, v2

    nop

    nop

    nop

    iget-wide v1, v11, Lnpk;->a:D

    nop

    nop

    nop

    nop

    nop

    move/from16 v25, v3

    nop

    move/from16 v26, v4

    nop

    iget-wide v3, v14, Lnpk;->a:D

    nop

    nop

    nop

    mul-double/2addr v1, v3

    nop

    nop

    iget-wide v3, v11, Lnpk;->b:D

    nop

    move/from16 v27, v5

    nop

    nop

    nop

    nop

    move/from16 v28, v6

    nop

    nop

    nop

    nop

    iget-wide v5, v14, Lnpk;->b:D

    nop

    nop

    nop

    nop

    nop

    mul-double/2addr v3, v5

    nop

    nop

    nop

    add-double/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v11, Lnpk;->c:D

    nop

    nop

    nop

    nop

    iget-wide v5, v14, Lnpk;->c:D

    nop

    nop

    nop

    nop

    nop

    mul-double/2addr v3, v5

    nop

    add-double/2addr v1, v3

    nop

    iget-wide v3, v11, Lnpk;->d:D

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v14, Lnpk;->d:D

    nop

    mul-double/2addr v3, v5

    nop

    nop

    nop

    nop

    add-double/2addr v1, v3

    nop

    nop

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    cmpl-double v5, v1, v3

    nop

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    if-gtz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    cmpg-double v5, v1, v3

    nop

    if-gez v5, :cond_4

    nop

    nop

    :cond_3
    invoke-virtual {v9, v14}, Lnpk;->a(Lnpk;)V

    :cond_4
    const-wide/16 v5, 0x0

    nop

    cmpg-double v17, v1, v5

    nop

    nop

    nop

    if-gez v17, :cond_5

    nop

    nop

    neg-double v1, v1

    nop

    nop

    nop

    nop

    move-wide/from16 v17, v3

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    nop

    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    nop

    nop

    nop

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    nop

    nop

    cmpg-double v22, v1, v22

    nop

    nop

    if-gtz v22, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v14}, Lnpk;->a(Lnpk;)V

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    nop

    goto/16 :goto_1f

    nop

    nop

    nop

    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    nop

    div-double v22, v19, v22

    nop

    nop

    nop

    nop

    sub-double v29, v19, v12

    nop

    nop

    nop

    nop

    nop

    mul-double v29, v29, v1

    nop

    nop

    nop

    nop

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    nop

    nop

    nop

    nop

    mul-double v29, v29, v22

    nop

    nop

    nop

    nop

    nop

    mul-double/2addr v12, v1

    nop

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    nop

    nop

    nop

    mul-double v17, v17, v1

    nop

    mul-double v17, v17, v22

    nop

    nop

    nop

    iget-wide v1, v11, Lnpk;->a:D

    nop

    nop

    nop

    mul-double v1, v1, v29

    nop

    nop

    nop

    iget-wide v12, v14, Lnpk;->a:D

    nop

    nop

    mul-double v12, v12, v17

    nop

    add-double/2addr v1, v12

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v9, Lnpk;->a:D

    nop

    nop

    iget-wide v1, v11, Lnpk;->b:D

    nop

    nop

    nop

    nop

    mul-double v1, v1, v29

    nop

    nop

    nop

    iget-wide v12, v14, Lnpk;->b:D

    nop

    nop

    nop

    mul-double v12, v12, v17

    nop

    nop

    nop

    nop

    nop

    add-double/2addr v1, v12

    nop

    nop

    nop

    iput-wide v1, v9, Lnpk;->b:D

    nop

    nop

    nop

    iget-wide v1, v11, Lnpk;->c:D

    nop

    nop

    nop

    nop

    nop

    mul-double v1, v1, v29

    nop

    nop

    iget-wide v12, v14, Lnpk;->c:D

    nop

    nop

    mul-double v12, v12, v17

    nop

    nop

    add-double/2addr v1, v12

    nop

    nop

    iput-wide v1, v9, Lnpk;->c:D

    nop

    nop

    nop

    iget-wide v1, v11, Lnpk;->d:D

    nop

    nop

    nop

    nop

    mul-double v1, v1, v29

    nop

    nop

    nop

    nop

    iget-wide v11, v14, Lnpk;->d:D

    nop

    nop

    nop

    nop

    nop

    mul-double v11, v11, v17

    nop

    nop

    add-double/2addr v1, v11

    nop

    nop

    iput-wide v1, v9, Lnpk;->d:D

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v0, Ljnc;->l:Lnpk;

    nop

    nop

    nop

    iget-object v2, v0, Ljnc;->g:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lnpk;->b([F)V

    iget-object v11, v0, Ljnc;->g:[F

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :cond_7
    move/from16 v24, v1

    nop

    move/from16 v25, v3

    nop

    nop

    nop

    nop

    nop

    move/from16 v26, v4

    nop

    nop

    nop

    move/from16 v27, v5

    nop

    nop

    move/from16 v28, v6

    nop

    nop

    nop

    nop

    nop

    move-wide v5, v9

    nop

    nop

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    move-object v10, v2

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v33, v11

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ljnc;->k:[F

    nop

    nop

    nop

    nop

    nop

    const/16 v32, 0x0

    nop

    nop

    nop

    const/16 v34, 0x0

    nop

    nop

    nop

    const/16 v30, 0x0

    nop

    nop

    nop

    move-object/from16 v29, v1

    nop

    nop

    move-object/from16 v31, p1

    nop

    nop

    invoke-static/range {v29 .. v34}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Ljnc;->m:Ljnt;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljmh;->c()V

    iget-object v1, v8, Ljnb;->i:Loql;

    nop

    nop

    iget v1, v1, Loql;->a:I

    nop

    iget-object v2, v8, Ljnb;->j:Loql;

    nop

    nop

    iget v2, v2, Loql;->a:I

    nop

    nop

    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    const/4 v11, -0x1

    nop

    nop

    if-eq v1, v11, :cond_8

    nop

    nop

    nop

    iget-boolean v2, v8, Ljnb;->f:Z

    nop

    iget-object v2, v0, Ljnc;->i:Ljna;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljna;->e(I)V

    iget-object v1, v0, Ljnc;->m:Ljnt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v15}, Ljnt;->j(F)V

    iget-object v1, v0, Ljnc;->i:Ljna;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljnc;->k:[F

    nop

    nop

    invoke-virtual {v1, v2}, Ljmf;->a([F)V

    goto :goto_21

    nop

    :cond_8
    iget-object v1, v0, Ljnc;->i:Ljna;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljna;->e(I)V

    iget-object v1, v0, Ljnc;->m:Ljnt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Ljnt;->j(F)V

    iget-object v1, v0, Ljnc;->i:Ljna;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljnc;->k:[F

    nop

    invoke-virtual {v1, v2}, Ljmf;->a([F)V

    :goto_21
    cmpg-float v1, v15, v9

    nop

    nop

    nop

    nop

    nop

    if-gez v1, :cond_a

    nop

    nop

    nop

    const v1, 0x3f7d70a4    # 0.99f

    nop

    nop

    cmpl-float v1, v15, v1

    nop

    nop

    nop

    nop

    if-lez v1, :cond_9

    nop

    iput v9, v8, Ljnb;->e:F

    nop

    goto :goto_22

    nop

    :cond_9
    iget v1, v8, Ljnb;->e:F

    nop

    nop

    sub-float/2addr v9, v15

    nop

    nop

    nop

    const v2, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    mul-float/2addr v9, v2

    nop

    add-float/2addr v1, v9

    nop

    nop

    nop

    iput v1, v8, Ljnb;->e:F

    nop

    nop

    nop

    :cond_a
    :goto_22
    const/16 v1, 0x1f4

    nop

    move/from16 v2, v28

    nop

    if-ge v2, v1, :cond_b

    nop

    iget v1, v8, Ljnb;->h:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    add-int/2addr v1, v2

    nop

    iput v1, v8, Ljnb;->h:I

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    :cond_b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v1, v27, 0x1

    nop

    nop

    move-wide v11, v3

    nop

    nop

    nop

    nop

    move-wide/from16 v13, v19

    nop

    nop

    nop

    nop

    move/from16 v3, v25

    nop

    nop

    nop

    nop

    nop

    move/from16 v4, v26

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v35, v5

    nop

    move v5, v1

    nop

    move v6, v2

    nop

    nop

    nop

    move-object v2, v10

    nop

    nop

    nop

    nop

    nop

    move/from16 v1, v24

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v9, v35

    nop

    nop

    goto/16 :goto_1d

    nop

    nop

    :cond_c
    move-object v10, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v25, v3

    nop

    move/from16 v26, v4

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_24
    sub-double v15, v13, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    iget-object v7, v0, Ljnc;->m:Ljnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    :goto_28
    iget-object v1, v0, Ljnc;->i:Ljna;

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

    :goto_29
    iget-boolean v3, v1, Ljna;->l:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v7

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v6, v1, Ljna;->m:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    move v1, v5

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_33

    nop

    nop

    :goto_2e
    if-gez v1, :cond_d

    nop

    goto/32 :goto_f

    nop

    :cond_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v4, v1, Ljna;->m:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-gez v1, :cond_e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v10, v0, Ljmf;->e:Ljmh;

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
    cmpl-double v1, v7, v9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    iget-object v7, v0, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_35
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_36
    iput-boolean v1, v0, Ljna;->m:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_37
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-boolean v5, v1, Ljna;->l:Z

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
.end method

.method public final e(IZ)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljnc;->j:Ljava/util/Vector;

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

    :goto_3
    iget-object p0, p0, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Ljnb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-boolean p2, p0, Ljnb;->g:Z

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
