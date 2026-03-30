.class public final Lrkw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:[Lrlc;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Lrlc;

.field private final h:[F

.field private final i:[F

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private l:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Path;I)Z
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2
    iget-object p0, p0, Lrkw;->k:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-gtz p0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-float p0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    new-instance p2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrkw;->k:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    if-gtz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lrkw;->k:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lrkw;->k:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    move v0, v1

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpl-float p0, p0, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    aget-object v1, v1, p2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object p2, v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

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

    :goto_24
    goto :goto_1d

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0xb

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

    :goto_2a
    invoke-virtual {v1, p2, v0}, Lrlc;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lrkw;->a:[Lrlc;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    new-instance v1, Landroid/graphics/PointF;

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

    :goto_3
    goto/32 :goto_36

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v0, [Lrlc;

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

    :goto_6
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Lrkw;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lrkw;->a:[Lrlc;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Lrlc;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    new-array v1, v0, [Landroid/graphics/Matrix;

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

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iput-object v1, p0, Lrkw;->a:[Lrlc;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    new-array v1, v0, [Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    new-instance v1, Landroid/graphics/Path;

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

    :goto_11
    if-lt v1, v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_12
    iput-object v1, p0, Lrkw;->f:Landroid/graphics/Path;

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

    :goto_13
    iget-object v2, p0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

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

    :goto_17
    iput-object v1, p0, Lrkw;->i:[F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    aput-object v3, v2, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lrkw;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    new-array v1, v1, [F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    goto :goto_28

    nop

    nop

    :goto_1d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, p0, Lrkw;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    aput-object v3, v2, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1}, Lrlc;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v1, Lrlc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_26
    new-instance v3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    :goto_29
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_2a
    new-instance v3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v1, p0, Lrkw;->k:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v3}, Lrlc;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v1, p0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Landroid/graphics/Path;

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

    :goto_32
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v2, p0, Lrkw;->h:[F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aput-object v3, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_38
    new-array v2, v1, [F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    iput-object v1, p0, Lrkw;->g:Lrlc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    iput-boolean v1, p0, Lrkw;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method static final a(ILrku;)Lrkk;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p1, Lrku;->d:Lrkk;

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p1, Lrku;->b:Lrkk;

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

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p1, Lrku;->e:Lrkk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p1, Lrku;->c:Lrkk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private static final d(I)F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 p0, p0, 0x5a

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    int-to-float p0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    rem-int/lit8 p0, p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lrku;[FFLandroid/graphics/RectF;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Landroid/graphics/Path;)V
    .locals 17

    goto/32 :goto_a5

    nop

    nop

    :goto_0
    add-int/lit8 v11, v6, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lt v6, v9, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :cond_0
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_2
    iget-object v8, v0, Lrkw;->g:Lrlc;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v14, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v14, v6, v5}, Ljava/util/BitSet;->set(IZ)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5
    iget-object v8, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_8
    if-ne v6, v9, :cond_1

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_eb

    nop

    nop

    :goto_9
    aget-object v8, v8, v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v10, v0, Lrkw;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_b
    aget-object v7, v7, v6

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_c
    aget v12, v12, v10

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_111

    nop

    nop

    :goto_e
    goto/32 :goto_7a

    nop

    nop

    :goto_f
    move v6, v5

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    aget-object v10, v10, v6

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

    :goto_12
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_13
    iget-object v7, v0, Lrkw;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v9, v8, Lrlc;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v11, v12, v4}, Lrlc;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput v13, v12, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_f0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    aput v8, v7, v10

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_1d
    aput v13, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v6, v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v14, v14, Lrkp;->d:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_21
    aget v12, v11, v5

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v12, v0, Lrkw;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_23
    if-ne v6, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    iget-object v7, v0, Lrkw;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    :goto_27
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    goto/32 :goto_8f

    nop

    nop

    :goto_28
    goto/16 :goto_61

    nop

    :goto_29
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v8, v2, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_109

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2e
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_8c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_31
    iget v10, v9, Lrlc;->b:F

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v8, v0, Lrkw;->c:[Landroid/graphics/Matrix;

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

    :goto_33
    iget-object v7, v0, Lrkw;->g:Lrlc;

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_34
    iget v7, v2, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v9, Lrkj;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_37
    iget v8, v8, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_38
    check-cast v14, Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    aget-object v10, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_3a
    invoke-virtual {v7, v10, v13}, Lrlc;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v7, v0, Lrkw;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_3c
    add-int/lit8 v13, v6, 0x4

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

    :goto_3d
    aput v9, v8, v10

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget-object v11, v11, v6

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3f
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :goto_41
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_42
    aget-object v14, v14, v6

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_44
    invoke-virtual {v7, v11, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_45
    const/4 v7, 0x2

    nop

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

    nop

    :goto_46
    aput v12, v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_47
    aput v15, v12, v5

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aget-object v8, v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, v7, v15}, Lrkw;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Path;I)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_7
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_4d
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v14, v13, v5}, Ljava/util/BitSet;->set(IZ)V

    goto/32 :goto_12f

    nop

    nop

    :goto_50
    iget-object v12, v0, Lrkw;->i:[F

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_53
    iget-object v14, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_54
    iget-object v14, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto :goto_61

    nop

    nop

    :goto_56
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v8}, Lrlc;->e()V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_123

    nop

    nop

    :goto_59
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v11, v12}, Lrlc;->a(Landroid/graphics/Matrix;)Lrlb;

    move-result-object v11

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_5c
    iget-object v12, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_5d
    iget-object v12, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_5e
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_50

    nop

    nop

    :goto_5f
    aget-object v12, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    :goto_61
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aget v13, v10, v5

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_63
    aget-object v14, v14, v15

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_64
    aget v9, v9, v10

    nop

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

    :goto_65
    move/from16 v13, p3

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_66
    float-to-double v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_67
    float-to-double v7, v14

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

    :goto_68
    aget v11, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_69
    aput-object v11, v12, v6

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6b
    if-eqz p2, :cond_8

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f9

    nop

    nop

    :goto_6c
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v7, v0, Lrkw;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget-object v11, v11, v6

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v6, v10, :cond_9

    nop

    goto/32 :goto_90

    nop

    :cond_9
    goto/32 :goto_117

    nop

    nop

    :goto_70
    aget v12, v11, v5

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v10, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_72
    if-ne v6, v8, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_a
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v10, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_74
    aget-object v7, v7, v6

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_75
    check-cast v14, Lrkp;

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_77
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    :goto_78
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_79
    aget-object v14, v14, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7a
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7b
    aput v14, v12, v10

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_7c
    aget-object v12, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7d
    iget-object v9, v0, Lrkw;->h:[F

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_7e
    iget v9, v9, Lrlc;->c:F

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object v12, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_80
    aget-object v12, v12, v6

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v9, 0x4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v9, v0, Lrkw;->h:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_83
    aget-object v11, v11, v6

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_84
    aput v13, v11, v5

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_85
    iget-object v11, v0, Lrkw;->h:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_87
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_88
    aget v9, v9, v5

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_89
    aput v10, v8, v5

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v10, v1, Lrku;->h:Lrkm;

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_9e

    nop

    nop

    :goto_8d
    iget-object v12, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_8e
    aput v14, v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_8f
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v2, p4

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_92
    iget-object v12, v0, Lrkw;->h:[F

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_93
    iget-object v7, v0, Lrkw;->g:Lrlc;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_94
    const/4 v8, 0x1

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget v15, v14, Lrlc;->b:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    aput-object v7, v10, v6

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_9f

    nop

    nop

    :goto_99
    invoke-direct {v0, v7, v6}, Lrkw;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Path;I)Z

    move-result v7

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

    :goto_9a
    goto/16 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9d
    sub-float v14, v14, v16

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v10, v0, Lrkw;->g:Lrlc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_9f
    move v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->close()V

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v6}, Lrkw;->d(I)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v7, v7, v10, v12}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v9, v2}, Lrkk;->a(Landroid/graphics/RectF;)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v11, v0, Lrkw;->h:[F

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v10, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_a8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a9
    aget-object v12, v12, v6

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_aa
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_ab
    move v8, v9

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_ac
    goto/16 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v9, 0x4

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v10, v1, Lrku;->f:Lrkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v14, v0, Lrkw;->a:[Lrlc;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_b1
    iget-object v8, v0, Lrkw;->d:Landroid/graphics/PointF;

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

    :goto_b2
    iget-object v7, v0, Lrkw;->g:Lrlc;

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_b3
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_a1

    nop

    nop

    :goto_b4
    iget-object v7, v0, Lrkw;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b5
    aget v11, p2, v6

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_b6
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget v7, v2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_b8
    if-ne v6, v7, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_b9
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_ba
    if-eqz v7, :cond_c

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-nez v7, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_d
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_bc
    iget-object v9, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget v12, v12, Lrlc;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v7, v0, Lrkw;->g:Lrlc;

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v10, v0, Lrkw;->g:Lrlc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v11, v1, Lrku;->l:Lrkm;

    nop

    nop

    :goto_c1
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_c2
    if-ne v6, v10, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    :cond_e
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    aget-object v10, v10, v6

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_c5
    move v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_c6
    iget v10, v10, Lrlc;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v7, :cond_f

    nop

    goto/32 :goto_e

    nop

    :cond_f
    :goto_c8
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_c9
    double-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v7, v13, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v11, v1, Lrku;->j:Lrkm;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    aget-object v8, v8, v6

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

    :goto_cd
    iget-object v9, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    aput v10, v7, v12

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_cf
    iget-object v14, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v7, v0, Lrkw;->j:Landroid/graphics/Path;

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

    :goto_d1
    if-lt v6, v9, :cond_10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_d3
    sub-float/2addr v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_d4
    iget-object v10, v10, Lrkp;->c:[Lrlb;

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

    :goto_d5
    goto/16 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_d8
    if-ne v6, v8, :cond_11

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

    :cond_11
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_dc
    if-ne v6, v10, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b8

    nop

    nop

    :goto_dd
    iget-object v10, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_de
    iget v7, v2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    aget v14, v12, v5

    nop

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

    nop

    :goto_e0
    aget-object v8, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    aget-object v8, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e2
    iget v11, v8, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e3
    return-void

    nop

    :goto_e4
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v10, v0, Lrkw;->h:[F

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v11, v1, Lrku;->k:Lrkm;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_e7
    iget-object v12, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v12, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v12, v0, Lrkw;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    aget v9, v9, v10

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v10, v1, Lrku;->g:Lrkm;

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v12, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v11, v12, v13, v9}, Lrkm;->a(Lrlc;FF)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v11, v0, Lrkw;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_ef
    move v6, v5

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v10, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_f2
    aget-object v10, v10, v6

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_f3
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v0, v0, Lrkw;->e:Landroid/graphics/Path;

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_f5
    iget-object v8, v0, Lrkw;->h:[F

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v8, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_f8
    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-static {v6, v1}, Lrkw;->a(ILrku;)Lrkk;

    move-result-object v9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_fa
    const/4 v9, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_fb
    iget-object v5, v0, Lrkw;->e:Landroid/graphics/Path;

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

    :goto_fc
    goto/16 :goto_87

    nop

    :goto_fd
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    aget-object v9, v9, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_ff
    iget-object v7, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_100
    aget v11, v11, v10

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_101
    iget-object v7, v0, Lrkw;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_102
    aget v16, v9, v5

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v11, v1, Lrku;->m:Lrkm;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_104
    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v10, v0, Lrkw;->c:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iget-object v11, v0, Lrkw;->h:[F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v8, v11, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_108
    iget v8, v8, Lrlc;->c:F

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

    :goto_109
    iget-object v11, v0, Lrkw;->a:[Lrlc;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_10a
    if-ne v6, v7, :cond_13

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_13
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/16 :goto_8c

    nop

    :goto_10c
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v5, v0, Lrkw;->f:Landroid/graphics/Path;

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_10e
    iget-object v8, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v7, v10, v4}, Lrlc;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_111
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_112
    check-cast v12, Lrkp;

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_113
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v11, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_115
    invoke-virtual {v7, v10, v12}, Lrlc;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_116
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_fb

    nop

    nop

    :goto_117
    const/4 v8, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v11, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v10, v1, Lrku;->i:Lrkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11a
    goto/16 :goto_61

    nop

    nop

    :goto_11b
    goto/32 :goto_b7

    nop

    nop

    :goto_11c
    move-object/from16 v1, p1

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_11d
    iget-object v6, v0, Lrkw;->f:Landroid/graphics/Path;

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iget-object v9, v0, Lrkw;->h:[F

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_4e

    nop

    nop

    :goto_120
    aget-object v12, v12, v6

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

    :goto_121
    iget v7, v2, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-direct {v9, v11}, Lrkj;-><init>(F)V

    :goto_123
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_124
    iget v14, v14, Lrlc;->a:F

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_125
    aget v10, v10, v12

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v14, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_127
    aget v9, v9, v10

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/32 :goto_17

    nop

    nop

    :goto_129
    if-eqz v6, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iget-object v13, v0, Lrkw;->e:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget v8, v2, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_12c
    invoke-static {v6}, Lrkw;->d(I)F

    move-result v9

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    aget-object v9, v9, v6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v1, v0, Lrkw;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v7, v10}, Lrlc;->a(Landroid/graphics/Matrix;)Lrlb;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_130
    const/4 v10, 0x1

    nop

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

    :goto_131
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_132
    iget-object v12, v12, Lrkp;->b:[Lrlb;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_133
    rem-int/lit8 v15, v11, 0x4

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v11, v0, Lrkw;->a:[Lrlc;

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_135
    iget-boolean v7, v0, Lrkw;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_136
    const v8, -0x457ced91    # -0.001f

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_137
    aget v11, v11, v10

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_138
    aget-object v10, v10, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v7, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    add-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_13b
    iget-object v9, v0, Lrkw;->i:[F

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v10, v7, v13}, Lrlc;->d(FF)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v8, v0, Lrkw;->b:[Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    iget-object v14, v14, Lrkp;->d:Ljava/util/BitSet;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13f
    check-cast v10, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_140
    aget-object v14, v14, v15

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_141
    iget-object v1, v0, Lrkw;->e:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_142
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_143
    move v6, v11

    nop

    nop

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

    :goto_144
    goto/16 :goto_c1

    nop

    nop

    nop

    :goto_145
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/32 :goto_13

    nop

    nop

    :goto_147
    if-ne v6, v8, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_e6

    nop

    nop

    :goto_148
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_149
    iget v14, v14, Lrlc;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    aput v9, v7, v5

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop
.end method
