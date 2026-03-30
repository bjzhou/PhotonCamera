.class public Ldqw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Ldrb;

.field public b:F

.field final c:Ljava/util/ArrayList;

.field d:Z

.field public e:Ldqv;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

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
    iput-boolean v0, p0, Ldqw;->d:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ldqw;->c:Ljava/util/ArrayList;

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput v0, p0, Ldqw;->b:F

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

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ldqw;->a:Ldrb;

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
    new-instance v0, Ljava/util/ArrayList;

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
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

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

    :goto_3
    invoke-direct {v0, p0, p1}, Ldqv;-><init>(Ldqw;Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ldqw;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Ldqw;->d:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Ldqw;->b:F

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

    :goto_c
    new-instance v0, Ldqv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static final l(Ldrb;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ldrb;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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
    if-le p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

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

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a([ZLdrb;)Ldrb;
    .locals 9

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v4, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, v0, Ldqv;->a:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    cmpg-float v6, v5, v3

    nop

    goto/32 :goto_14

    nop

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

    nop

    :goto_8
    iget v7, v6, Ldrb;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_a
    const/4 v8, 0x3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    if-ne v6, p2, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_c
    cmpg-float v7, v5, v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    move-object v2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6, v1}, Ldqv;->d(I)Ldrb;

    move-result-object v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v8, 0x4

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

    :goto_14
    if-ltz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    iget v7, v6, Ldrb;->c:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1

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

    :goto_18
    if-ltz v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_19
    aget-boolean v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    if-eqz v7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    if-ne v7, v8, :cond_6

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v6, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_7

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    :goto_22
    goto :goto_1b

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v7, v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5, v1}, Ldqv;->b(I)F

    move-result v5

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

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2b
    const v1, 0x11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final b(Ldrb;)V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget p1, p0, Ldqv;->e:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    invoke-virtual {v2, v0, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr p1, v0

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

    :goto_5
    iput v1, v0, Ldrb;->d:I

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

    nop

    :goto_6
    aget v4, v3, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Ldqv;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    aput v4, v3, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1, v2}, Ldqv;->c(Ldrb;Z)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_2e

    nop

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
    iput-object v0, p0, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float p1, v0, p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    neg-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const v0, 0x20

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

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget p1, v3, p1

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

    :goto_18
    iget p1, p0, Ldqw;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, -0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    iget-object v0, p0, Ldqw;->e:Ldqv;

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

    :goto_22
    div-float/2addr v4, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Ldqw;->a:Ldrb;

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

    :goto_25
    iget-object v2, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    iget-object v3, p0, Ldqv;->c:[I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, p0, Ldqv;->d:[F

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

    :goto_28
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    if-eqz p1, :cond_4

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

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop
.end method

.method public final c(Ldqx;Ldrb;Z)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Ldqw;->d:Z

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    mul-float/2addr v2, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, p2, Ldrb;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iget v1, p0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Ldqw;->b:F

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-virtual {p2, p0}, Ldrb;->b(Ldqw;)V

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p2, p3}, Ldqv;->c(Ldrb;Z)F

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iget p2, p2, Ldqv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_14
    iget-object p2, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    const v1, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p2}, Ldqv;->a(Ldrb;)F

    move-result v0

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

    :goto_1c
    iget-object v0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean p2, p1, Ldqx;->c:Z

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v0, p2, Ldrb;->g:Z

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

    :goto_21
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public d(Ldqx;Ldqw;Z)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4}, Ldqv;->d(I)Ldrb;

    move-result-object v5

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

    :goto_1
    goto/32 :goto_28

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
    iget-object p2, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ldqv;->a(Ldrb;)F

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iget-object v1, p2, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v6, v1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual {v0, v5, v6, p3}, Ldqv;->e(Ldrb;FZ)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    iget-object p2, p0, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    if-lt v4, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean p2, p0, Ldqw;->d:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1f

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2, p3}, Ldqv;->c(Ldrb;Z)F

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v5}, Ldqv;->a(Ldrb;)F

    move-result v6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ldqw;->b:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr v0, v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p0}, Ldrb;->b(Ldqw;)V

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p2, Ldqw;->a:Ldrb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Ldqw;->b:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p2, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean p2, p1, Ldqx;->c:Z

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p2, :cond_4

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, v2, Ldqv;->a:I

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

    :goto_26
    iget p2, p2, Ldqv;->a:I

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

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    :goto_29
    iget-object p2, p2, Ldqw;->a:Ldrb;

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

    nop

    :goto_2a
    iget v2, p2, Ldqw;->b:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2c
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public e()Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ldqv;->a:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ldqw;->b:F

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_d
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final f(Ldqx;I)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ldqw;->e:Ldqv;

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    invoke-virtual {p0, p1, p2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Ldqx;->p(I)Ldrb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_0

    nop

    nop

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const/high16 p2, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2}, Ldqx;->p(I)Ldrb;

    move-result-object p1

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
.end method

.method public final g(Ldrb;Ldrb;Ldrb;Ldrb;F)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

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
    const v1, 0x12

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

    :goto_4
    iget-object v0, p0, Ldqw;->e:Ldqv;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p3, p5}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Ldqw;->e:Ldqv;

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

    :goto_9
    invoke-virtual {p0, p4, p1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldqw;->e:Ldqv;

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

    :goto_c
    const/high16 v1, -0x40800000    # -1.0f

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
    goto/32 :goto_2

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    invoke-virtual {v0, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_8

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_13
    iget-object p1, p0, Ldqw;->e:Ldqv;

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

    :goto_14
    neg-float p1, p5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ldrb;Ldrb;Ldrb;I)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p3, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    neg-int p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_b
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_c
    invoke-virtual {p4, p1, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-virtual {p0, p3, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p4, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_26

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-object p4, p0, Ldqw;->e:Ldqv;

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

    :goto_13
    iget-object p4, p0, Ldqw;->e:Ldqv;

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

    :goto_14
    const v0, 0xd

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const/high16 v0, 0x3f800000    # 1.0f

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

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    :goto_1c
    goto :goto_24

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Ldqw;->e:Ldqv;

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

    :goto_20
    if-ltz p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    iput p4, p0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Ldqw;->e:Ldqv;

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

    nop
.end method

.method public final i(Ldrb;Ldrb;Ldrb;I)V
    .locals 3

    goto/32 :goto_25

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

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    iget-object p4, p0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-nez p4, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-ltz p4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    iget-object p4, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p4, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-virtual {p0, p3, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p2, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    invoke-virtual {p4, p1, v0}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p3, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    neg-int p4, p4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    const v1, 0x20

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_23
    const/4 v2, 0x1

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

    :goto_24
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

    nop

    :goto_25
    const v0, 0x1

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

    :goto_26
    iget-object p1, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public final j(Ldrb;Ldrb;Ldrb;Ldrb;F)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p3, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, p4}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p1, p4}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

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

    :goto_a
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-virtual {p3, p4, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    neg-float p1, p5

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    const/high16 p4, -0x41000000    # -0.5f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public k([Z)Ldrb;
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
    invoke-virtual {p0, p1, v0}, Ldqw;->a([ZLdrb;)Ldrb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_0
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    const-string v1, ""

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    cmpl-float v1, v7, v1

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

    :goto_7
    cmpg-float v1, v7, v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_43

    nop

    nop

    :goto_b
    iget v5, v5, Ldqv;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v6}, Ldrb;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_f
    const-string v1, " + "

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_53

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_14
    goto/16 :goto_26

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v7, v3}, Ldqv;->b(I)F

    move-result v7

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_18
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_1b
    iget-object v6, p0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1c
    const-string v0, "0"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt v3, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    neg-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_22
    const-string p0, "0.0"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, " - "

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_27
    neg-float v7, v7

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

    :goto_28
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

    :goto_29
    move v1, v4

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

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v6, :cond_5

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    :goto_30
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    const-string v3, " = "

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

    :goto_33
    return-object v0

    nop

    nop

    :goto_34
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_35
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_36
    move v1, v4

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_16

    nop

    nop

    :goto_38
    cmpl-float v8, v7, v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3a
    invoke-virtual {v6, v3}, Ldqv;->d(I)Ldrb;

    move-result-object v6

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

    :goto_3b
    const-string v0, " "

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3e
    iget v0, p0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v1, "- "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_40
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    :goto_41
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4c
    if-ltz v1, :cond_9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, p0, Ldqw;->e:Ldqv;

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

    :goto_52
    iget v1, p0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_19

    nop

    :goto_56
    if-gtz v8, :cond_a

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v4, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_59
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x14

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v7, p0, Ldqw;->e:Ldqv;

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
.end method
