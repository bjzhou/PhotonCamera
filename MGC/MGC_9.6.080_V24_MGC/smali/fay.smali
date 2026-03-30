.class public abstract Lfay;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/util/List;

.field public b:Z

.field public c:F

.field public d:Lffl;

.field private final e:Lfav;

.field private f:Ljava/lang/Object;

.field private g:F

.field private h:F


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m()F
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfay;->e:Lfav;

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
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lfay;->g:F

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lfav;->b()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lfay;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    return v0

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfay;->e:Lfav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    new-instance p1, Lfau;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_9
    invoke-direct {v0, p1}, Lfaw;-><init>(Ljava/util/List;)V

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lfay;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lfay;->c:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-direct {p1}, Lfau;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lfax;

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

    :goto_10
    iput-object v0, p0, Lfay;->a:Ljava/util/List;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lfay;->f:Ljava/lang/Object;

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

    :goto_12
    iput v0, p0, Lfay;->h:F

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

    :goto_13
    const v1, 0x10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lfaw;

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

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

    :goto_21
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

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

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v0, p0, Lfay;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    invoke-direct {v0, p1}, Lfax;-><init>(Ljava/util/List;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_29
    const v0, 0xa

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method


# virtual methods
.method public a()F
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfay;->e:Lfav;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iget v0, p0, Lfay;->h:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lfay;->h:F

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    invoke-interface {v0}, Lfav;->a()F

    move-result v0

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

    :goto_d
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpl-float v1, v0, v1

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

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfay;->c()F

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_14

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    iget-object v0, v0, Lffj;->d:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lffj;->e()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lfay;->d()Lffj;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method final c()F
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lffj;->b()F

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lffj;->c()F

    move-result v0

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

    nop

    :goto_2
    const v0, 0x6

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
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-float/2addr p0, v1

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

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lffj;->e()Z

    move-result v1

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

    :goto_b
    iget-boolean v0, p0, Lfay;->b:Z

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

    :goto_c
    div-float/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    nop

    :goto_12
    goto :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lffj;->c()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_17
    invoke-virtual {p0}, Lfay;->d()Lffj;

    move-result-object v0

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

    :goto_18
    sub-float/2addr v1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lfay;->c:F

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

    :goto_1a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final d()Lffj;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lfav;->c()Lffj;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfay;->e:Lfav;

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
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfay;->c()F

    move-result v0

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

    :goto_1
    invoke-virtual {p0}, Lfay;->b()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-object v3, v1, Lffj;->f:Landroid/view/animation/Interpolator;

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

    :goto_3
    iget-object v1, p0, Lfay;->d:Lffl;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-interface {v1, v0}, Lfav;->d(F)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1, v0}, Lfay;->f(Lffj;F)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfay;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

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

    :goto_b
    iget-object v1, p0, Lfay;->e:Lfav;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    iput-object v0, p0, Lfay;->f:Ljava/lang/Object;

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

    :goto_11
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

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

    :goto_12
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lfay;->d()Lffj;

    move-result-object v1

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

    :goto_19
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    if-nez v3, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v1, v0, v2, v3}, Lfay;->g(Lffj;FFF)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    :goto_22
    iget-object v3, v1, Lffj;->f:Landroid/view/animation/Interpolator;

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

    :goto_23
    iget-object v2, v1, Lffj;->e:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public abstract f(Lffj;F)Ljava/lang/Object;
.end method

.method protected g(Lffj;FFF)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "This animation does not support split dimensions!"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lfat;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfay;->a:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public i()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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

    nop

    :goto_5
    iget-object v1, p0, Lfay;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v1, Lfat;

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

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iget-object v1, p0, Lfay;->a:Ljava/util/List;

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

    :goto_a
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v0, 0x17

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

    :goto_10
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    invoke-interface {v1}, Lfat;->d()V

    goto/32 :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public j(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfay;->3fd9578e124c68aa49885b22b61b4ec8m()F

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfay;->e:Lfav;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    cmpl-float v0, p1, v0

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

    :goto_4
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfay;->i()V

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-nez p1, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-float v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-interface {v0}, Lfav;->e()Z

    move-result v0

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

    :goto_c
    cmpl-float v0, p1, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lfay;->a()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lfay;->3fd9578e124c68aa49885b22b61b4ec8m()F

    move-result p1

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

    :goto_10
    iget v0, p0, Lfay;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    invoke-interface {v0, p1}, Lfav;->f(F)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lfay;->e:Lfav;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    iput p1, p0, Lfay;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lfay;->a()F

    move-result p1

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop
.end method
