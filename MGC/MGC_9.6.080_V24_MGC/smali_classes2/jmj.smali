.class public Ljmj;
.super Ljmf;
.source "PG"


# static fields
.field public static final f:Lsdb;


# instance fields
.field public final g:Landroid/graphics/Point;

.field public h:F

.field public i:F

.field public final j:[F

.field public k:I

.field public l:Z

.field private final m:[F

.field private n:I

.field private final o:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljmj;->f:Lsdb;

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

    nop

    :goto_1
    const-string v0, "jmj"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Ljmj;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ljmj;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljmj;->o:Ljava/util/ArrayList;

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

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Ljmj;->j:[F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljmf;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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

    :goto_12
    new-instance v0, Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    :goto_14
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    new-array v1, v0, [F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljmj;->m:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final c([F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final e()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_3
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ljmj;->o:Ljava/util/ArrayList;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Loql;->c()V

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v3, Loql;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-nez v3, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v2, v2, 0x1

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    iget-object v0, p0, Ljmj;->o:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final f([FFFF)V
    .locals 18

    goto/32 :goto_21

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljmh;->c()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, v0, Ljmj;->e:Ljmh;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3, v1, v1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9
    sget-object v0, Ljmj;->f:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    iget v1, v0, Ljmj;->k:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Ljmj;->d:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->FerhhsU:Ljava/lang/String;

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

    :goto_d
    iget-object v1, v0, Ljmj;->e:Ljmh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x4

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

    :goto_10
    move-object/from16 v7, p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v2, v0, Ljmj;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_13
    goto/32 :goto_3e

    nop

    nop

    :goto_14
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_15
    invoke-static {v3, v1, v2, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_16
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    move/from16 v10, p3

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

    :goto_1c
    cmpl-float v2, v1, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Ljmj;->c:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    const/16 v2, 0x1403

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v0, Ljmj;->j:[F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Ljmj;->d:Ljava/util/Vector;

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

    nop

    nop

    :goto_21
    const v0, 0x1c

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

    nop

    :goto_22
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move/from16 v1, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    check-cast v0, Lscz;

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

    nop

    :goto_25
    iget-object v12, v0, Ljmj;->j:[F

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

    :goto_26
    const/16 v1, 0x9bc

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_27
    const/4 v1, 0x0

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

    :goto_28
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_47

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v0, Ljmj;->j:[F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Loql;->d()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_30
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v0, Ljmj;->e:Ljmh;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_32
    iget-object v4, v0, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_33
    iget-object v5, v0, Ljmj;->j:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_34
    iget-object v2, v0, Ljmj;->e:Ljmh;

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

    :goto_35
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_36
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

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

    :goto_37
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v4}, Ljmh;->g(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    check-cast v1, Loql;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_16

    nop

    :goto_3b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_41
    iget-object v1, v0, Ljmj;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v17, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_31

    nop

    nop

    :goto_46
    iget-object v4, v0, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_47
    iget-object v2, v0, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_49
    const/4 v6, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4a
    move/from16 v9, p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2}, Ljmh;->f([F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v4}, Ljmh;->e(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_2f

    nop

    nop

    :goto_4e
    invoke-static/range {v5 .. v11}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/content/Context;IF)V
    .locals 10

    goto/32 :goto_29

    nop

    nop

    :goto_0
    iget-object v1, p0, Ljmj;->c:Ljava/nio/ShortBuffer;

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

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput v4, v8, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_4
    aput p3, v8, v9

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    aget-short v6, v3, v4

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8
    aput p3, v8, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a
    aput v5, v8, p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c
    invoke-virtual {p1, v2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v3, v1, [F

    nop

    nop

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Ljmj;->d:Ljava/util/Vector;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v1, Landroid/graphics/Point;->x:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x4

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

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

    nop

    :goto_19
    aput p3, v8, p1

    nop

    nop

    :goto_1a
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    :goto_1c
    mul-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_63

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_21
    const/16 v1, 0x30

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v6, v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aput v3, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_29
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 p1, 0xb

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v5, p0, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :goto_2e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Ljmj;->k:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    new-array v8, v7, [F

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

    nop

    :goto_32
    iput v1, p0, Ljmj;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_33
    iget-object v5, p0, Ljmj;->c:Ljava/nio/ShortBuffer;

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

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_35
    const/16 v1, 0x8

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

    :goto_36
    iput-object v1, p0, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_38
    neg-float v6, v4

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_39
    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget v6, v3, v4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v1, p0, Ljmj;->h:F

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/32 :goto_71

    nop

    nop

    :goto_3d
    iget-object v1, p0, Ljmj;->o:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3e
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 p1, 0xa

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_40
    div-float/2addr v1, v3

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

    :goto_41
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_42
    iget-object v1, p0, Ljmj;->g:Landroid/graphics/Point;

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

    :goto_43
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    :goto_44
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_45
    move v4, v2

    nop

    nop

    :goto_46
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_6f

    nop

    :goto_48
    goto/32 :goto_65

    nop

    nop

    :goto_49
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

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

    nop

    :goto_4b
    iget v4, p0, Ljmj;->i:F

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

    :goto_4c
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_57

    nop

    nop

    :goto_4d
    aput p3, v8, v0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Loql;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_50
    iget-object v3, p0, Ljmj;->m:[F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_53
    iput p1, p0, Ljmj;->k:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_54
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_56
    aput v4, v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_57
    iget-object v1, p0, Ljmj;->g:Landroid/graphics/Point;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-boolean p2, p0, Ljmj;->l:Z

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_2e

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_5b
    invoke-direct {v0, v1}, Loql;-><init>([B)V

    goto/32 :goto_f

    nop

    nop

    :goto_5c
    div-float/2addr v1, v3

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

    :goto_5d
    iput v0, p0, Ljmj;->n:I

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5e
    const/4 v0, 0x5

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

    :goto_5f
    iget-object p2, p0, Ljmj;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_61
    iget v1, p0, Ljmj;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    neg-float v5, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_65
    new-array v3, p1, [S

    nop

    nop

    nop

    fill-array-data v3, :array_1

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lt v2, v7, :cond_1

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

    :cond_1
    goto/32 :goto_60

    nop

    nop

    :goto_67
    aput v5, v8, v2

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

    nop

    :goto_68
    const/4 p1, 0x7

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_69
    aget p3, v8, v2

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

    :goto_6a
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/16 v7, 0xc

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6c
    iget v3, p0, Ljmj;->h:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6e
    move v4, v2

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v5, v4, v6}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_71
    const/4 p1, 0x6

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    int-to-float v1, v1

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

    :goto_74
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

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

    nop

    :goto_76
    aput v3, v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_77
    if-lt v4, p1, :cond_3

    nop

    goto/32 :goto_55

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    :goto_78
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

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

    :goto_79
    iput-object v1, p0, Ljmj;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7a
    iput-object v1, p0, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p0, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 p2, 0x1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljmj;->d:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Loql;

    nop

    nop

    nop

    new-array v1, p2, [I

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v1, v2

    nop

    iput v1, v0, Loql;->a:I

    nop

    nop

    const/16 v0, 0xde1

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    nop

    nop

    nop

    nop

    nop

    const/high16 v3, 0x46180000    # 9728.0f

    nop

    nop

    nop

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    nop

    nop

    nop

    const v3, 0x46180400    # 9729.0f

    nop

    nop

    nop

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    nop

    nop

    nop

    nop

    nop

    const v3, 0x812f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v0, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string v0, "Texture : loadBitmap"

    nop

    nop

    nop

    invoke-static {v0}, Ljmg;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5a

    nop

    nop

    :goto_7e
    add-int/2addr v1, v1

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

    :goto_7f
    const/4 v9, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v9, 0x3

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_81
    invoke-virtual {v5, v4, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const v1, 0x4

    nop

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

    :goto_84
    aput v6, v8, p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-lt v4, v1, :cond_4

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop
.end method
